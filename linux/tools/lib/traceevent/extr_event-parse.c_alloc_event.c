
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int dummy; } ;


 struct tep_event* calloc (int,int) ;

__attribute__((used)) static struct tep_event *alloc_event(void)
{
 return calloc(1, sizeof(struct tep_event));
}
