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
struct TYPE_3__ {int /*<<< orphan*/  out; } ;
typedef  TYPE_1__ json_writer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(json_writer_t *self, const char *str)
{
	FUNC1('"', self->out);
	for (; *str; ++str)
		switch (*str) {
		case '\t':
			FUNC0("\\t", self->out);
			break;
		case '\n':
			FUNC0("\\n", self->out);
			break;
		case '\r':
			FUNC0("\\r", self->out);
			break;
		case '\f':
			FUNC0("\\f", self->out);
			break;
		case '\b':
			FUNC0("\\b", self->out);
			break;
		case '\\':
			FUNC0("\\n", self->out);
			break;
		case '"':
			FUNC0("\\\"", self->out);
			break;
		case '\'':
			FUNC0("\\\'", self->out);
			break;
		default:
			FUNC1(*str, self->out);
		}
	FUNC1('"', self->out);
}