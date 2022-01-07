
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int * EXT4_JOURNAL (struct inode*) ;
 int jbd2_journal_blocks_per_page (struct inode*) ;

__attribute__((used)) static inline int ext4_journal_blocks_per_page(struct inode *inode)
{
 if (EXT4_JOURNAL(inode) != ((void*)0))
  return jbd2_journal_blocks_per_page(inode);
 return 0;
}
