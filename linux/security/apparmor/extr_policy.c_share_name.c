
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hname; } ;
struct TYPE_4__ {int name; int hname; } ;
struct aa_profile {TYPE_1__ label; TYPE_2__ base; } ;


 int aa_get_str (int ) ;
 int aa_put_str (int ) ;

__attribute__((used)) static void share_name(struct aa_profile *old, struct aa_profile *new)
{
 aa_put_str(new->base.hname);
 aa_get_str(old->base.hname);
 new->base.hname = old->base.hname;
 new->base.name = old->base.name;
 new->label.hname = old->label.hname;
}
