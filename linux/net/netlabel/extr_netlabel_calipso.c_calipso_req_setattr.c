
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sock {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;
struct netlbl_calipso_ops {int (* req_setattr ) (struct request_sock*,struct calipso_doi const*,struct netlbl_lsm_secattr const*) ;} ;
struct calipso_doi {int dummy; } ;


 int ENOMSG ;
 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (struct request_sock*,struct calipso_doi const*,struct netlbl_lsm_secattr const*) ;

int calipso_req_setattr(struct request_sock *req,
   const struct calipso_doi *doi_def,
   const struct netlbl_lsm_secattr *secattr)
{
 int ret_val = -ENOMSG;
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->req_setattr(req, doi_def, secattr);
 return ret_val;
}
