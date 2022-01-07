
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int i_inline_xattr_size; } ;


 TYPE_1__* F2FS_I (struct inode*) ;

__attribute__((used)) static inline int get_inline_xattr_addrs(struct inode *inode)
{
 return F2FS_I(inode)->i_inline_xattr_size;
}
