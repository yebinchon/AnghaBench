
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int node; } ;
struct TYPE_3__ {int node; } ;
struct super_block {int rcu; int s_subtype; int s_user_ns; int s_mounts; TYPE_2__ s_inode_lru; TYPE_1__ s_dentry_lru; int s_list; int s_count; } ;


 int WARN_ON (int) ;
 int call_rcu (int *,int ) ;
 int destroy_super_rcu ;
 int fscrypt_sb_free (struct super_block*) ;
 int kfree (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int put_user_ns (int ) ;
 int security_sb_free (struct super_block*) ;

__attribute__((used)) static void __put_super(struct super_block *s)
{
 if (!--s->s_count) {
  list_del_init(&s->s_list);
  WARN_ON(s->s_dentry_lru.node);
  WARN_ON(s->s_inode_lru.node);
  WARN_ON(!list_empty(&s->s_mounts));
  security_sb_free(s);
  fscrypt_sb_free(s);
  put_user_ns(s->s_user_ns);
  kfree(s->s_subtype);
  call_rcu(&s->rcu, destroy_super_rcu);
 }
}
