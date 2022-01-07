
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_fp_list {int count; int user; int * fp; } ;
struct scm_cookie {struct scm_fp_list* fp; } ;


 int fput (int ) ;
 int free_uid (int ) ;
 int kfree (struct scm_fp_list*) ;

void __scm_destroy(struct scm_cookie *scm)
{
 struct scm_fp_list *fpl = scm->fp;
 int i;

 if (fpl) {
  scm->fp = ((void*)0);
  for (i=fpl->count-1; i>=0; i--)
   fput(fpl->fp[i]);
  free_uid(fpl->user);
  kfree(fpl);
 }
}
