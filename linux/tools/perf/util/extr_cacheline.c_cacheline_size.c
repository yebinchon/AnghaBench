
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_line_size (int*) ;

int cacheline_size(void)
{
 static int size;

 if (!size)
  cache_line_size(&size);

 return size;
}
