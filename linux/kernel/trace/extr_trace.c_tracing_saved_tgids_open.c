
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int seq_open (struct file*,int *) ;
 int tracing_check_open_get_tr (int *) ;
 int tracing_saved_tgids_seq_ops ;

__attribute__((used)) static int tracing_saved_tgids_open(struct inode *inode, struct file *filp)
{
 int ret;

 ret = tracing_check_open_get_tr(((void*)0));
 if (ret)
  return ret;

 return seq_open(filp, &tracing_saved_tgids_seq_ops);
}
