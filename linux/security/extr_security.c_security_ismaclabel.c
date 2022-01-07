
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_int_hook (int ,int ,char const*) ;
 int ismaclabel ;

int security_ismaclabel(const char *name)
{
 return call_int_hook(ismaclabel, 0, name);
}
