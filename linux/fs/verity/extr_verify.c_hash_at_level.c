
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct merkle_tree_params {unsigned int log_arity; unsigned int* level_start; unsigned int log_blocksize; } ;
typedef unsigned int pgoff_t ;



__attribute__((used)) static void hash_at_level(const struct merkle_tree_params *params,
     pgoff_t dindex, unsigned int level, pgoff_t *hindex,
     unsigned int *hoffset)
{
 pgoff_t position;


 position = dindex >> (level * params->log_arity);


 *hindex = params->level_start[level] + (position >> params->log_arity);


 *hoffset = (position & ((1 << params->log_arity) - 1)) <<
     (params->log_blocksize - params->log_arity);
}
