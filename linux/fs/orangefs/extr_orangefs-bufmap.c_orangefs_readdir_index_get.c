
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get (int *) ;
 int readdir_map ;

int orangefs_readdir_index_get(void)
{
 return get(&readdir_map);
}
