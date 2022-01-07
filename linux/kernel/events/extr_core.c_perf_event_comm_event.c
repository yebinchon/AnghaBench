
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ header; } ;
struct perf_comm_event {char* comm; unsigned int comm_size; TYPE_2__ event_id; TYPE_3__* task; } ;
typedef int comm ;
struct TYPE_6__ {int comm; } ;


 unsigned int ALIGN (scalar_t__,int) ;
 int TASK_COMM_LEN ;
 int memset (char*,int ,int) ;
 int perf_event_comm_output ;
 int perf_iterate_sb (int ,struct perf_comm_event*,int *) ;
 int strlcpy (char*,int ,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void perf_event_comm_event(struct perf_comm_event *comm_event)
{
 char comm[TASK_COMM_LEN];
 unsigned int size;

 memset(comm, 0, sizeof(comm));
 strlcpy(comm, comm_event->task->comm, sizeof(comm));
 size = ALIGN(strlen(comm)+1, sizeof(u64));

 comm_event->comm = comm;
 comm_event->comm_size = size;

 comm_event->event_id.header.size = sizeof(comm_event->event_id) + size;

 perf_iterate_sb(perf_event_comm_output,
         comm_event,
         ((void*)0));
}
