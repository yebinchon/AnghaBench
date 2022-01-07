
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_record {int dummy; } ;
struct tep_event {int tep; } ;


 char* tep_data_comm_from_pid (int ,int) ;
 int tep_data_pid (int ,struct tep_record*) ;

__attribute__((used)) static const char *
get_comm(struct tep_event *event, struct tep_record *record)
{
 const char *comm;
 int pid;

 pid = tep_data_pid(event->tep, record);
 comm = tep_data_comm_from_pid(event->tep, pid);
 return comm;
}
