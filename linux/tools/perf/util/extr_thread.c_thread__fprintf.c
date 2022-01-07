
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int tid; int mg; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,int,char*) ;
 size_t map_groups__fprintf (int ,int *) ;
 char* thread__comm_str (struct thread*) ;

size_t thread__fprintf(struct thread *thread, FILE *fp)
{
 return fprintf(fp, "Thread %d %s\n", thread->tid, thread__comm_str(thread)) +
        map_groups__fprintf(thread->mg, fp);
}
