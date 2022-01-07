
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsverity_hash_alg {int dummy; } ;
struct fsverity_descriptor {int sig_size; } ;
typedef int __le32 ;


 int fsverity_hash_buffer (struct fsverity_hash_alg const*,struct fsverity_descriptor*,int,int *) ;

__attribute__((used)) static int compute_file_measurement(const struct fsverity_hash_alg *hash_alg,
        struct fsverity_descriptor *desc,
        u8 *measurement)
{
 __le32 sig_size = desc->sig_size;
 int err;

 desc->sig_size = 0;
 err = fsverity_hash_buffer(hash_alg, desc, sizeof(*desc), measurement);
 desc->sig_size = sig_size;

 return err;
}
