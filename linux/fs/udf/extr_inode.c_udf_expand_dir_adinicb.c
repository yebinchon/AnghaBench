
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int udf_pblk_t ;
struct TYPE_10__ {int partitionReferenceNum; int logicalBlockNum; } ;
struct TYPE_9__ {int i_data; } ;
struct udf_inode_info {int i_lenEAttr; int i_lenAlloc; int i_lenExtents; TYPE_3__ i_location; TYPE_2__ i_ext; void* i_alloc_type; } ;
struct udf_fileident_bh {int soffset; int eoffset; struct buffer_head* ebh; struct buffer_head* sbh; } ;
struct kernel_lb_addr {int partitionReferenceNum; int logicalBlockNum; } ;
struct inode {int i_size; TYPE_4__* i_sb; } ;
struct TYPE_8__ {int tagLocation; } ;
struct fileIdentDesc {int lengthOfImpUse; scalar_t__ fileIdent; int impUse; TYPE_1__ descTag; } ;
struct extent_position {struct buffer_head* bh; int offset; TYPE_3__ block; } ;
struct buffer_head {int b_data; } ;
typedef int loff_t ;
struct TYPE_11__ {int s_blocksize; } ;


 void* ICBTAG_FLAG_AD_IN_ICB ;
 void* ICBTAG_FLAG_AD_LONG ;
 void* ICBTAG_FLAG_AD_SHORT ;
 int UDF_FLAG_USE_SHORT_AD ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 scalar_t__ UDF_QUERY_FLAG (TYPE_4__*,int ) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (int,int,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int udf_add_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int ) ;
 int udf_ext0_offset (struct inode*) ;
 int udf_file_entry_alloc_offset (struct inode*) ;
 struct fileIdentDesc* udf_fileident_read (struct inode*,int*,struct udf_fileident_bh*,struct fileIdentDesc*,int *,int *,int *,int *) ;
 int udf_get_pblock (TYPE_4__*,int ,int ,int ) ;
 int udf_new_block (TYPE_4__*,struct inode*,int ,int ,int*) ;
 struct buffer_head* udf_tgetblk (TYPE_4__*,int ) ;
 scalar_t__ udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int ,scalar_t__) ;
 int unlock_buffer (struct buffer_head*) ;

struct buffer_head *udf_expand_dir_adinicb(struct inode *inode,
         udf_pblk_t *block, int *err)
{
 udf_pblk_t newblock;
 struct buffer_head *dbh = ((void*)0);
 struct kernel_lb_addr eloc;
 uint8_t alloctype;
 struct extent_position epos;

 struct udf_fileident_bh sfibh, dfibh;
 loff_t f_pos = udf_ext0_offset(inode);
 int size = udf_ext0_offset(inode) + inode->i_size;
 struct fileIdentDesc cfi, *sfi, *dfi;
 struct udf_inode_info *iinfo = UDF_I(inode);

 if (UDF_QUERY_FLAG(inode->i_sb, UDF_FLAG_USE_SHORT_AD))
  alloctype = ICBTAG_FLAG_AD_SHORT;
 else
  alloctype = ICBTAG_FLAG_AD_LONG;

 if (!inode->i_size) {
  iinfo->i_alloc_type = alloctype;
  mark_inode_dirty(inode);
  return ((void*)0);
 }


 *block = udf_new_block(inode->i_sb, inode,
          iinfo->i_location.partitionReferenceNum,
          iinfo->i_location.logicalBlockNum, err);
 if (!(*block))
  return ((void*)0);
 newblock = udf_get_pblock(inode->i_sb, *block,
      iinfo->i_location.partitionReferenceNum,
    0);
 if (!newblock)
  return ((void*)0);
 dbh = udf_tgetblk(inode->i_sb, newblock);
 if (!dbh)
  return ((void*)0);
 lock_buffer(dbh);
 memset(dbh->b_data, 0x00, inode->i_sb->s_blocksize);
 set_buffer_uptodate(dbh);
 unlock_buffer(dbh);
 mark_buffer_dirty_inode(dbh, inode);

 sfibh.soffset = sfibh.eoffset =
   f_pos & (inode->i_sb->s_blocksize - 1);
 sfibh.sbh = sfibh.ebh = ((void*)0);
 dfibh.soffset = dfibh.eoffset = 0;
 dfibh.sbh = dfibh.ebh = dbh;
 while (f_pos < size) {
  iinfo->i_alloc_type = ICBTAG_FLAG_AD_IN_ICB;
  sfi = udf_fileident_read(inode, &f_pos, &sfibh, &cfi, ((void*)0),
      ((void*)0), ((void*)0), ((void*)0));
  if (!sfi) {
   brelse(dbh);
   return ((void*)0);
  }
  iinfo->i_alloc_type = alloctype;
  sfi->descTag.tagLocation = cpu_to_le32(*block);
  dfibh.soffset = dfibh.eoffset;
  dfibh.eoffset += (sfibh.eoffset - sfibh.soffset);
  dfi = (struct fileIdentDesc *)(dbh->b_data + dfibh.soffset);
  if (udf_write_fi(inode, sfi, dfi, &dfibh, sfi->impUse,
     sfi->fileIdent +
     le16_to_cpu(sfi->lengthOfImpUse))) {
   iinfo->i_alloc_type = ICBTAG_FLAG_AD_IN_ICB;
   brelse(dbh);
   return ((void*)0);
  }
 }
 mark_buffer_dirty_inode(dbh, inode);

 memset(iinfo->i_ext.i_data + iinfo->i_lenEAttr, 0,
  iinfo->i_lenAlloc);
 iinfo->i_lenAlloc = 0;
 eloc.logicalBlockNum = *block;
 eloc.partitionReferenceNum =
    iinfo->i_location.partitionReferenceNum;
 iinfo->i_lenExtents = inode->i_size;
 epos.bh = ((void*)0);
 epos.block = iinfo->i_location;
 epos.offset = udf_file_entry_alloc_offset(inode);
 udf_add_aext(inode, &epos, &eloc, inode->i_size, 0);


 brelse(epos.bh);
 mark_inode_dirty(inode);
 return dbh;
}
