
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_tplg_vendor_uuid_elem {scalar_t__ token; int uuid; } ;
struct device {int dummy; } ;
typedef int guid_t ;


 int EINVAL ;
 scalar_t__ SKL_TKN_UUID ;
 int dev_err (struct device*,char*,scalar_t__) ;
 int guid_copy (int *,int *) ;

__attribute__((used)) static int skl_tplg_get_uuid(struct device *dev, guid_t *guid,
       struct snd_soc_tplg_vendor_uuid_elem *uuid_tkn)
{
 if (uuid_tkn->token == SKL_TKN_UUID) {
  guid_copy(guid, (guid_t *)&uuid_tkn->uuid);
  return 0;
 }

 dev_err(dev, "Not an UUID token %d\n", uuid_tkn->token);

 return -EINVAL;
}
