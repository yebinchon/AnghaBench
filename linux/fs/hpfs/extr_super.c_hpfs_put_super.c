
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int rcu; } ;


 int call_rcu (int *,int ) ;
 int hpfs_lock (struct super_block*) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;
 int hpfs_unlock (struct super_block*) ;
 int lazy_free_sbi ;
 int unmark_dirty (struct super_block*) ;

__attribute__((used)) static void hpfs_put_super(struct super_block *s)
{
 hpfs_lock(s);
 unmark_dirty(s);
 hpfs_unlock(s);
 call_rcu(&hpfs_sb(s)->rcu, lazy_free_sbi);
}
