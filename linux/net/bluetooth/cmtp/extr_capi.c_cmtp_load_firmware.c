
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {int dummy; } ;
typedef int capiloaddata ;


 int BT_DBG (char*,struct capi_ctr*,int *) ;

__attribute__((used)) static int cmtp_load_firmware(struct capi_ctr *ctrl, capiloaddata *data)
{
 BT_DBG("ctrl %p data %p", ctrl, data);

 return 0;
}
