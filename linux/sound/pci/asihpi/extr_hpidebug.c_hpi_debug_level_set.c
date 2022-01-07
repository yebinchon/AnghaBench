
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hpi_debug_level ;

int hpi_debug_level_set(int level)
{
 int old_level;

 old_level = hpi_debug_level;
 hpi_debug_level = level;
 return old_level;
}
