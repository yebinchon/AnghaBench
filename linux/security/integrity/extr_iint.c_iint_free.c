
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {unsigned long flags; unsigned long atomic_flags; scalar_t__ measured_pcrs; void* evm_status; void* ima_creds_status; void* ima_read_status; void* ima_bprm_status; void* ima_mmap_status; void* ima_file_status; scalar_t__ version; int * ima_hash; } ;


 void* INTEGRITY_UNKNOWN ;
 int iint_cache ;
 int kfree (int *) ;
 int kmem_cache_free (int ,struct integrity_iint_cache*) ;

__attribute__((used)) static void iint_free(struct integrity_iint_cache *iint)
{
 kfree(iint->ima_hash);
 iint->ima_hash = ((void*)0);
 iint->version = 0;
 iint->flags = 0UL;
 iint->atomic_flags = 0UL;
 iint->ima_file_status = INTEGRITY_UNKNOWN;
 iint->ima_mmap_status = INTEGRITY_UNKNOWN;
 iint->ima_bprm_status = INTEGRITY_UNKNOWN;
 iint->ima_read_status = INTEGRITY_UNKNOWN;
 iint->ima_creds_status = INTEGRITY_UNKNOWN;
 iint->evm_status = INTEGRITY_UNKNOWN;
 iint->measured_pcrs = 0;
 kmem_cache_free(iint_cache, iint);
}
