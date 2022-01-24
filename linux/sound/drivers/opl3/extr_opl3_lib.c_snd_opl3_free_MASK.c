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
struct snd_opl3 {int /*<<< orphan*/  res_r_port; int /*<<< orphan*/  res_l_port; int /*<<< orphan*/  (* private_free ) (struct snd_opl3*) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_opl3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl3*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_opl3*) ; 

__attribute__((used)) static int FUNC5(struct snd_opl3 *opl3)
{
	if (FUNC2(!opl3))
		return -ENXIO;
	if (opl3->private_free)
		opl3->private_free(opl3);
	FUNC3(opl3);
	FUNC1(opl3->res_l_port);
	FUNC1(opl3->res_r_port);
	FUNC0(opl3);
	return 0;
}