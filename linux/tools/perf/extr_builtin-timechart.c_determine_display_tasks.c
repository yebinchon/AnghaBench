
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timechart {int first_time; scalar_t__ last_time; struct per_pid* all_data; } ;
struct per_pidcomm {int display; int start_time; scalar_t__ total_time; scalar_t__ end_time; struct per_pidcomm* next; } ;
struct per_pid {int display; int start_time; scalar_t__ end_time; scalar_t__ total_time; struct per_pid* next; struct per_pidcomm* all; } ;



__attribute__((used)) static int determine_display_tasks(struct timechart *tchart, u64 threshold)
{
 struct per_pid *p;
 struct per_pidcomm *c;
 int count = 0;

 p = tchart->all_data;
 while (p) {
  p->display = 0;
  if (p->start_time == 1)
   p->start_time = tchart->first_time;


  if (p->end_time == 0)
   p->end_time = tchart->last_time;
  if (p->total_time >= threshold)
   p->display = 1;

  c = p->all;

  while (c) {
   c->display = 0;

   if (c->start_time == 1)
    c->start_time = tchart->first_time;

   if (c->total_time >= threshold) {
    c->display = 1;
    count++;
   }

   if (c->end_time == 0)
    c->end_time = tchart->last_time;

   c = c->next;
  }
  p = p->next;
 }
 return count;
}
