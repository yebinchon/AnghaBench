#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char sep; int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ json_writer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(json_writer_t *self)
{
	if (self->sep != '\0')
		FUNC0(self->sep, self->out);
	self->sep = ',';
}