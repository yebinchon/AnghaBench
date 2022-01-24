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
struct nfsd4_channel_attrs {int maxreqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  nfsd_drc_lock ; 
 int nfsd_drc_mem_used ; 
 int FUNC0 (struct nfsd4_channel_attrs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfsd4_channel_attrs *ca)
{
	int slotsize = FUNC0(ca);

	FUNC1(&nfsd_drc_lock);
	nfsd_drc_mem_used -= slotsize * ca->maxreqs;
	FUNC2(&nfsd_drc_lock);
}