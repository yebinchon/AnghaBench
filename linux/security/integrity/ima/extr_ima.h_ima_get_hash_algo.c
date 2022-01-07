
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evm_ima_xattr_data {int dummy; } ;
typedef enum hash_algo { ____Placeholder_hash_algo } hash_algo ;


 int ima_hash_algo ;

__attribute__((used)) static inline enum hash_algo
ima_get_hash_algo(struct evm_ima_xattr_data *xattr_value, int xattr_len)
{
 return ima_hash_algo;
}
