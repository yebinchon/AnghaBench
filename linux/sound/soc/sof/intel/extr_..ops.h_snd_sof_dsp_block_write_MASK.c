#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_sof_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* block_write ) (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct snd_sof_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_sof_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static inline void FUNC2(struct snd_sof_dev *sdev, u32 bar,
					   u32 offset, void *src, size_t bytes)
{
	FUNC0(sdev)->block_write(sdev, bar, offset, src, bytes);
}