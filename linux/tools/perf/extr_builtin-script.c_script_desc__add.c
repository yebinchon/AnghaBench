
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {int node; } ;


 int list_add_tail (int *,int *) ;
 int script_descs ;

__attribute__((used)) static void script_desc__add(struct script_desc *s)
{
 list_add_tail(&s->node, &script_descs);
}
