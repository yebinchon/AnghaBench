
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evm_ima_xattr_data {int dummy; } ;
struct dentry {int dummy; } ;



__attribute__((used)) static inline int ima_read_xattr(struct dentry *dentry,
     struct evm_ima_xattr_data **xattr_value)
{
 return 0;
}
