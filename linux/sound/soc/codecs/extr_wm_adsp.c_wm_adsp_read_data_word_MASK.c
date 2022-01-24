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
struct wm_adsp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wm_adsp*,int,unsigned int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(struct wm_adsp *dsp, int mem_type,
					 unsigned int mem_addr, u32 *data)
{
	return FUNC0(dsp, mem_type, mem_addr, 1, data);
}