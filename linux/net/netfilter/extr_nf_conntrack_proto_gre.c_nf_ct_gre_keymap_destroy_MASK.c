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
struct nf_ct_pptp_master {struct nf_conn** keymap; } ;
struct nf_conn {int /*<<< orphan*/  list; } ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;

/* Variables and functions */
 int IP_CT_DIR_MAX ; 
 int IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  keymap_lock ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nf_ct_pptp_master* FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct nf_conn*) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct nf_conn *ct)
{
	struct nf_ct_pptp_master *ct_pptp_info = FUNC2(ct);
	enum ip_conntrack_dir dir;

	FUNC3("entering for ct %p\n", ct);

	FUNC4(&keymap_lock);
	for (dir = IP_CT_DIR_ORIGINAL; dir < IP_CT_DIR_MAX; dir++) {
		if (ct_pptp_info->keymap[dir]) {
			FUNC3("removing %p from list\n",
				 ct_pptp_info->keymap[dir]);
			FUNC1(&ct_pptp_info->keymap[dir]->list);
			FUNC0(ct_pptp_info->keymap[dir], rcu);
			ct_pptp_info->keymap[dir] = NULL;
		}
	}
	FUNC5(&keymap_lock);
}