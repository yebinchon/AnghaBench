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
struct snd_dg00x {int /*<<< orphan*/  unit; } ;
typedef  int /*<<< orphan*/  data ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 scalar_t__ DG00X_ADDR_BASE ; 
 scalar_t__ DG00X_OFFSET_ISOC_CHANNELS ; 
 scalar_t__ DG00X_OFFSET_STREAMING_SET ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct snd_dg00x *dg00x)
{
	__be32 data;

	data = FUNC0(0x00000003);
	FUNC2(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
			   DG00X_ADDR_BASE + DG00X_OFFSET_STREAMING_SET,
			   &data, sizeof(data), 0);

	// Unregister isochronous channels for both direction.
	data = 0;
	FUNC2(dg00x->unit, TCODE_WRITE_QUADLET_REQUEST,
			   DG00X_ADDR_BASE + DG00X_OFFSET_ISOC_CHANNELS,
			   &data, sizeof(data), 0);

	// Just after finishing the session, the device may lost transmitting
	// functionality for a short time.
	FUNC1(50);
}