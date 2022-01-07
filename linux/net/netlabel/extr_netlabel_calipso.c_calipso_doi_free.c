
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_calipso_ops {int (* doi_free ) (struct calipso_doi*) ;} ;
struct calipso_doi {int dummy; } ;


 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (struct calipso_doi*) ;

void calipso_doi_free(struct calipso_doi *doi_def)
{
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ops->doi_free(doi_def);
}
