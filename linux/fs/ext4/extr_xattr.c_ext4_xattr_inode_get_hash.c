
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tv_sec; } ;
struct inode {TYPE_1__ i_atime; } ;



__attribute__((used)) static u32 ext4_xattr_inode_get_hash(struct inode *ea_inode)
{
 return (u32)ea_inode->i_atime.tv_sec;
}
