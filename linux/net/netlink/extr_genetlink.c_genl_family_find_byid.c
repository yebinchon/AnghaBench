
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genl_family {int dummy; } ;


 int genl_fam_idr ;
 struct genl_family const* idr_find (int *,unsigned int) ;

__attribute__((used)) static const struct genl_family *genl_family_find_byid(unsigned int id)
{
 return idr_find(&genl_fam_idr, id);
}
