
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_if_parms {scalar_t__ link; int if_id; } ;
struct TYPE_2__ {scalar_t__ link; int if_id; } ;
struct xfrm_if {TYPE_1__ p; } ;


 int EINVAL ;

__attribute__((used)) static int xfrmi_change(struct xfrm_if *xi, const struct xfrm_if_parms *p)
{
 if (xi->p.link != p->link)
  return -EINVAL;

 xi->p.if_id = p->if_id;

 return 0;
}
