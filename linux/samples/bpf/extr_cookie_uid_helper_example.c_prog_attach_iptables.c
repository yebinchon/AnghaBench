
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WEXITSTATUS (int) ;
 scalar_t__ bpf_obj_pin (int ,char*) ;
 int errno ;
 int error (int,int ,char*) ;
 int exit (int) ;
 int printf (char*,...) ;
 int prog_fd ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;
 int system (char*) ;

__attribute__((used)) static void prog_attach_iptables(char *file)
{
 int ret;
 char rules[100];

 if (bpf_obj_pin(prog_fd, file))
  error(1, errno, "bpf_obj_pin");
 if (strlen(file) > 50) {
  printf("file path too long: %s\n", file);
  exit(1);
 }
 sprintf(rules, "iptables -A OUTPUT -m bpf --object-pinned %s -j ACCEPT",
  file);
 ret = system(rules);
 if (ret < 0) {
  printf("iptables rule update failed: %d/n", WEXITSTATUS(ret));
  exit(1);
 }
}
