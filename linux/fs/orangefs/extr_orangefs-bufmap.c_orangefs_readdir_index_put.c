
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put (int *,int) ;
 int readdir_map ;

void orangefs_readdir_index_put(int buffer_index)
{
 put(&readdir_map, buffer_index);
}
