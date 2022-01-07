
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dn {int sdn_objnamel; int sdn_objname; int sdn_objnum; } ;


 void* le16_to_cpu (int ) ;
 int memcpy (unsigned char*,int ,void*) ;
 int memset (unsigned char*,int ,int) ;

int dn_sockaddr2username(struct sockaddr_dn *sdn, unsigned char *buf, unsigned char type)
{
 int len = 2;

 *buf++ = type;

 switch (type) {
 case 0:
  *buf++ = sdn->sdn_objnum;
  break;
 case 1:
  *buf++ = 0;
  *buf++ = le16_to_cpu(sdn->sdn_objnamel);
  memcpy(buf, sdn->sdn_objname, le16_to_cpu(sdn->sdn_objnamel));
  len = 3 + le16_to_cpu(sdn->sdn_objnamel);
  break;
 case 2:
  memset(buf, 0, 5);
  buf += 5;
  *buf++ = le16_to_cpu(sdn->sdn_objnamel);
  memcpy(buf, sdn->sdn_objname, le16_to_cpu(sdn->sdn_objnamel));
  len = 7 + le16_to_cpu(sdn->sdn_objnamel);
  break;
 }

 return len;
}
