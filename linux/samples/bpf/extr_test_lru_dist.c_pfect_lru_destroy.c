
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfect_lru {int free_nodes; int map_fd; } ;


 int close (int ) ;
 int free (int ) ;

__attribute__((used)) static void pfect_lru_destroy(struct pfect_lru *lru)
{
 close(lru->map_fd);
 free(lru->free_nodes);
}
