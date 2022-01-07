
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_endpoint {struct crypto_shash** auth_hmacs; } ;
struct crypto_shash {int dummy; } ;
typedef int gfp_t ;
typedef size_t __u16 ;
struct TYPE_2__ {int hmac_name; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 size_t SCTP_AUTH_NUM_HMACS ;
 struct crypto_shash* crypto_alloc_shash (int ,int ,int ) ;
 struct crypto_shash** kcalloc (size_t,int,int ) ;
 int sctp_auth_destroy_hmacs (struct crypto_shash**) ;
 TYPE_1__* sctp_hmac_list ;

int sctp_auth_init_hmacs(struct sctp_endpoint *ep, gfp_t gfp)
{
 struct crypto_shash *tfm = ((void*)0);
 __u16 id;


 if (ep->auth_hmacs)
  return 0;


 ep->auth_hmacs = kcalloc(SCTP_AUTH_NUM_HMACS,
     sizeof(struct crypto_shash *),
     gfp);
 if (!ep->auth_hmacs)
  return -ENOMEM;

 for (id = 0; id < SCTP_AUTH_NUM_HMACS; id++) {






  if (!sctp_hmac_list[id].hmac_name)
   continue;


  if (ep->auth_hmacs[id])
   continue;


  tfm = crypto_alloc_shash(sctp_hmac_list[id].hmac_name, 0, 0);
  if (IS_ERR(tfm))
   goto out_err;

  ep->auth_hmacs[id] = tfm;
 }

 return 0;

out_err:

 sctp_auth_destroy_hmacs(ep->auth_hmacs);
 return -ENOMEM;
}
