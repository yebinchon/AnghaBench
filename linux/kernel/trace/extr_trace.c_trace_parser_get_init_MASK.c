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
struct trace_parser {int size; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_parser*,int /*<<< orphan*/ ,int) ; 

int FUNC2(struct trace_parser *parser, int size)
{
	FUNC1(parser, 0, sizeof(*parser));

	parser->buffer = FUNC0(size, GFP_KERNEL);
	if (!parser->buffer)
		return 1;

	parser->size = size;
	return 0;
}