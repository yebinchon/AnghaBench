
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_kexec_hdr {int dummy; } ;


 int ULONG_MAX ;
 int binary_runtime_size ;

unsigned long ima_get_binary_runtime_size(void)
{
 if (binary_runtime_size >= (ULONG_MAX - sizeof(struct ima_kexec_hdr)))
  return ULONG_MAX;
 else
  return binary_runtime_size + sizeof(struct ima_kexec_hdr);
}
