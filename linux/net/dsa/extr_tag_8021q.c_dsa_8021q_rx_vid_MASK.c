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
typedef  int u16 ;
struct dsa_switch {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int DSA_8021Q_DIR_RX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

u16 FUNC2(struct dsa_switch *ds, int port)
{
	return DSA_8021Q_DIR_RX | FUNC1(ds->index) |
	       FUNC0(port);
}