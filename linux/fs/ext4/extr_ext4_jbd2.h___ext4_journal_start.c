
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int handle_t ;


 int * __ext4_journal_start_sb (int ,unsigned int,int,int,int) ;

__attribute__((used)) static inline handle_t *__ext4_journal_start(struct inode *inode,
          unsigned int line, int type,
          int blocks, int rsv_blocks)
{
 return __ext4_journal_start_sb(inode->i_sb, line, type, blocks,
           rsv_blocks);
}
