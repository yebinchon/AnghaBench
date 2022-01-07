
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ __intel_pt_pgd_ip (int ,void*) ;

__attribute__((used)) static bool intel_pt_pgd_ip(uint64_t ip, void *data)
{
 return __intel_pt_pgd_ip(ip, data) > 0;
}
