
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int id; } ;
struct cfsrvl {TYPE_1__ dev_info; } ;
struct cflayer {int dummy; } ;


 struct cfsrvl* container_obj (struct cflayer*) ;

u8 cfsrvl_getphyid(struct cflayer *layer)
{
 struct cfsrvl *servl = container_obj(layer);
 return servl->dev_info.id;
}
