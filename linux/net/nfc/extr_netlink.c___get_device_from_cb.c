
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nlattr {int dummy; } ;
struct nfc_dev {int dummy; } ;
struct netlink_callback {int nlh; } ;
struct TYPE_3__ {int maxattr; scalar_t__ hdrsize; } ;


 int EINVAL ;
 int ENODEV ;
 struct nfc_dev* ERR_PTR (int) ;
 scalar_t__ GENL_HDRLEN ;
 size_t NFC_ATTR_DEVICE_INDEX ;
 struct nlattr** genl_family_attrbuf (TYPE_1__*) ;
 TYPE_1__ nfc_genl_family ;
 int nfc_genl_policy ;
 struct nfc_dev* nfc_get_device (int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nlmsg_parse_deprecated (int ,scalar_t__,struct nlattr**,int ,int ,int *) ;

__attribute__((used)) static struct nfc_dev *__get_device_from_cb(struct netlink_callback *cb)
{
 struct nlattr **attrbuf = genl_family_attrbuf(&nfc_genl_family);
 struct nfc_dev *dev;
 int rc;
 u32 idx;

 rc = nlmsg_parse_deprecated(cb->nlh,
        GENL_HDRLEN + nfc_genl_family.hdrsize,
        attrbuf, nfc_genl_family.maxattr,
        nfc_genl_policy, ((void*)0));
 if (rc < 0)
  return ERR_PTR(rc);

 if (!attrbuf[NFC_ATTR_DEVICE_INDEX])
  return ERR_PTR(-EINVAL);

 idx = nla_get_u32(attrbuf[NFC_ATTR_DEVICE_INDEX]);

 dev = nfc_get_device(idx);
 if (!dev)
  return ERR_PTR(-ENODEV);

 return dev;
}
