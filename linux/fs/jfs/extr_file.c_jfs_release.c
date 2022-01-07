
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jfs_inode_info {int active_ag; int ag_lock; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
struct bmap {int * db_active; } ;
struct TYPE_2__ {struct bmap* bmap; } ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 TYPE_1__* JFS_SBI (int ) ;
 int atomic_dec (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int jfs_release(struct inode *inode, struct file *file)
{
 struct jfs_inode_info *ji = JFS_IP(inode);

 spin_lock_irq(&ji->ag_lock);
 if (ji->active_ag != -1) {
  struct bmap *bmap = JFS_SBI(inode->i_sb)->bmap;
  atomic_dec(&bmap->db_active[ji->active_ag]);
  ji->active_ag = -1;
 }
 spin_unlock_irq(&ji->ag_lock);

 return 0;
}
