
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_XATTR_ORIGIN ;
 int ovl_verify_set_fh (struct dentry*,int ,struct dentry*,int,int) ;

__attribute__((used)) static inline int ovl_verify_origin(struct dentry *upper,
        struct dentry *origin, bool set)
{
 return ovl_verify_set_fh(upper, OVL_XATTR_ORIGIN, origin, 0, set);
}
