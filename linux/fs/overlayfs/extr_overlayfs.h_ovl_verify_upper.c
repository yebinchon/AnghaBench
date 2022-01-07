
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_XATTR_UPPER ;
 int ovl_verify_set_fh (struct dentry*,int ,struct dentry*,int,int) ;

__attribute__((used)) static inline int ovl_verify_upper(struct dentry *index,
        struct dentry *upper, bool set)
{
 return ovl_verify_set_fh(index, OVL_XATTR_UPPER, upper, 1, set);
}
