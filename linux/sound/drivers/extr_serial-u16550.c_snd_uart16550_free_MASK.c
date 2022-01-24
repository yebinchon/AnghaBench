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
struct snd_uart16550 {scalar_t__ irq; int /*<<< orphan*/  res_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_uart16550*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct snd_uart16550 *uart)
{
	if (uart->irq >= 0)
		FUNC0(uart->irq, uart);
	FUNC2(uart->res_base);
	FUNC1(uart);
	return 0;
}