
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct thread_stat {int rb; int seq_list; int tid; } ;
struct TYPE_3__ {int rb_node; } ;


 int INIT_LIST_HEAD (int *) ;
 int pr_err (char*) ;
 int rb_insert_color (int *,TYPE_1__*) ;
 int rb_link_node (int *,int *,int *) ;
 int thread_stat_findnew ;
 int thread_stat_findnew_after_first ;
 TYPE_1__ thread_stats ;
 struct thread_stat* zalloc (int) ;

__attribute__((used)) static struct thread_stat *thread_stat_findnew_first(u32 tid)
{
 struct thread_stat *st;

 st = zalloc(sizeof(struct thread_stat));
 if (!st) {
  pr_err("memory allocation failed\n");
  return ((void*)0);
 }
 st->tid = tid;
 INIT_LIST_HEAD(&st->seq_list);

 rb_link_node(&st->rb, ((void*)0), &thread_stats.rb_node);
 rb_insert_color(&st->rb, &thread_stats);

 thread_stat_findnew = thread_stat_findnew_after_first;
 return st;
}
