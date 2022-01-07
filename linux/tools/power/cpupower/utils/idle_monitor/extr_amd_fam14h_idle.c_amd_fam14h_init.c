
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {size_t id; int name; } ;
typedef TYPE_1__ cstate_t ;


 size_t NBP1 ;
 int PCI_MONITOR_ENABLE_REG ;
 int amd_fam14h_get_pci_info (TYPE_1__*,int*,int*,unsigned int) ;
 int amd_fam14h_pci_dev ;
 int dprint (char*,int ,int,int,...) ;
 int pci_read_long (int ,int) ;
 int pci_write_long (int ,int,int) ;
 scalar_t__** previous_count ;

__attribute__((used)) static int amd_fam14h_init(cstate_t *state, unsigned int cpu)
{
 int enable_bit, pci_offset, ret;
 uint32_t val;

 ret = amd_fam14h_get_pci_info(state, &pci_offset, &enable_bit, cpu);
 if (ret)
  return ret;


 if (state->id == NBP1) {
  val = pci_read_long(amd_fam14h_pci_dev, pci_offset);
  val |= 1 << enable_bit;
  val = pci_write_long(amd_fam14h_pci_dev, pci_offset, val);
  return ret;
 }


 val = pci_read_long(amd_fam14h_pci_dev, PCI_MONITOR_ENABLE_REG);
 dprint("Init %s: read at offset: 0x%x val: %u\n", state->name,
        PCI_MONITOR_ENABLE_REG, (unsigned int) val);
 val |= 1 << enable_bit;
 pci_write_long(amd_fam14h_pci_dev, PCI_MONITOR_ENABLE_REG, val);

 dprint("Init %s: offset: 0x%x enable_bit: %d - val: %u (%u)\n",
        state->name, PCI_MONITOR_ENABLE_REG, enable_bit,
        (unsigned int) val, cpu);


 pci_write_long(amd_fam14h_pci_dev, pci_offset, 0);
 previous_count[state->id][cpu] = 0;

 return 0;
}
