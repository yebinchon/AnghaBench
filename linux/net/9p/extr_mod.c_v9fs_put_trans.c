
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_trans_module {int owner; } ;


 int module_put (int ) ;

void v9fs_put_trans(struct p9_trans_module *m)
{
 if (m)
  module_put(m->owner);
}
