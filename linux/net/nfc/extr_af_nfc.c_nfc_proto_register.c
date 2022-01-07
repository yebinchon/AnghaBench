
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_protocol {size_t id; int proto; } ;


 int EBUSY ;
 int EINVAL ;
 size_t NFC_SOCKPROTO_MAX ;
 int proto_register (int ,int ) ;
 struct nfc_protocol const** proto_tab ;
 int proto_tab_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int nfc_proto_register(const struct nfc_protocol *nfc_proto)
{
 int rc;

 if (nfc_proto->id < 0 || nfc_proto->id >= NFC_SOCKPROTO_MAX)
  return -EINVAL;

 rc = proto_register(nfc_proto->proto, 0);
 if (rc)
  return rc;

 write_lock(&proto_tab_lock);
 if (proto_tab[nfc_proto->id])
  rc = -EBUSY;
 else
  proto_tab[nfc_proto->id] = nfc_proto;
 write_unlock(&proto_tab_lock);

 return rc;
}
