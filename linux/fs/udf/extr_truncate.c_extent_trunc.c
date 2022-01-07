
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct kernel_lb_addr {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct extent_position {int dummy; } ;
typedef int int8_t ;
struct TYPE_2__ {int s_blocksize; int s_blocksize_bits; } ;


 int EXT_NOT_RECORDED_ALLOCATED ;
 int EXT_NOT_RECORDED_NOT_ALLOCATED ;
 int EXT_RECORDED_ALLOCATED ;
 int mark_inode_dirty (struct inode*) ;
 int udf_free_blocks (TYPE_1__*,struct inode*,struct kernel_lb_addr*,int,int) ;
 int udf_write_aext (struct inode*,struct extent_position*,struct kernel_lb_addr*,int,int ) ;

__attribute__((used)) static void extent_trunc(struct inode *inode, struct extent_position *epos,
    struct kernel_lb_addr *eloc, int8_t etype, uint32_t elen,
    uint32_t nelen)
{
 struct kernel_lb_addr neloc = {};
 int last_block = (elen + inode->i_sb->s_blocksize - 1) >>
  inode->i_sb->s_blocksize_bits;
 int first_block = (nelen + inode->i_sb->s_blocksize - 1) >>
  inode->i_sb->s_blocksize_bits;

 if (nelen) {
  if (etype == (EXT_NOT_RECORDED_ALLOCATED >> 30)) {
   udf_free_blocks(inode->i_sb, inode, eloc, 0,
     last_block);
   etype = (EXT_NOT_RECORDED_NOT_ALLOCATED >> 30);
  } else
   neloc = *eloc;
  nelen = (etype << 30) | nelen;
 }

 if (elen != nelen) {
  udf_write_aext(inode, epos, &neloc, nelen, 0);
  if (last_block > first_block) {
   if (etype == (EXT_RECORDED_ALLOCATED >> 30))
    mark_inode_dirty(inode);

   if (etype != (EXT_NOT_RECORDED_NOT_ALLOCATED >> 30))
    udf_free_blocks(inode->i_sb, inode, eloc,
      first_block,
      last_block - first_block);
  }
 }
}
