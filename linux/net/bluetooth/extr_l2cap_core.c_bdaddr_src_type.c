
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_conn {int src_type; int type; } ;


 int bdaddr_type (int ,int ) ;

__attribute__((used)) static inline u8 bdaddr_src_type(struct hci_conn *hcon)
{
 return bdaddr_type(hcon->type, hcon->src_type);
}
