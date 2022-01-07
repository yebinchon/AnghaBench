
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ rand () ;

__attribute__((used)) static inline uint64_t bpf_rand_mask(uint64_t mask)
{
 return (((uint64_t)(uint32_t)rand()) |
         ((uint64_t)(uint32_t)rand() << 32)) & mask;
}
