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
struct nfsd4_create_session {int dummy; } ;
struct nfsd4_clid_slot {int /*<<< orphan*/  sl_cr_ses; int /*<<< orphan*/  sl_status; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfsd4_create_session*,int) ; 

__attribute__((used)) static void
FUNC1(struct nfsd4_create_session *cr_ses,
			   struct nfsd4_clid_slot *slot, __be32 nfserr)
{
	slot->sl_status = nfserr;
	FUNC0(&slot->sl_cr_ses, cr_ses, sizeof(*cr_ses));
}