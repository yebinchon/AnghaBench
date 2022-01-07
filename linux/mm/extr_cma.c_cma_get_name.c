
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cma {char const* name; } ;



const char *cma_get_name(const struct cma *cma)
{
 return cma->name ? cma->name : "(undefined)";
}
