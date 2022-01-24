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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct neighbour {int dummy; } ;
struct clip_vcc {struct atmarp_entry* entry; } ;
struct atmarp_entry {int dummy; } ;
struct atm_vcc {scalar_t__ push; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 struct clip_vcc* FUNC0 (struct atm_vcc*) ; 
 int EBADF ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct rtable*) ; 
 int NEIGH_UPDATE_F_ADMIN ; 
 int NEIGH_UPDATE_F_OVERRIDE ; 
 int /*<<< orphan*/  NUD_PERMANENT ; 
 int FUNC2 (struct rtable*) ; 
 struct neighbour* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  arp_tbl ; 
 scalar_t__ clip_push ; 
 int /*<<< orphan*/  init_net ; 
 struct rtable* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtable*) ; 
 int /*<<< orphan*/  FUNC6 (struct clip_vcc*,struct atmarp_entry*) ; 
 int /*<<< orphan*/  llc_oui ; 
 int /*<<< orphan*/  FUNC7 (struct neighbour*) ; 
 int FUNC8 (struct neighbour*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct atmarp_entry* FUNC9 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct clip_vcc*) ; 

__attribute__((used)) static int FUNC14(struct atm_vcc *vcc, __be32 ip)
{
	struct neighbour *neigh;
	struct atmarp_entry *entry;
	int error;
	struct clip_vcc *clip_vcc;
	struct rtable *rt;

	if (vcc->push != clip_push) {
		FUNC12("non-CLIP VCC\n");
		return -EBADF;
	}
	clip_vcc = FUNC0(vcc);
	if (!ip) {
		if (!clip_vcc->entry) {
			FUNC11("hiding hidden ATMARP entry\n");
			return 0;
		}
		FUNC10("remove\n");
		FUNC13(clip_vcc);
		return 0;
	}
	rt = FUNC4(&init_net, ip, 0, 1, 0);
	if (FUNC1(rt))
		return FUNC2(rt);
	neigh = FUNC3(&arp_tbl, &ip, rt->dst.dev, 1);
	FUNC5(rt);
	if (!neigh)
		return -ENOMEM;
	entry = FUNC9(neigh);
	if (entry != clip_vcc->entry) {
		if (!clip_vcc->entry)
			FUNC10("add\n");
		else {
			FUNC10("update\n");
			FUNC13(clip_vcc);
		}
		FUNC6(clip_vcc, entry);
	}
	error = FUNC8(neigh, llc_oui, NUD_PERMANENT,
			     NEIGH_UPDATE_F_OVERRIDE | NEIGH_UPDATE_F_ADMIN, 0);
	FUNC7(neigh);
	return error;
}