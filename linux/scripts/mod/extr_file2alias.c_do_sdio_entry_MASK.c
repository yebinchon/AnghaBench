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
typedef  scalar_t__ __u8 ;
typedef  scalar_t__ __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SDIO_ANY_ID ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ class ; 
 scalar_t__ device ; 
 int /*<<< orphan*/  sdio_device_id ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ vendor ; 

__attribute__((used)) static int FUNC4(const char *filename,
			void *symval, char *alias)
{
	FUNC1(symval, sdio_device_id, class);
	FUNC1(symval, sdio_device_id, vendor);
	FUNC1(symval, sdio_device_id, device);

	FUNC3(alias, "sdio:");
	FUNC0(alias, "c", class != (__u8)SDIO_ANY_ID, class);
	FUNC0(alias, "v", vendor != (__u16)SDIO_ANY_ID, vendor);
	FUNC0(alias, "d", device != (__u16)SDIO_ANY_ID, device);
	FUNC2(alias);
	return 1;
}