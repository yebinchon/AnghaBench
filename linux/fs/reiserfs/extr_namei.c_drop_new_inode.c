
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flags; } ;


 int S_NOQUOTA ;
 int dquot_drop (struct inode*) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;

__attribute__((used)) static int drop_new_inode(struct inode *inode)
{
 dquot_drop(inode);
 make_bad_inode(inode);
 inode->i_flags |= S_NOQUOTA;
 iput(inode);
 return 0;
}
