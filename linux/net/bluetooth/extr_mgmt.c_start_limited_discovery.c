
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct hci_dev {int dummy; } ;


 int MGMT_OP_START_LIMITED_DISCOVERY ;
 int start_discovery_internal (struct sock*,struct hci_dev*,int ,void*,int ) ;

__attribute__((used)) static int start_limited_discovery(struct sock *sk, struct hci_dev *hdev,
       void *data, u16 len)
{
 return start_discovery_internal(sk, hdev,
     MGMT_OP_START_LIMITED_DISCOVERY,
     data, len);
}
