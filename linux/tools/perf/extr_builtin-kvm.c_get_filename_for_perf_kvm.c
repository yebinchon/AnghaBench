
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ perf_guest ;
 scalar_t__ perf_host ;
 char* strdup (char*) ;

__attribute__((used)) static const char *get_filename_for_perf_kvm(void)
{
 const char *filename;

 if (perf_host && !perf_guest)
  filename = strdup("perf.data.host");
 else if (!perf_host && perf_guest)
  filename = strdup("perf.data.guest");
 else
  filename = strdup("perf.data.kvm");

 return filename;
}
