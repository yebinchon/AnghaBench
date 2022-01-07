
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcomm ;
struct task_struct {int flags; } ;
struct seq_file {int dummy; } ;


 int ESCAPE_SPACE ;
 int ESCAPE_SPECIAL ;
 int PF_WQ_WORKER ;
 int __get_task_comm (char*,int,struct task_struct*) ;
 int seq_commit (struct seq_file*,int) ;
 size_t seq_get_buf (struct seq_file*,char**) ;
 int string_escape_str (char*,char*,size_t,int,char*) ;
 int strscpy (char*,char*,size_t) ;
 int wq_worker_comm (char*,int,struct task_struct*) ;

void proc_task_name(struct seq_file *m, struct task_struct *p, bool escape)
{
 char *buf;
 size_t size;
 char tcomm[64];
 int ret;

 if (p->flags & PF_WQ_WORKER)
  wq_worker_comm(tcomm, sizeof(tcomm), p);
 else
  __get_task_comm(tcomm, sizeof(tcomm), p);

 size = seq_get_buf(m, &buf);
 if (escape) {
  ret = string_escape_str(tcomm, buf, size,
     ESCAPE_SPACE | ESCAPE_SPECIAL, "\n\\");
  if (ret >= size)
   ret = -1;
 } else {
  ret = strscpy(buf, tcomm, size);
 }

 seq_commit(m, ret);
}
