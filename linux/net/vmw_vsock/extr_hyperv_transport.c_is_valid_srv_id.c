
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * b; } ;
typedef TYPE_1__ guid_t ;
struct TYPE_5__ {int * b; } ;


 int memcmp (int *,int *,int) ;
 TYPE_2__ srv_id_template ;

__attribute__((used)) static bool is_valid_srv_id(const guid_t *id)
{
 return !memcmp(&id->b[4], &srv_id_template.b[4], sizeof(guid_t) - 4);
}
