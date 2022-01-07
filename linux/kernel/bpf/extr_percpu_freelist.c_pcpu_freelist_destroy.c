
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_freelist {int freelist; } ;


 int free_percpu (int ) ;

void pcpu_freelist_destroy(struct pcpu_freelist *s)
{
 free_percpu(s->freelist);
}
