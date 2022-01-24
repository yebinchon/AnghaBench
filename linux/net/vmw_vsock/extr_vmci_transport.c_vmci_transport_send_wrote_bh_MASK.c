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
struct sockaddr_vm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  VMCI_TRANSPORT_PACKET_TYPE_WROTE ; 
 int FUNC0 (struct sockaddr_vm*,struct sockaddr_vm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(struct sockaddr_vm *dst,
				 struct sockaddr_vm *src)
{
	return FUNC0(
					dst, src,
					VMCI_TRANSPORT_PACKET_TYPE_WROTE, 0,
					0, NULL, VMCI_INVALID_HANDLE);
}