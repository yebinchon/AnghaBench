
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct volStructDesc {int structType; int stdIdent; } ;


 int VSD_STD_ID_BEA01 ;
 int VSD_STD_ID_BOOT2 ;
 int VSD_STD_ID_CD001 ;
 int VSD_STD_ID_CDW02 ;
 int VSD_STD_ID_LEN ;
 int VSD_STD_ID_NSR02 ;
 int VSD_STD_ID_NSR03 ;
 int memcmp (int ,int ,int ) ;
 int udf_debug (char*,...) ;

__attribute__((used)) static int identify_vsd(const struct volStructDesc *vsd)
{
 int ret = 0;

 if (!memcmp(vsd->stdIdent, VSD_STD_ID_CD001, VSD_STD_ID_LEN)) {
  switch (vsd->structType) {
  case 0:
   udf_debug("ISO9660 Boot Record found\n");
   break;
  case 1:
   udf_debug("ISO9660 Primary Volume Descriptor found\n");
   break;
  case 2:
   udf_debug("ISO9660 Supplementary Volume Descriptor found\n");
   break;
  case 3:
   udf_debug("ISO9660 Volume Partition Descriptor found\n");
   break;
  case 255:
   udf_debug("ISO9660 Volume Descriptor Set Terminator found\n");
   break;
  default:
   udf_debug("ISO9660 VRS (%u) found\n", vsd->structType);
   break;
  }
 } else if (!memcmp(vsd->stdIdent, VSD_STD_ID_BEA01, VSD_STD_ID_LEN))
  ;
 else if (!memcmp(vsd->stdIdent, VSD_STD_ID_NSR02, VSD_STD_ID_LEN))
  ret = 1;
 else if (!memcmp(vsd->stdIdent, VSD_STD_ID_NSR03, VSD_STD_ID_LEN))
  ret = 1;
 else if (!memcmp(vsd->stdIdent, VSD_STD_ID_BOOT2, VSD_STD_ID_LEN))
  ;
 else if (!memcmp(vsd->stdIdent, VSD_STD_ID_CDW02, VSD_STD_ID_LEN))
  ;
 else {

  ret = -1;
 }

 return ret;
}
