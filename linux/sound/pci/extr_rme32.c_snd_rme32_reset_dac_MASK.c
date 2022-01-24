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
struct rme32 {int wcreg; scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ RME32_IO_CONTROL_REGISTER ; 
 int RME32_WCR_PD ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct rme32 *rme32)
{
        FUNC0(rme32->wcreg | RME32_WCR_PD,
               rme32->iobase + RME32_IO_CONTROL_REGISTER);
        FUNC0(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
}