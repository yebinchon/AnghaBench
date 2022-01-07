
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_FLOW_DISSECTOR ;
 int bpf_prog_detach (int ,int ) ;
 char* cfg_pin_path ;
 int errno ;
 int error (int,int ,char*,...) ;
 int sprintf (char*,char*,char*) ;
 int system (char*) ;

__attribute__((used)) static void detach_program(void)
{
 char command[64];
 int ret;

 ret = bpf_prog_detach(0, BPF_FLOW_DISSECTOR);
 if (ret)
  error(1, 0, "bpf_prog_detach");


 sprintf(command, "rm -r %s", cfg_pin_path);
 ret = system(command);
 if (ret)
  error(1, errno, "%s", command);
}
