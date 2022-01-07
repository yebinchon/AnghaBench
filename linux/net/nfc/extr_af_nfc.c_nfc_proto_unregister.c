
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_protocol {size_t id; int proto; } ;


 int ** proto_tab ;
 int proto_tab_lock ;
 int proto_unregister (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void nfc_proto_unregister(const struct nfc_protocol *nfc_proto)
{
 write_lock(&proto_tab_lock);
 proto_tab[nfc_proto->id] = ((void*)0);
 write_unlock(&proto_tab_lock);

 proto_unregister(nfc_proto->proto);
}
