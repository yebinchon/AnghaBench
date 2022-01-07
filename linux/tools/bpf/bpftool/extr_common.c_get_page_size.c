
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpagesize () ;

unsigned int get_page_size(void)
{
 static int result;

 if (!result)
  result = getpagesize();
 return result;
}
