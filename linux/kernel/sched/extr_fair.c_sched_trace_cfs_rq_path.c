
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfs_rq {int dummy; } ;


 int cfs_rq_tg_path (struct cfs_rq*,char*,int) ;
 int strlcpy (char*,char*,int) ;

char *sched_trace_cfs_rq_path(struct cfs_rq *cfs_rq, char *str, int len)
{
 if (!cfs_rq) {
  if (str)
   strlcpy(str, "(null)", len);
  else
   return ((void*)0);
 }

 cfs_rq_tg_path(cfs_rq, str, len);
 return str;
}
