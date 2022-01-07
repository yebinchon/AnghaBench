
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct garp_attr {int node; } ;
struct garp_applicant {int gid; } ;


 int kfree (struct garp_attr*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void garp_attr_destroy(struct garp_applicant *app, struct garp_attr *attr)
{
 rb_erase(&attr->node, &app->gid);
 kfree(attr);
}
