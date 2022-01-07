
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_action_desc {int action; } ;


 int ARRAY_SIZE (struct seg6_action_desc*) ;
 struct seg6_action_desc* seg6_action_table ;

__attribute__((used)) static struct seg6_action_desc *__get_action_desc(int action)
{
 struct seg6_action_desc *desc;
 int i, count;

 count = ARRAY_SIZE(seg6_action_table);
 for (i = 0; i < count; i++) {
  desc = &seg6_action_table[i];
  if (desc->action == action)
   return desc;
 }

 return ((void*)0);
}
