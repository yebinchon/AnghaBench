
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum export { ____Placeholder_export } export ;
struct TYPE_2__ {char const* str; } ;


 TYPE_1__* export_list ;

__attribute__((used)) static const char *export_str(enum export ex)
{
 return export_list[ex].str;
}
