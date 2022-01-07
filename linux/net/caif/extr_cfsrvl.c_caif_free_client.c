
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfsrvl {int layer; int (* release ) (int *) ;} ;
struct cflayer {int * dn; } ;


 struct cfsrvl* container_obj (int *) ;
 int stub1 (int *) ;

void caif_free_client(struct cflayer *adap_layer)
{
 struct cfsrvl *servl;
 if (adap_layer == ((void*)0) || adap_layer->dn == ((void*)0))
  return;
 servl = container_obj(adap_layer->dn);
 servl->release(&servl->layer);
}
