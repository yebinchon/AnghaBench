
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct integrity_iint_cache {int dummy; } ;
typedef enum integrity_status { ____Placeholder_integrity_status } integrity_status ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int INTEGRITY_UNKNOWN ;

__attribute__((used)) static inline enum integrity_status ima_get_cache_status(struct integrity_iint_cache
        *iint,
        enum ima_hooks func)
{
 return INTEGRITY_UNKNOWN;
}
