
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool bpf_core_equal_fn(const void *k1, const void *k2, void *ctx)
{
 return k1 == k2;
}
