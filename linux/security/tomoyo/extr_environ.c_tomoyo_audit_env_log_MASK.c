#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* name; } ;
struct TYPE_6__ {TYPE_2__ environ; } ;
struct tomoyo_request_info {TYPE_3__ param; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct tomoyo_request_info*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct tomoyo_request_info *r)
{
	return FUNC0(r, "misc env %s\n",
				 r->param.environ.name->name);
}