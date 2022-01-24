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
struct dsp_obj {int /*<<< orphan*/  prHPI_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dsp_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dsp_obj *pdo, u32 address, u32 data)
{
	if (FUNC0(pdo, address))
		return;
	FUNC1(data, pdo->prHPI_data);
}