
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; int list; } ;
typedef TYPE_1__ Node ;


 int bm_mnt ;
 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int drop_nlink (int ) ;
 int entries_lock ;
 int entry_count ;
 int list_del_init (int *) ;
 int simple_release_fs (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void kill_node(Node *e)
{
 struct dentry *dentry;

 write_lock(&entries_lock);
 list_del_init(&e->list);
 write_unlock(&entries_lock);

 dentry = e->dentry;
 drop_nlink(d_inode(dentry));
 d_drop(dentry);
 dput(dentry);
 simple_release_fs(&bm_mnt, &entry_count);
}
