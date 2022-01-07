
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_dev {int devfn; int subsystem_device; int subsystem_vendor; int device; int vendor; int dev; } ;
struct hpi_response {int dummy; } ;
struct hpi_pci {int * ap_mem_base; } ;
struct TYPE_5__ {scalar_t__ parameter2; scalar_t__ parameter1; int property; } ;
struct TYPE_6__ {TYPE_1__ property_set; } ;
struct TYPE_7__ {TYPE_2__ ax; } ;
struct hpi_message {int adapter_index; TYPE_3__ u; } ;
struct hpi_adapter {TYPE_4__* adapter; int p_buffer; scalar_t__ irq; } ;
struct TYPE_8__ {int index; struct hpi_pci pci; } ;


 int HOWNER_KERNEL ;
 int HPI_ADAPTER_DELETE ;
 int HPI_ADAPTER_PROPERTY_IRQ_RATE ;
 int HPI_ADAPTER_SET_PROPERTY ;
 int HPI_MAX_ADAPTER_MEM_SPACES ;
 int HPI_OBJ_ADAPTER ;
 int dev_info (int *,char*,int ,int ,int ,int ,int ,int ) ;
 int free_irq (scalar_t__,struct hpi_adapter*) ;
 int hpi_init_message_response (struct hpi_message*,struct hpi_response*,int ,int ) ;
 int hpi_send_recv_ex (struct hpi_message*,struct hpi_response*,int ) ;
 int iounmap (int ) ;
 int memset (struct hpi_adapter*,int ,int) ;
 struct hpi_adapter* pci_get_drvdata (struct pci_dev*) ;
 int vfree (int ) ;

void asihpi_adapter_remove(struct pci_dev *pci_dev)
{
 int idx;
 struct hpi_message hm;
 struct hpi_response hr;
 struct hpi_adapter *pa;
 struct hpi_pci pci;

 pa = pci_get_drvdata(pci_dev);
 pci = pa->adapter->pci;


 hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
  HPI_ADAPTER_SET_PROPERTY);
 hm.adapter_index = pa->adapter->index;
 hm.u.ax.property_set.property = HPI_ADAPTER_PROPERTY_IRQ_RATE;
 hm.u.ax.property_set.parameter1 = 0;
 hm.u.ax.property_set.parameter2 = 0;
 hpi_send_recv_ex(&hm, &hr, HOWNER_KERNEL);

 hpi_init_message_response(&hm, &hr, HPI_OBJ_ADAPTER,
  HPI_ADAPTER_DELETE);
 hm.adapter_index = pa->adapter->index;
 hpi_send_recv_ex(&hm, &hr, HOWNER_KERNEL);


 for (idx = 0; idx < HPI_MAX_ADAPTER_MEM_SPACES; ++idx)
  iounmap(pci.ap_mem_base[idx]);

 if (pa->irq)
  free_irq(pa->irq, pa);

 vfree(pa->p_buffer);

 if (1)
  dev_info(&pci_dev->dev,
    "remove %04x:%04x,%04x:%04x,%04x, HPI index %d\n",
    pci_dev->vendor, pci_dev->device,
    pci_dev->subsystem_vendor, pci_dev->subsystem_device,
    pci_dev->devfn, pa->adapter->index);

 memset(pa, 0, sizeof(*pa));
}
