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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint32_t ;
struct inbuf {int ptr; int base; } ;
typedef  int /*<<< orphan*/  fdt32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inbuf*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static uint32_t FUNC3(struct inbuf *inb)
{
	fdt32_t val;

	FUNC0(((inb->ptr - inb->base) % sizeof(val)) == 0);

	FUNC2(inb, &val, sizeof(val));

	return FUNC1(val);
}