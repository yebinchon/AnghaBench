
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_call {struct syscall_metadata* data; } ;
struct list_head {int dummy; } ;
struct syscall_metadata {struct list_head enter_fields; } ;



__attribute__((used)) static struct list_head *
syscall_get_enter_fields(struct trace_event_call *call)
{
 struct syscall_metadata *entry = call->data;

 return &entry->enter_fields;
}
