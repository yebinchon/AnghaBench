
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ logicalBlockNum; } ;
struct TYPE_4__ {scalar_t__* i_data; } ;
struct udf_inode_info {int i_lenEAttr; TYPE_3__ i_location; TYPE_1__ i_ext; } ;
struct inode {int dummy; } ;
struct genericFormat {scalar_t__ attrSubtype; int attrLength; int attrType; } ;
struct TYPE_5__ {scalar_t__ tagIdent; int tagLocation; } ;
struct extendedAttrHeaderDesc {int appAttrLocation; int impAttrLocation; TYPE_2__ descTag; } ;


 int TAG_IDENT_EAHD ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 scalar_t__ cpu_to_le16 (int ) ;
 int le32_to_cpu (int ) ;

struct genericFormat *udf_get_extendedattr(struct inode *inode, uint32_t type,
        uint8_t subtype)
{
 struct genericFormat *gaf;
 uint8_t *ea = ((void*)0);
 uint32_t offset;
 struct udf_inode_info *iinfo = UDF_I(inode);

 ea = iinfo->i_ext.i_data;

 if (iinfo->i_lenEAttr) {
  struct extendedAttrHeaderDesc *eahd;
  eahd = (struct extendedAttrHeaderDesc *)ea;


  if (eahd->descTag.tagIdent !=
    cpu_to_le16(TAG_IDENT_EAHD) ||
      le32_to_cpu(eahd->descTag.tagLocation) !=
    iinfo->i_location.logicalBlockNum)
   return ((void*)0);

  if (type < 2048)
   offset = sizeof(struct extendedAttrHeaderDesc);
  else if (type < 65536)
   offset = le32_to_cpu(eahd->impAttrLocation);
  else
   offset = le32_to_cpu(eahd->appAttrLocation);

  while (offset < iinfo->i_lenEAttr) {
   gaf = (struct genericFormat *)&ea[offset];
   if (le32_to_cpu(gaf->attrType) == type &&
     gaf->attrSubtype == subtype)
    return gaf;
   else
    offset += le32_to_cpu(gaf->attrLength);
  }
 }

 return ((void*)0);
}
