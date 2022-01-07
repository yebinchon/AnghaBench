
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put (int *,int) ;
 int rw_map ;

void orangefs_bufmap_put(int buffer_index)
{
 put(&rw_map, buffer_index);
}
