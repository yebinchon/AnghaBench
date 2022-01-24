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
struct nfsd4_slot {int dummy; } ;
struct nfsd4_session {struct nfsd4_session** se_slots; int /*<<< orphan*/  se_bchannel; int /*<<< orphan*/  se_fchannel; } ;
struct nfsd4_channel_attrs {int maxreqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NFSD_MAX_SLOTS_PER_SESSION ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct nfsd4_session*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct nfsd4_channel_attrs*,int) ; 
 int FUNC4 (struct nfsd4_channel_attrs*) ; 

__attribute__((used)) static struct nfsd4_session *FUNC5(struct nfsd4_channel_attrs *fattrs,
					   struct nfsd4_channel_attrs *battrs)
{
	int numslots = fattrs->maxreqs;
	int slotsize = FUNC4(fattrs);
	struct nfsd4_session *new;
	int mem, i;

	FUNC0(NFSD_MAX_SLOTS_PER_SESSION * sizeof(struct nfsd4_slot *)
			+ sizeof(struct nfsd4_session) > PAGE_SIZE);
	mem = numslots * sizeof(struct nfsd4_slot *);

	new = FUNC2(sizeof(*new) + mem, GFP_KERNEL);
	if (!new)
		return NULL;
	/* allocate each struct nfsd4_slot and data cache in one piece */
	for (i = 0; i < numslots; i++) {
		new->se_slots[i] = FUNC2(slotsize, GFP_KERNEL);
		if (!new->se_slots[i])
			goto out_free;
	}

	FUNC3(&new->se_fchannel, fattrs, sizeof(struct nfsd4_channel_attrs));
	FUNC3(&new->se_bchannel, battrs, sizeof(struct nfsd4_channel_attrs));

	return new;
out_free:
	while (i--)
		FUNC1(new->se_slots[i]);
	FUNC1(new);
	return NULL;
}