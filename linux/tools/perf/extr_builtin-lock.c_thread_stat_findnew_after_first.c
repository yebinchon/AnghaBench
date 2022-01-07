
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct thread_stat {int seq_list; int tid; } ;


 int INIT_LIST_HEAD (int *) ;
 int pr_err (char*) ;
 struct thread_stat* thread_stat_find (int ) ;
 int thread_stat_insert (struct thread_stat*) ;
 struct thread_stat* zalloc (int) ;

__attribute__((used)) static struct thread_stat *thread_stat_findnew_after_first(u32 tid)
{
 struct thread_stat *st;

 st = thread_stat_find(tid);
 if (st)
  return st;

 st = zalloc(sizeof(struct thread_stat));
 if (!st) {
  pr_err("memory allocation failed\n");
  return ((void*)0);
 }

 st->tid = tid;
 INIT_LIST_HEAD(&st->seq_list);

 thread_stat_insert(st);

 return st;
}
