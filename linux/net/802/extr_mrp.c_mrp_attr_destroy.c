
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrp_attr {int node; } ;
struct mrp_applicant {int mad; } ;


 int kfree (struct mrp_attr*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void mrp_attr_destroy(struct mrp_applicant *app, struct mrp_attr *attr)
{
 rb_erase(&attr->node, &app->mad);
 kfree(attr);
}
