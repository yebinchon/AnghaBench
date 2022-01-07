
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ring_buffer_per_cpu {unsigned long nr_pages; int pages; int cpu; } ;
struct TYPE_5__ {int next; } ;


 int ENOMEM ;
 int LIST_HEAD (TYPE_1__) ;
 int WARN_ON (int) ;
 scalar_t__ __rb_allocate_pages (unsigned long,TYPE_1__*,int ) ;
 int list_del (TYPE_1__*) ;
 TYPE_1__ pages ;
 int rb_check_pages (struct ring_buffer_per_cpu*) ;

__attribute__((used)) static int rb_allocate_pages(struct ring_buffer_per_cpu *cpu_buffer,
        unsigned long nr_pages)
{
 LIST_HEAD(pages);

 WARN_ON(!nr_pages);

 if (__rb_allocate_pages(nr_pages, &pages, cpu_buffer->cpu))
  return -ENOMEM;






 cpu_buffer->pages = pages.next;
 list_del(&pages);

 cpu_buffer->nr_pages = nr_pages;

 rb_check_pages(cpu_buffer);

 return 0;
}
