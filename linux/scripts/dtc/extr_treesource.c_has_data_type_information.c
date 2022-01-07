
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marker {scalar_t__ type; } ;


 scalar_t__ TYPE_UINT8 ;

__attribute__((used)) static bool has_data_type_information(struct marker *m)
{
 return m->type >= TYPE_UINT8;
}
