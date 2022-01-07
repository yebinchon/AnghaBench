
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_counter {int failcnt; } ;
struct mem_cgroup {struct page_counter tcpmem; struct page_counter kmem; struct page_counter memsw; struct page_counter memory; } ;
struct kernfs_open_file {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int private; } ;


 int BUG () ;
 int MEMFILE_ATTR (int ) ;
 int MEMFILE_TYPE (int ) ;






 struct mem_cgroup* mem_cgroup_from_css (int ) ;
 TYPE_1__* of_cft (struct kernfs_open_file*) ;
 int of_css (struct kernfs_open_file*) ;
 int page_counter_reset_watermark (struct page_counter*) ;

__attribute__((used)) static ssize_t mem_cgroup_reset(struct kernfs_open_file *of, char *buf,
    size_t nbytes, loff_t off)
{
 struct mem_cgroup *memcg = mem_cgroup_from_css(of_css(of));
 struct page_counter *counter;

 switch (MEMFILE_TYPE(of_cft(of)->private)) {
 case 130:
  counter = &memcg->memory;
  break;
 case 129:
  counter = &memcg->memsw;
  break;
 case 131:
  counter = &memcg->kmem;
  break;
 case 128:
  counter = &memcg->tcpmem;
  break;
 default:
  BUG();
 }

 switch (MEMFILE_ATTR(of_cft(of)->private)) {
 case 132:
  page_counter_reset_watermark(counter);
  break;
 case 133:
  counter->failcnt = 0;
  break;
 default:
  BUG();
 }

 return nbytes;
}
