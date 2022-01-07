
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t roundup (size_t,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static size_t intel_pt_filter_bytes(const char *filter)
{
 size_t len = filter ? strlen(filter) : 0;

 return len ? roundup(len + 1, 8) : 0;
}
