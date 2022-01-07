
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int mutex; void* evm_status; void* ima_creds_status; void* ima_read_status; void* ima_bprm_status; void* ima_mmap_status; void* ima_file_status; } ;


 void* INTEGRITY_UNKNOWN ;
 int memset (struct integrity_iint_cache*,int ,int) ;
 int mutex_init (int *) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct integrity_iint_cache *iint = foo;

 memset(iint, 0, sizeof(*iint));
 iint->ima_file_status = INTEGRITY_UNKNOWN;
 iint->ima_mmap_status = INTEGRITY_UNKNOWN;
 iint->ima_bprm_status = INTEGRITY_UNKNOWN;
 iint->ima_read_status = INTEGRITY_UNKNOWN;
 iint->ima_creds_status = INTEGRITY_UNKNOWN;
 iint->evm_status = INTEGRITY_UNKNOWN;
 mutex_init(&iint->mutex);
}
