
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpc ;


 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static bool is_jit_enabled(void)
{
 const char *jit_sysctl = "/proc/sys/net/core/bpf_jit_enable";
 bool enabled = 0;
 int sysctl_fd;

 sysctl_fd = open(jit_sysctl, 0, O_RDONLY);
 if (sysctl_fd != -1) {
  char tmpc;

  if (read(sysctl_fd, &tmpc, sizeof(tmpc)) == 1)
   enabled = (tmpc != '0');
  close(sysctl_fd);
 }

 return enabled;
}
