
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lock; int * rl; } ;
struct TYPE_5__ {int lock; int * rl; } ;
struct TYPE_7__ {scalar_t__ name; scalar_t__ name_len; TYPE_2__ attr_list_rl; int * attr_list; TYPE_1__ runlist; } ;
typedef TYPE_3__ ntfs_inode ;


 int BUG_ON (int) ;
 scalar_t__ I30 ;
 int down_write (int *) ;
 int kfree (scalar_t__) ;
 int ntfs_free (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void __ntfs_clear_inode(ntfs_inode *ni)
{

 down_write(&ni->runlist.lock);
 if (ni->runlist.rl) {
  ntfs_free(ni->runlist.rl);
  ni->runlist.rl = ((void*)0);
 }
 up_write(&ni->runlist.lock);

 if (ni->attr_list) {
  ntfs_free(ni->attr_list);
  ni->attr_list = ((void*)0);
 }

 down_write(&ni->attr_list_rl.lock);
 if (ni->attr_list_rl.rl) {
  ntfs_free(ni->attr_list_rl.rl);
  ni->attr_list_rl.rl = ((void*)0);
 }
 up_write(&ni->attr_list_rl.lock);

 if (ni->name_len && ni->name != I30) {

  BUG_ON(!ni->name);
  kfree(ni->name);
 }
}
