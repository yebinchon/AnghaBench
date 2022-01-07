
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;
struct inode {TYPE_1__ i_ctime; } ;


 int inode_set_iversion_raw (struct inode*,int) ;

__attribute__((used)) static void ext4_xattr_inode_set_ref(struct inode *ea_inode, u64 ref_count)
{
 ea_inode->i_ctime.tv_sec = (u32)(ref_count >> 32);
 inode_set_iversion_raw(ea_inode, ref_count & 0xffffffff);
}
