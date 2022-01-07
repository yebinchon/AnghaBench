
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tracefs_registered ;

bool tracefs_initialized(void)
{
 return tracefs_registered;
}
