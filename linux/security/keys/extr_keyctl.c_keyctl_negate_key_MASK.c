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
typedef  int /*<<< orphan*/  key_serial_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOKEY ; 
 long FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

long FUNC1(key_serial_t id, unsigned timeout, key_serial_t ringid)
{
	return FUNC0(id, timeout, ENOKEY, ringid);
}