
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** xen_hypercall_names ;

__attribute__((used)) static const char *xen_hypercall_name(unsigned op)
{
 if (op < ARRAY_SIZE(xen_hypercall_names) &&
     xen_hypercall_names[op] != ((void*)0))
  return xen_hypercall_names[op];

 return "";
}
