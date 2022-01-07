
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int KOBJ_NS_TYPE_NET ;
 int kernfs_kill_sb (struct super_block*) ;
 scalar_t__ kernfs_super_ns (struct super_block*) ;
 int kobj_ns_drop (int ,void*) ;

__attribute__((used)) static void sysfs_kill_sb(struct super_block *sb)
{
 void *ns = (void *)kernfs_super_ns(sb);

 kernfs_kill_sb(sb);
 kobj_ns_drop(KOBJ_NS_TYPE_NET, ns);
}
