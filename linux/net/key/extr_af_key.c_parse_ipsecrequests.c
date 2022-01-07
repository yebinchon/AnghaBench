
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_policy {int dummy; } ;
struct sadb_x_policy {int sadb_x_policy_len; } ;
struct sadb_x_ipsecrequest {int sadb_x_ipsecrequest_len; } ;


 int EINVAL ;
 int parse_ipsecrequest (struct xfrm_policy*,struct sadb_x_ipsecrequest*) ;

__attribute__((used)) static int
parse_ipsecrequests(struct xfrm_policy *xp, struct sadb_x_policy *pol)
{
 int err;
 int len = pol->sadb_x_policy_len*8 - sizeof(struct sadb_x_policy);
 struct sadb_x_ipsecrequest *rq = (void*)(pol+1);

 if (pol->sadb_x_policy_len * 8 < sizeof(struct sadb_x_policy))
  return -EINVAL;

 while (len >= sizeof(*rq)) {
  if (len < rq->sadb_x_ipsecrequest_len ||
      rq->sadb_x_ipsecrequest_len < sizeof(*rq))
   return -EINVAL;

  if ((err = parse_ipsecrequest(xp, rq)) < 0)
   return err;
  len -= rq->sadb_x_ipsecrequest_len;
  rq = (void*)((u8*)rq + rq->sadb_x_ipsecrequest_len);
 }
 return 0;
}
