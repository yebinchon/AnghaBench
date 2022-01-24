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
struct timer_list {int dummy; } ;
struct snd_uart16550 {int /*<<< orphan*/  open_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  buffer_timer ; 
 struct snd_uart16550* FUNC0 (struct snd_uart16550*,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	unsigned long flags;
	struct snd_uart16550 *uart;

	uart = FUNC0(uart, t, buffer_timer);
	FUNC3(&uart->open_lock, flags);
	FUNC1(uart);
	FUNC2(uart);
	FUNC4(&uart->open_lock, flags);
}