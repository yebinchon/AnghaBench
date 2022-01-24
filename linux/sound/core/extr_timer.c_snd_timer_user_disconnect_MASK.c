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
struct snd_timer_user {int disconnected; int /*<<< orphan*/  qchange_sleep; } ;
struct snd_timer_instance {struct snd_timer_user* callback_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct snd_timer_instance *timeri)
{
	struct snd_timer_user *tu = timeri->callback_data;

	tu->disconnected = true;
	FUNC0(&tu->qchange_sleep);
}