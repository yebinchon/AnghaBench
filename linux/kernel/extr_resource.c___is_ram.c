
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int __is_ram(unsigned long pfn, unsigned long nr_pages, void *arg)
{
 return 1;
}
