
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef scalar_t__ ext4_lblk_t ;


 int BUG () ;
 int BUG_ON (int) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 scalar_t__ ext4_ext_get_actual_len (struct ext4_extent*) ;
 scalar_t__ ext4_ext_next_allocated_block (struct ext4_ext_path*) ;
 int ext_depth (struct inode*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static ext4_lblk_t ext4_ext_determine_hole(struct inode *inode,
        struct ext4_ext_path *path,
        ext4_lblk_t *lblk)
{
 int depth = ext_depth(inode);
 struct ext4_extent *ex;
 ext4_lblk_t len;

 ex = path[depth].p_ext;
 if (ex == ((void*)0)) {

  *lblk = 0;
  len = EXT_MAX_BLOCKS;
 } else if (*lblk < le32_to_cpu(ex->ee_block)) {
  len = le32_to_cpu(ex->ee_block) - *lblk;
 } else if (*lblk >= le32_to_cpu(ex->ee_block)
   + ext4_ext_get_actual_len(ex)) {
  ext4_lblk_t next;

  *lblk = le32_to_cpu(ex->ee_block) + ext4_ext_get_actual_len(ex);
  next = ext4_ext_next_allocated_block(path);
  BUG_ON(next == *lblk);
  len = next - *lblk;
 } else {
  BUG();
 }
 return len;
}
