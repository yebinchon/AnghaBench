
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int tid; int pid_; } ;
struct TYPE_2__ {scalar_t__ tid_list; scalar_t__ pid_list; scalar_t__ comm_list; } ;


 int intlist__has_entry (scalar_t__,int ) ;
 int strlist__has_entry (scalar_t__,int ) ;
 TYPE_1__ symbol_conf ;
 int thread__comm_str (struct thread*) ;

__attribute__((used)) static inline bool thread__is_filtered(struct thread *thread)
{
 if (symbol_conf.comm_list &&
     !strlist__has_entry(symbol_conf.comm_list, thread__comm_str(thread))) {
  return 1;
 }

 if (symbol_conf.pid_list &&
     !intlist__has_entry(symbol_conf.pid_list, thread->pid_)) {
  return 1;
 }

 if (symbol_conf.tid_list &&
     !intlist__has_entry(symbol_conf.tid_list, thread->tid)) {
  return 1;
 }

 return 0;
}
