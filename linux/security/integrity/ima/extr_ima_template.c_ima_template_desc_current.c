
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ima_template_desc {int dummy; } ;


 int CONFIG_IMA_DEFAULT_TEMPLATE ;
 int ima_init_template_list () ;
 struct ima_template_desc* ima_template ;
 struct ima_template_desc* lookup_template_desc (int ) ;

struct ima_template_desc *ima_template_desc_current(void)
{
 if (!ima_template) {
  ima_init_template_list();
  ima_template =
      lookup_template_desc(CONFIG_IMA_DEFAULT_TEMPLATE);
 }
 return ima_template;
}
