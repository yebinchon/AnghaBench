
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;


 int GFP_KERNEL ;
 char* kstrndup (int ,int ,int ) ;

__attribute__((used)) static char *gssp_stringify(struct xdr_netobj *netobj)
{
 return kstrndup(netobj->data, netobj->len, GFP_KERNEL);
}
