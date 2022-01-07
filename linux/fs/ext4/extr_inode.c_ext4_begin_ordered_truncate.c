
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int jinode; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_JOURNAL (struct inode*) ;
 int jbd2_journal_begin_ordered_truncate (int ,int ,int ) ;
 int trace_ext4_begin_ordered_truncate (struct inode*,int ) ;

__attribute__((used)) static inline int ext4_begin_ordered_truncate(struct inode *inode,
           loff_t new_size)
{
 trace_ext4_begin_ordered_truncate(inode, new_size);






 if (!EXT4_I(inode)->jinode)
  return 0;
 return jbd2_journal_begin_ordered_truncate(EXT4_JOURNAL(inode),
         EXT4_I(inode)->jinode,
         new_size);
}
