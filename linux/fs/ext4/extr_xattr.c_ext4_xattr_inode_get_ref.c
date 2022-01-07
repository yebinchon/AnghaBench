
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct inode {TYPE_1__ i_ctime; } ;


 scalar_t__ inode_peek_iversion_raw (struct inode*) ;

__attribute__((used)) static u64 ext4_xattr_inode_get_ref(struct inode *ea_inode)
{
 return ((u64)ea_inode->i_ctime.tv_sec << 32) |
  (u32) inode_peek_iversion_raw(ea_inode);
}
