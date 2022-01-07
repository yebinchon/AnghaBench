
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct migrate_struct {scalar_t__ first_pblock; scalar_t__ last_pblock; scalar_t__ last_block; scalar_t__ curr_block; scalar_t__ first_block; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_fsblk_t ;


 int finish_range (int *,struct inode*,struct migrate_struct*) ;

__attribute__((used)) static int update_extent_range(handle_t *handle, struct inode *inode,
          ext4_fsblk_t pblock, struct migrate_struct *lb)
{
 int retval;



 if (lb->first_pblock &&
  (lb->last_pblock+1 == pblock) &&
  (lb->last_block+1 == lb->curr_block)) {
  lb->last_pblock = pblock;
  lb->last_block = lb->curr_block;
  lb->curr_block++;
  return 0;
 }



 retval = finish_range(handle, inode, lb);
 lb->first_pblock = lb->last_pblock = pblock;
 lb->first_block = lb->last_block = lb->curr_block;
 lb->curr_block++;
 return retval;
}
