
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_audit {int dummy; } ;


 int cipso_v4_doi_remove (int ,struct netlbl_audit*) ;

void netlbl_cfg_cipsov4_del(u32 doi, struct netlbl_audit *audit_info)
{
 cipso_v4_doi_remove(doi, audit_info);
}
