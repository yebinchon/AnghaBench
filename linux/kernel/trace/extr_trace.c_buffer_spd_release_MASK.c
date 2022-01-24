#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct splice_pipe_desc {TYPE_1__* partial; } ;
struct buffer_ref {int dummy; } ;
struct TYPE_2__ {scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_ref*) ; 

__attribute__((used)) static void FUNC1(struct splice_pipe_desc *spd, unsigned int i)
{
	struct buffer_ref *ref =
		(struct buffer_ref *)spd->partial[i].private;

	FUNC0(ref);
	spd->partial[i].private = 0;
}