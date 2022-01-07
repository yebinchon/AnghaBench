
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; int type_required; int affects_type_identity; void* handler; } ;


 void* handle_randomize_considered_attr ;
 void* handle_randomize_layout_attr ;
 void* handle_randomize_performed_attr ;
 TYPE_1__ no_randomize_layout_attr ;
 TYPE_1__ randomize_considered_attr ;
 TYPE_1__ randomize_layout_attr ;
 TYPE_1__ randomize_performed_attr ;
 int register_attribute (TYPE_1__*) ;

__attribute__((used)) static void register_attributes(void *event_data, void *data)
{
 randomize_layout_attr.name = "randomize_layout";
 randomize_layout_attr.type_required = 1;
 randomize_layout_attr.handler = handle_randomize_layout_attr;




 no_randomize_layout_attr.name = "no_randomize_layout";
 no_randomize_layout_attr.type_required = 1;
 no_randomize_layout_attr.handler = handle_randomize_layout_attr;




 randomize_considered_attr.name = "randomize_considered";
 randomize_considered_attr.type_required = 1;
 randomize_considered_attr.handler = handle_randomize_considered_attr;

 randomize_performed_attr.name = "randomize_performed";
 randomize_performed_attr.type_required = 1;
 randomize_performed_attr.handler = handle_randomize_performed_attr;

 register_attribute(&randomize_layout_attr);
 register_attribute(&no_randomize_layout_attr);
 register_attribute(&randomize_considered_attr);
 register_attribute(&randomize_performed_attr);
}
