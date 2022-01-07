
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_calipso_ops {struct calipso_doi* (* doi_getdef ) (int ) ;} ;
struct calipso_doi {int dummy; } ;


 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 struct calipso_doi* stub1 (int ) ;

struct calipso_doi *calipso_doi_getdef(u32 doi)
{
 struct calipso_doi *ret_val = ((void*)0);
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->doi_getdef(doi);
 return ret_val;
}
