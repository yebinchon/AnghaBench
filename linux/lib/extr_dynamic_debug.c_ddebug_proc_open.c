
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;
struct ddebug_iter {int dummy; } ;


 int ddebug_proc_seqops ;
 int seq_open_private (struct file*,int *,int) ;
 int vpr_info (char*) ;

__attribute__((used)) static int ddebug_proc_open(struct inode *inode, struct file *file)
{
 vpr_info("called\n");
 return seq_open_private(file, &ddebug_proc_seqops,
    sizeof(struct ddebug_iter));
}
