
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_calipso_ops {int (* doi_remove ) (int ,struct netlbl_audit*) ;} ;
struct netlbl_audit {int dummy; } ;


 int ENOMSG ;
 struct netlbl_calipso_ops* netlbl_calipso_ops_get () ;
 int stub1 (int ,struct netlbl_audit*) ;

int calipso_doi_remove(u32 doi, struct netlbl_audit *audit_info)
{
 int ret_val = -ENOMSG;
 const struct netlbl_calipso_ops *ops = netlbl_calipso_ops_get();

 if (ops)
  ret_val = ops->doi_remove(doi, audit_info);
 return ret_val;
}
