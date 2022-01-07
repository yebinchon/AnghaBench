
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD_FAM14H_STATE_NUM ;
 int * current_count ;
 int free (int ) ;
 int pci_acc ;
 int pci_cleanup (int ) ;
 int * previous_count ;

__attribute__((used)) static void amd_fam14h_unregister(void)
{
 int num;
 for (num = 0; num < AMD_FAM14H_STATE_NUM - 1; num++) {
  free(previous_count[num]);
  free(current_count[num]);
 }
 pci_cleanup(pci_acc);
}
