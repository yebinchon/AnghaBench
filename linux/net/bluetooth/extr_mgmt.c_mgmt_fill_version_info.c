
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_rp_read_version {int revision; int version; } ;


 int MGMT_REVISION ;
 int MGMT_VERSION ;
 int cpu_to_le16 (int ) ;

void mgmt_fill_version_info(void *ver)
{
 struct mgmt_rp_read_version *rp = ver;

 rp->version = MGMT_VERSION;
 rp->revision = cpu_to_le16(MGMT_REVISION);
}
