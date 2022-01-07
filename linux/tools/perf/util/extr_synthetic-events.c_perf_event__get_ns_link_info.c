
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int st_ino; int st_dev; } ;
struct perf_ns_link_info {int ino; int dev; } ;
typedef int pid_t ;


 int sprintf (char*,char*,int,char const*) ;
 scalar_t__ stat64 (char*,struct stat64*) ;

__attribute__((used)) static void perf_event__get_ns_link_info(pid_t pid, const char *ns,
      struct perf_ns_link_info *ns_link_info)
{
 struct stat64 st;
 char proc_ns[128];

 sprintf(proc_ns, "/proc/%u/ns/%s", pid, ns);
 if (stat64(proc_ns, &st) == 0) {
  ns_link_info->dev = st.st_dev;
  ns_link_info->ino = st.st_ino;
 }
}
