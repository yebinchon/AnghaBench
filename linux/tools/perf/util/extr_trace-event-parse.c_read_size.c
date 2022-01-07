
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int tep; } ;


 unsigned long long tep_read_number (int ,void*,int) ;

unsigned long long read_size(struct tep_event *event, void *ptr, int size)
{
 return tep_read_number(event->tep, ptr, size);
}
