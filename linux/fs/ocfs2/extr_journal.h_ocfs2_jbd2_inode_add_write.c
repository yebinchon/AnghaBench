
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef int loff_t ;
typedef int handle_t ;
struct TYPE_2__ {int ip_jinode; } ;


 TYPE_1__* OCFS2_I (struct inode*) ;
 int jbd2_journal_inode_ranged_write (int *,int *,int ,int ) ;

__attribute__((used)) static inline int ocfs2_jbd2_inode_add_write(handle_t *handle, struct inode *inode,
          loff_t start_byte, loff_t length)
{
 return jbd2_journal_inode_ranged_write(handle,
            &OCFS2_I(inode)->ip_jinode,
            start_byte, length);
}
