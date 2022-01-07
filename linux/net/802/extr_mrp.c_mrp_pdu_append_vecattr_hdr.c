
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mrp_vecattr_hdr {int firstattrvalue; int lenflags; } ;
struct mrp_applicant {int pdu; } ;
struct TYPE_2__ {int attrvalue; struct mrp_vecattr_hdr* vah; } ;


 struct mrp_vecattr_hdr* __skb_put (int ,scalar_t__) ;
 int memcpy (int ,void const*,scalar_t__) ;
 TYPE_1__* mrp_cb (int ) ;
 int put_unaligned (int ,int *) ;
 scalar_t__ skb_tailroom (int ) ;

__attribute__((used)) static int mrp_pdu_append_vecattr_hdr(struct mrp_applicant *app,
          const void *firstattrvalue, u8 attrlen)
{
 struct mrp_vecattr_hdr *vah;

 if (skb_tailroom(app->pdu) < sizeof(*vah) + attrlen)
  return -1;
 vah = __skb_put(app->pdu, sizeof(*vah) + attrlen);
 put_unaligned(0, &vah->lenflags);
 memcpy(vah->firstattrvalue, firstattrvalue, attrlen);
 mrp_cb(app->pdu)->vah = vah;
 memcpy(mrp_cb(app->pdu)->attrvalue, firstattrvalue, attrlen);
 return 0;
}
