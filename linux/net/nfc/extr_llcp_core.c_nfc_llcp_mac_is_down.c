
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_llcp_local {int remote_lto; int remote_miu; } ;
struct nfc_dev {int dummy; } ;


 int LLCP_DEFAULT_LTO ;
 int LLCP_DEFAULT_MIU ;
 struct nfc_llcp_local* nfc_llcp_find_local (struct nfc_dev*) ;
 int nfc_llcp_socket_release (struct nfc_llcp_local*,int,int ) ;

void nfc_llcp_mac_is_down(struct nfc_dev *dev)
{
 struct nfc_llcp_local *local;

 local = nfc_llcp_find_local(dev);
 if (local == ((void*)0))
  return;

 local->remote_miu = LLCP_DEFAULT_MIU;
 local->remote_lto = LLCP_DEFAULT_LTO;


 nfc_llcp_socket_release(local, 1, 0);
}
