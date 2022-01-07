
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int affects_type_identity; int handler; } ;


 int handle_user_attribute ;
 int register_attribute (TYPE_1__*) ;
 TYPE_1__ user_attr ;

__attribute__((used)) static void register_attributes(void *event_data, void *data)
{
 user_attr.name = "user";
 user_attr.handler = handle_user_attribute;




 register_attribute(&user_attr);
}
