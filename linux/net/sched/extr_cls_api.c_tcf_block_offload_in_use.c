
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_block {int offloadcnt; } ;


 int atomic_read (int *) ;

__attribute__((used)) static bool tcf_block_offload_in_use(struct tcf_block *block)
{
 return atomic_read(&block->offloadcnt);
}
