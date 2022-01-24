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
typedef  size_t u32 ;
struct sidtab {int /*<<< orphan*/ * rcache; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC2(struct sidtab *s, u32 index, u32 pos)
{
	while (pos > 0) {
		FUNC1(s->rcache[pos], FUNC0(s->rcache[pos - 1]));
		--pos;
	}
	FUNC1(s->rcache[0], index);
}