
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct pt_regs {int dummy; } ;
typedef int orig_addr ;
typedef int new_addr ;


 scalar_t__ PT_REGS_PARM2 (struct pt_regs*) ;
 scalar_t__ PT_REGS_PARM3 (struct pt_regs*) ;
 struct sockaddr_in* bpf_map_lookup_elem (int *,struct sockaddr_in*) ;
 scalar_t__ bpf_probe_read (struct sockaddr_in*,int,void*) ;
 int bpf_probe_write_user (void*,struct sockaddr_in*,int) ;
 int dnat_map ;
 int memcpy (struct sockaddr_in*,struct sockaddr_in*,int) ;

int bpf_prog1(struct pt_regs *ctx)
{
 struct sockaddr_in new_addr, orig_addr = {};
 struct sockaddr_in *mapped_addr;
 void *sockaddr_arg = (void *)PT_REGS_PARM2(ctx);
 int sockaddr_len = (int)PT_REGS_PARM3(ctx);

 if (sockaddr_len > sizeof(orig_addr))
  return 0;

 if (bpf_probe_read(&orig_addr, sizeof(orig_addr), sockaddr_arg) != 0)
  return 0;

 mapped_addr = bpf_map_lookup_elem(&dnat_map, &orig_addr);
 if (mapped_addr != ((void*)0)) {
  memcpy(&new_addr, mapped_addr, sizeof(new_addr));
  bpf_probe_write_user(sockaddr_arg, &new_addr,
         sizeof(new_addr));
 }
 return 0;
}
