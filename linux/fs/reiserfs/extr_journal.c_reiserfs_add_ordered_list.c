
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;


 int SB_JOURNAL (int ) ;
 int __add_jh (int ,struct buffer_head*,int ) ;

int reiserfs_add_ordered_list(struct inode *inode, struct buffer_head *bh)
{
 return __add_jh(SB_JOURNAL(inode->i_sb), bh, 0);
}
