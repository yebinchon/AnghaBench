
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nci_hci_gate {int pipe; int gate; int dest_host; } ;
struct nci_dev {int dummy; } ;


 int nci_hci_connect_gate (struct nci_dev*,int ,int ,int ) ;

__attribute__((used)) static int nci_hci_dev_connect_gates(struct nci_dev *ndev,
         u8 gate_count,
         struct nci_hci_gate *gates)
{
 int r;

 while (gate_count--) {
  r = nci_hci_connect_gate(ndev, gates->dest_host,
      gates->gate, gates->pipe);
  if (r < 0)
   return r;
  gates++;
 }

 return 0;
}
