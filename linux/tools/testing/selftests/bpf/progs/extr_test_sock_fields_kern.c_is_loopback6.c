
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ bpf_htonl (int) ;

__attribute__((used)) static bool is_loopback6(__u32 *a6)
{
 return !a6[0] && !a6[1] && !a6[2] && a6[3] == bpf_htonl(1);
}
