
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;


 int EPERM ;
 struct dentry* ERR_PTR (int ) ;
 struct dentry* simple_lookup (struct inode*,struct dentry*,unsigned int) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static struct dentry *
bpf_lookup(struct inode *dir, struct dentry *dentry, unsigned flags)
{



 if (strchr(dentry->d_name.name, '.'))
  return ERR_PTR(-EPERM);

 return simple_lookup(dir, dentry, flags);
}
