
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct modsig {int dummy; } ;
typedef enum hash_algo { ____Placeholder_hash_algo } hash_algo ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int ima_get_modsig_digest(const struct modsig *modsig,
     enum hash_algo *algo, const u8 **digest,
     u32 *digest_size)
{
 return -EOPNOTSUPP;
}
