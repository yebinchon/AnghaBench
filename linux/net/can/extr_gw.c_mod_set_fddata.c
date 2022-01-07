
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ set; } ;
struct cf_mod {TYPE_2__ modframe; } ;
struct canfd_frame {int data; } ;


 int CANFD_MAX_DLEN ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void mod_set_fddata(struct canfd_frame *cf, struct cf_mod *mod)
{
 memcpy(cf->data, mod->modframe.set.data, CANFD_MAX_DLEN);
}
