
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_info {int dummy; } ;
struct ubifs_data_node {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct ubifs_info* s_fs_info; } ;


 int EOPNOTSUPP ;
 int ubifs_assert (struct ubifs_info*,int ) ;

__attribute__((used)) static inline int ubifs_decrypt(const struct inode *inode,
    struct ubifs_data_node *dn,
    unsigned int *out_len, int block)
{
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 ubifs_assert(c, 0);
 return -EOPNOTSUPP;
}
