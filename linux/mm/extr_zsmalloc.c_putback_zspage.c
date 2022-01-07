
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct size_class {int index; } ;
typedef enum fullness_group { ____Placeholder_fullness_group } fullness_group ;


 int VM_BUG_ON (int ) ;
 int get_fullness_group (struct size_class*,struct zspage*) ;
 int insert_zspage (struct size_class*,struct zspage*,int) ;
 int is_zspage_isolated (struct zspage*) ;
 int set_zspage_mapping (struct zspage*,int ,int) ;

__attribute__((used)) static enum fullness_group putback_zspage(struct size_class *class,
   struct zspage *zspage)
{
 enum fullness_group fullness;

 VM_BUG_ON(is_zspage_isolated(zspage));

 fullness = get_fullness_group(class, zspage);
 insert_zspage(class, zspage, fullness);
 set_zspage_mapping(zspage, class->index, fullness);

 return fullness;
}
