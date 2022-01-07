
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct kstatfs {int dummy; } ;
typedef int dev_t ;


 int EINVAL ;
 int drop_super (struct super_block*) ;
 int statfs_by_dentry (int ,struct kstatfs*) ;
 struct super_block* user_get_super (int ) ;

__attribute__((used)) static int vfs_ustat(dev_t dev, struct kstatfs *sbuf)
{
 struct super_block *s = user_get_super(dev);
 int err;
 if (!s)
  return -EINVAL;

 err = statfs_by_dentry(s->s_root, sbuf);
 drop_super(s);
 return err;
}
