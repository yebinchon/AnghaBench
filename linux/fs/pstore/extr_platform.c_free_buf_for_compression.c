
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_PSTORE_COMPRESS ;
 scalar_t__ IS_ENABLED (int ) ;
 int * big_oops_buf ;
 scalar_t__ big_oops_buf_sz ;
 int crypto_free_comp (int *) ;
 int kfree (int *) ;
 int * tfm ;

__attribute__((used)) static void free_buf_for_compression(void)
{
 if (IS_ENABLED(CONFIG_PSTORE_COMPRESS) && tfm) {
  crypto_free_comp(tfm);
  tfm = ((void*)0);
 }
 kfree(big_oops_buf);
 big_oops_buf = ((void*)0);
 big_oops_buf_sz = 0;
}
