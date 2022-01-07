
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EIO ;
 struct dentry* ERR_PTR (int ) ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static struct dentry *ovl_get_parent(struct dentry *dentry)
{




 WARN_ON_ONCE(1);
 return ERR_PTR(-EIO);
}
