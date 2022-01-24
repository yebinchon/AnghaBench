#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char sep; int /*<<< orphan*/  out; scalar_t__ pretty; } ;
typedef  TYPE_1__ json_writer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 

void FUNC4(json_writer_t *self, const char *name)
{
	FUNC1(self);
	FUNC0(self);
	self->sep = '\0';
	FUNC2(self, name);
	FUNC3(':', self->out);
	if (self->pretty)
		FUNC3(' ', self->out);
}