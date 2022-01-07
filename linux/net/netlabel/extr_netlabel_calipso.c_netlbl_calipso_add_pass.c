
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;
struct calipso_doi {int doi; int type; } ;


 int CALIPSO_MAP_PASS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NLBL_CALIPSO_A_DOI ;
 int calipso_doi_add (struct calipso_doi*,struct netlbl_audit*) ;
 int calipso_doi_free (struct calipso_doi*) ;
 struct calipso_doi* kmalloc (int,int ) ;
 int nla_get_u32 (int ) ;

__attribute__((used)) static int netlbl_calipso_add_pass(struct genl_info *info,
       struct netlbl_audit *audit_info)
{
 int ret_val;
 struct calipso_doi *doi_def = ((void*)0);

 doi_def = kmalloc(sizeof(*doi_def), GFP_KERNEL);
 if (!doi_def)
  return -ENOMEM;
 doi_def->type = CALIPSO_MAP_PASS;
 doi_def->doi = nla_get_u32(info->attrs[NLBL_CALIPSO_A_DOI]);
 ret_val = calipso_doi_add(doi_def, audit_info);
 if (ret_val != 0)
  calipso_doi_free(doi_def);

 return ret_val;
}
