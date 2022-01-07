
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_esp* matchinfo; } ;
struct xt_esp {int invflags; } ;


 int EINVAL ;
 int XT_ESP_INV_MASK ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int esp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_esp *espinfo = par->matchinfo;

 if (espinfo->invflags & ~XT_ESP_INV_MASK) {
  pr_debug("unknown flags %X\n", espinfo->invflags);
  return -EINVAL;
 }

 return 0;
}
