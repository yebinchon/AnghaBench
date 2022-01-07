
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct thread_trace {scalar_t__ entry_time; int syscall_stats; } ;
struct stats {int dummy; } ;
struct perf_sample {scalar_t__ time; } ;
struct int_node {struct stats* priv; } ;


 int init_stats (struct stats*) ;
 struct int_node* intlist__findnew (int ,int) ;
 struct stats* malloc (int) ;
 int update_stats (struct stats*,scalar_t__) ;

__attribute__((used)) static void thread__update_stats(struct thread_trace *ttrace,
     int id, struct perf_sample *sample)
{
 struct int_node *inode;
 struct stats *stats;
 u64 duration = 0;

 inode = intlist__findnew(ttrace->syscall_stats, id);
 if (inode == ((void*)0))
  return;

 stats = inode->priv;
 if (stats == ((void*)0)) {
  stats = malloc(sizeof(struct stats));
  if (stats == ((void*)0))
   return;
  init_stats(stats);
  inode->priv = stats;
 }

 if (ttrace->entry_time && sample->time > ttrace->entry_time)
  duration = sample->time - ttrace->entry_time;

 update_stats(stats, duration);
}
