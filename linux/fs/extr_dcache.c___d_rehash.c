
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hlist_bl_head {int dummy; } ;
struct TYPE_2__ {int hash; } ;
struct dentry {int d_hash; TYPE_1__ d_name; } ;


 struct hlist_bl_head* d_hash (int ) ;
 int hlist_bl_add_head_rcu (int *,struct hlist_bl_head*) ;
 int hlist_bl_lock (struct hlist_bl_head*) ;
 int hlist_bl_unlock (struct hlist_bl_head*) ;

__attribute__((used)) static void __d_rehash(struct dentry *entry)
{
 struct hlist_bl_head *b = d_hash(entry->d_name.hash);

 hlist_bl_lock(b);
 hlist_bl_add_head_rcu(&entry->d_hash, b);
 hlist_bl_unlock(b);
}
