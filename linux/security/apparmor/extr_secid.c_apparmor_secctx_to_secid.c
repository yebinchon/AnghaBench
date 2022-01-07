
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aa_label {int secid; } ;
struct TYPE_4__ {TYPE_1__* unconfined; } ;
struct TYPE_3__ {int label; } ;


 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct aa_label*) ;
 int PTR_ERR (struct aa_label*) ;
 struct aa_label* aa_label_strn_parse (int *,char const*,int ,int ,int,int) ;
 TYPE_2__* root_ns ;

int apparmor_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 struct aa_label *label;

 label = aa_label_strn_parse(&root_ns->unconfined->label, secdata,
        seclen, GFP_KERNEL, 0, 0);
 if (IS_ERR(label))
  return PTR_ERR(label);
 *secid = label->secid;

 return 0;
}
