
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sctp_hash_cmp_arg {int paddr; int lport; int net; } ;
typedef int __u32 ;


 int sctp_hashfn (int ,int ,int ,int ) ;

__attribute__((used)) static inline __u32 sctp_hash_key(const void *data, u32 len, u32 seed)
{
 const struct sctp_hash_cmp_arg *x = data;

 return sctp_hashfn(x->net, x->lport, x->paddr, seed);
}
