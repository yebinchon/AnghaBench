
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuid ;


 scalar_t__ get_cpuid (char*,int) ;
 int sscanf (char*,char*,unsigned int*,char*,char*,char*,int*) ;

__attribute__((used)) static const char *do_determine_event(bool excl_kernel)
{
 const char *event = excl_kernel ? "cycles:u" : "cycles";
 return event;
}
