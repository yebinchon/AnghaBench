
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {int mem_unit; int freehigh; int totalhigh; int bufferram; int freeram; int sharedram; int totalram; } ;


 int NR_FREE_PAGES ;
 int NR_SHMEM ;
 int PAGE_SIZE ;
 int global_node_page_state (int ) ;
 int global_zone_page_state (int ) ;
 int nr_blockdev_pages () ;
 int nr_free_highpages () ;
 int totalhigh_pages () ;
 int totalram_pages () ;

void si_meminfo(struct sysinfo *val)
{
 val->totalram = totalram_pages();
 val->sharedram = global_node_page_state(NR_SHMEM);
 val->freeram = global_zone_page_state(NR_FREE_PAGES);
 val->bufferram = nr_blockdev_pages();
 val->totalhigh = totalhigh_pages();
 val->freehigh = nr_free_highpages();
 val->mem_unit = PAGE_SIZE;
}
