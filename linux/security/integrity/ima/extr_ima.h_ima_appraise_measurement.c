
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modsig {int dummy; } ;
struct integrity_iint_cache {int dummy; } ;
struct file {int dummy; } ;
struct evm_ima_xattr_data {int dummy; } ;
typedef enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;


 int INTEGRITY_UNKNOWN ;

__attribute__((used)) static inline int ima_appraise_measurement(enum ima_hooks func,
        struct integrity_iint_cache *iint,
        struct file *file,
        const unsigned char *filename,
        struct evm_ima_xattr_data *xattr_value,
        int xattr_len,
        const struct modsig *modsig)
{
 return INTEGRITY_UNKNOWN;
}
