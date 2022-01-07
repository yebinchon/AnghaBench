
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_node_map {int map; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static inline void __ocfs2_node_map_clear_bit(struct ocfs2_node_map *map,
           int bit)
{
 clear_bit(bit, map->map);
}
