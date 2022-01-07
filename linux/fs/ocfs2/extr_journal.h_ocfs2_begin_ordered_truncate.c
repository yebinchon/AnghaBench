
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_sb; } ;
typedef int loff_t ;
struct TYPE_6__ {int ip_jinode; } ;
struct TYPE_5__ {TYPE_1__* journal; } ;
struct TYPE_4__ {int j_journal; } ;


 TYPE_3__* OCFS2_I (struct inode*) ;
 TYPE_2__* OCFS2_SB (int ) ;
 int jbd2_journal_begin_ordered_truncate (int ,int *,int ) ;

__attribute__((used)) static inline int ocfs2_begin_ordered_truncate(struct inode *inode,
            loff_t new_size)
{
 return jbd2_journal_begin_ordered_truncate(
    OCFS2_SB(inode->i_sb)->journal->j_journal,
    &OCFS2_I(inode)->ip_jinode,
    new_size);
}
