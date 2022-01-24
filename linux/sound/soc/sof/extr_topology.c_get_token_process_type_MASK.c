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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct snd_soc_tplg_vendor_string_elem {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *elem, void *object, u32 offset,
				  u32 size)
{
	struct snd_soc_tplg_vendor_string_elem *velem = elem;
	u32 *val = (u32 *)((u8 *)object + offset);

	*val = FUNC0(velem->string);
	return 0;
}