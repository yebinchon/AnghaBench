
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {struct event_filter* filter; } ;
struct event_filter {int dummy; } ;



__attribute__((used)) static inline struct event_filter *event_filter(struct trace_event_file *file)
{
 return file->filter;
}
