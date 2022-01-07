
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sadb_x_sec_ctx {int sadb_x_ctx_len; int sadb_x_sec_len; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int pfkey_sec_ctx_len (struct sadb_x_sec_ctx const*) ;

__attribute__((used)) static inline int verify_sec_ctx_len(const void *p)
{
 const struct sadb_x_sec_ctx *sec_ctx = p;
 int len = sec_ctx->sadb_x_ctx_len;

 if (len > PAGE_SIZE)
  return -EINVAL;

 len = pfkey_sec_ctx_len(sec_ctx);

 if (sec_ctx->sadb_x_sec_len != len)
  return -EINVAL;

 return 0;
}
