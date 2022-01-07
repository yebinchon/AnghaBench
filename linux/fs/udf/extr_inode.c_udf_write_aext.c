
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int i_data; } ;
struct udf_inode_info {int i_alloc_type; int * i_lenEAttr; TYPE_1__ i_ext; } ;
struct short_ad {void* extPosition; void* extLength; } ;
struct long_ad {int impUse; int extLocation; void* extLength; } ;
struct kernel_lb_addr {int logicalBlockNum; } ;
struct inode {int i_sb; } ;
struct extent_position {int offset; TYPE_2__* bh; } ;
struct allocExtDesc {int lengthAllocDescs; } ;
struct TYPE_6__ {int s_udfrev; } ;
struct TYPE_5__ {int * b_data; } ;




 int UDF_FLAG_STRICT ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int UDF_QUERY_FLAG (int ,int ) ;
 TYPE_3__* UDF_SB (int ) ;
 void* cpu_to_le32 (int ) ;
 int cpu_to_lelb (struct kernel_lb_addr) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mark_buffer_dirty_inode (TYPE_2__*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (int ,int,int) ;
 int udf_file_entry_alloc_offset (struct inode*) ;
 int udf_update_tag (int *,scalar_t__) ;

void udf_write_aext(struct inode *inode, struct extent_position *epos,
      struct kernel_lb_addr *eloc, uint32_t elen, int inc)
{
 int adsize;
 uint8_t *ptr;
 struct short_ad *sad;
 struct long_ad *lad;
 struct udf_inode_info *iinfo = UDF_I(inode);

 if (!epos->bh)
  ptr = iinfo->i_ext.i_data + epos->offset -
   udf_file_entry_alloc_offset(inode) +
   iinfo->i_lenEAttr;
 else
  ptr = epos->bh->b_data + epos->offset;

 switch (iinfo->i_alloc_type) {
 case 128:
  sad = (struct short_ad *)ptr;
  sad->extLength = cpu_to_le32(elen);
  sad->extPosition = cpu_to_le32(eloc->logicalBlockNum);
  adsize = sizeof(struct short_ad);
  break;
 case 129:
  lad = (struct long_ad *)ptr;
  lad->extLength = cpu_to_le32(elen);
  lad->extLocation = cpu_to_lelb(*eloc);
  memset(lad->impUse, 0x00, sizeof(lad->impUse));
  adsize = sizeof(struct long_ad);
  break;
 default:
  return;
 }

 if (epos->bh) {
  if (!UDF_QUERY_FLAG(inode->i_sb, UDF_FLAG_STRICT) ||
      UDF_SB(inode->i_sb)->s_udfrev >= 0x0201) {
   struct allocExtDesc *aed =
    (struct allocExtDesc *)epos->bh->b_data;
   udf_update_tag(epos->bh->b_data,
           le32_to_cpu(aed->lengthAllocDescs) +
           sizeof(struct allocExtDesc));
  }
  mark_buffer_dirty_inode(epos->bh, inode);
 } else {
  mark_inode_dirty(inode);
 }

 if (inc)
  epos->offset += adsize;
}
