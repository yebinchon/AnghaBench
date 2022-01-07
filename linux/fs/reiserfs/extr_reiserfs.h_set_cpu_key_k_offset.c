
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int k_offset; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;
typedef int loff_t ;



__attribute__((used)) static inline void set_cpu_key_k_offset(struct cpu_key *key, loff_t offset)
{
 key->on_disk_key.k_offset = offset;
}
