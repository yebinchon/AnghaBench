
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iucv_sock {int src_name; } ;
struct TYPE_2__ {int autobind_name; } ;


 scalar_t__ __iucv_get_sock_by_name (char*) ;
 int atomic_inc_return (int *) ;
 TYPE_1__ iucv_sk_list ;
 int memcpy (int ,char*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void __iucv_auto_name(struct iucv_sock *iucv)
{
 char name[12];

 sprintf(name, "%08x", atomic_inc_return(&iucv_sk_list.autobind_name));
 while (__iucv_get_sock_by_name(name)) {
  sprintf(name, "%08x",
   atomic_inc_return(&iucv_sk_list.autobind_name));
 }
 memcpy(iucv->src_name, name, 8);
}
