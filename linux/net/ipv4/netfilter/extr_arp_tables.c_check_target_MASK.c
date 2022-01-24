#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xt_tgchk_param {char const* table; int /*<<< orphan*/  family; int /*<<< orphan*/  hook_mask; int /*<<< orphan*/  targinfo; int /*<<< orphan*/  target; struct arpt_entry* entryinfo; } ;
struct TYPE_3__ {int /*<<< orphan*/  target; } ;
struct TYPE_4__ {scalar_t__ target_size; TYPE_1__ kernel; } ;
struct xt_entry_target {TYPE_2__ u; int /*<<< orphan*/  data; } ;
struct arpt_entry {int /*<<< orphan*/  comefrom; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFPROTO_ARP ; 
 struct xt_entry_target* FUNC0 (struct arpt_entry*) ; 
 int FUNC1 (struct xt_tgchk_param*,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct arpt_entry *e, const char *name)
{
	struct xt_entry_target *t = FUNC0(e);
	struct xt_tgchk_param par = {
		.table     = name,
		.entryinfo = e,
		.target    = t->u.kernel.target,
		.targinfo  = t->data,
		.hook_mask = e->comefrom,
		.family    = NFPROTO_ARP,
	};

	return FUNC1(&par, t->u.target_size - sizeof(*t), 0, false);
}