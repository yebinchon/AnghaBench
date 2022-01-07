
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_hmac_info {scalar_t__ hmackeyid; } ;
struct rhashtable_compare_arg {scalar_t__ key; } ;
typedef scalar_t__ __u32 ;



__attribute__((used)) static int seg6_hmac_cmpfn(struct rhashtable_compare_arg *arg, const void *obj)
{
 const struct seg6_hmac_info *hinfo = obj;

 return (hinfo->hmackeyid != *(__u32 *)arg->key);
}
