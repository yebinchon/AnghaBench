#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mdev_state {int* vconfig; int* bar_mask; int memsize; } ;
typedef  int MBOCHS_MMIO_BAR_SIZE ;

/* Variables and functions */
 size_t PCI_BASE_ADDRESS_0 ; 
 size_t PCI_BASE_ADDRESS_2 ; 
 int PCI_BASE_ADDRESS_MEM_PREFETCH ; 
 int PCI_BASE_ADDRESS_MEM_TYPE_32 ; 
 int PCI_BASE_ADDRESS_SPACE_MEMORY ; 
 size_t PCI_CLASS_DEVICE ; 
 int PCI_CLASS_DISPLAY_OTHER ; 
 size_t PCI_CLASS_REVISION ; 
 size_t PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 size_t PCI_DEVICE_ID ; 
 int PCI_SUBDEVICE_ID_QEMU ; 
 size_t PCI_SUBSYSTEM_ID ; 
 size_t PCI_SUBSYSTEM_VENDOR_ID ; 
 int PCI_SUBVENDOR_ID_REDHAT_QUMRANET ; 
 size_t PCI_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct mdev_state *mdev_state)
{
	FUNC0((u16 *) &mdev_state->vconfig[PCI_VENDOR_ID],
		   0x1234);
	FUNC0((u16 *) &mdev_state->vconfig[PCI_DEVICE_ID],
		   0x1111);
	FUNC0((u16 *) &mdev_state->vconfig[PCI_SUBSYSTEM_VENDOR_ID],
		   PCI_SUBVENDOR_ID_REDHAT_QUMRANET);
	FUNC0((u16 *) &mdev_state->vconfig[PCI_SUBSYSTEM_ID],
		   PCI_SUBDEVICE_ID_QEMU);

	FUNC0((u16 *) &mdev_state->vconfig[PCI_COMMAND],
		   PCI_COMMAND_IO | PCI_COMMAND_MEMORY);
	FUNC0((u16 *) &mdev_state->vconfig[PCI_CLASS_DEVICE],
		   PCI_CLASS_DISPLAY_OTHER);
	mdev_state->vconfig[PCI_CLASS_REVISION] =  0x01;

	FUNC1((u32 *) &mdev_state->vconfig[PCI_BASE_ADDRESS_0],
		   PCI_BASE_ADDRESS_SPACE_MEMORY |
		   PCI_BASE_ADDRESS_MEM_TYPE_32	 |
		   PCI_BASE_ADDRESS_MEM_PREFETCH);
	mdev_state->bar_mask[0] = ~(mdev_state->memsize) + 1;

	FUNC1((u32 *) &mdev_state->vconfig[PCI_BASE_ADDRESS_2],
		   PCI_BASE_ADDRESS_SPACE_MEMORY |
		   PCI_BASE_ADDRESS_MEM_TYPE_32);
	mdev_state->bar_mask[2] = ~(MBOCHS_MMIO_BAR_SIZE) + 1;
}