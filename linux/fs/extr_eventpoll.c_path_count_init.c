
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_ARR_SIZE ;
 scalar_t__* path_count ;

__attribute__((used)) static void path_count_init(void)
{
 int i;

 for (i = 0; i < PATH_ARR_SIZE; i++)
  path_count[i] = 0;
}
