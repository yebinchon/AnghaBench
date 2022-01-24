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
struct test_data {int /*<<< orphan*/  len; int /*<<< orphan*/  bytes; int /*<<< orphan*/  packet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct test_data *d)
{
	FUNC1("Decoding failed!\n");
	FUNC1("Decoding:  ");
	FUNC0(&d->packet, d->bytes, d->len);
}