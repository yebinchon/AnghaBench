
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfect_lru_node {int dummy; } ;
struct pfect_lru {int map_fd; int free_nodes; unsigned int lru_size; scalar_t__ total; scalar_t__ nr_misses; scalar_t__ nr_unique; scalar_t__ cur_size; int list; } ;


 int BPF_MAP_TYPE_HASH ;
 int INIT_LIST_HEAD (int *) ;
 int assert (int) ;
 int bpf_create_map (int ,int,int,unsigned int,int ) ;
 int malloc (unsigned int) ;

__attribute__((used)) static void pfect_lru_init(struct pfect_lru *lru, unsigned int lru_size,
      unsigned int nr_possible_elems)
{
 lru->map_fd = bpf_create_map(BPF_MAP_TYPE_HASH,
         sizeof(unsigned long long),
         sizeof(struct pfect_lru_node *),
         nr_possible_elems, 0);
 assert(lru->map_fd != -1);

 lru->free_nodes = malloc(lru_size * sizeof(struct pfect_lru_node));
 assert(lru->free_nodes);

 INIT_LIST_HEAD(&lru->list);
 lru->cur_size = 0;
 lru->lru_size = lru_size;
 lru->nr_unique = lru->nr_misses = lru->total = 0;
}
