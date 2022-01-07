
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;
struct cipso_v4_doi {int type; } ;


 int CIPSO_V4_MAP_PASS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t NLBL_CIPSOV4_A_TAGLST ;
 int cipso_v4_doi_add (struct cipso_v4_doi*,struct netlbl_audit*) ;
 int cipso_v4_doi_free (struct cipso_v4_doi*) ;
 struct cipso_v4_doi* kmalloc (int,int ) ;
 int netlbl_cipsov4_add_common (struct genl_info*,struct cipso_v4_doi*) ;

__attribute__((used)) static int netlbl_cipsov4_add_pass(struct genl_info *info,
       struct netlbl_audit *audit_info)
{
 int ret_val;
 struct cipso_v4_doi *doi_def = ((void*)0);

 if (!info->attrs[NLBL_CIPSOV4_A_TAGLST])
  return -EINVAL;

 doi_def = kmalloc(sizeof(*doi_def), GFP_KERNEL);
 if (doi_def == ((void*)0))
  return -ENOMEM;
 doi_def->type = CIPSO_V4_MAP_PASS;

 ret_val = netlbl_cipsov4_add_common(info, doi_def);
 if (ret_val != 0)
  goto add_pass_failure;

 ret_val = cipso_v4_doi_add(doi_def, audit_info);
 if (ret_val != 0)
  goto add_pass_failure;
 return 0;

add_pass_failure:
 cipso_v4_doi_free(doi_def);
 return ret_val;
}
