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
struct snd_ice1712 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_ice1712*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct snd_ice1712 *ice)
{
	FUNC1(ice, 0x1f, 0x000); /* RESET ALL */
	FUNC2(10);

	FUNC0(ice, 0, 0, 0); /* volume L=0 R=0 */
	FUNC0(ice, 1, 0, 0); /* volume L=0 R=0 */
	FUNC0(ice, 2, 0, 0); /* volume L=0 R=0 */

	FUNC1(ice, 0x03, 0x022); /* serial mode I2S-24bits */
	FUNC1(ice, 0x0a, 0x080); /* MCLK=256fs */
	FUNC1(ice, 0x12, 0x000); /* MDP=0 */
	FUNC1(ice, 0x15, 0x000); /* MDP=0 */
	FUNC1(ice, 0x09, 0x000); /* demp=off mute=off */

	FUNC1(ice, 0x02, 0x124); /* ch-assign L=L R=R RESET */
	FUNC1(ice, 0x02, 0x120); /* ch-assign L=L R=R */
}