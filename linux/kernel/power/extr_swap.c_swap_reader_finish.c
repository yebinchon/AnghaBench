
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_handle {int dummy; } ;


 int release_swap_reader (struct swap_map_handle*) ;

__attribute__((used)) static int swap_reader_finish(struct swap_map_handle *handle)
{
 release_swap_reader(handle);

 return 0;
}
