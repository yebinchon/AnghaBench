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
struct nfsd4_open_confirm {int /*<<< orphan*/  oc_seqid; int /*<<< orphan*/  oc_req_stateid; } ;
struct nfsd4_compoundargs {int minorversion; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 
 scalar_t__ nfserr_notsupp ; 
 int /*<<< orphan*/  p ; 
 scalar_t__ status ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundargs *argp, struct nfsd4_open_confirm *open_conf)
{
	DECODE_HEAD;

	if (argp->minorversion >= 1)
		return nfserr_notsupp;

	status = FUNC2(argp, &open_conf->oc_req_stateid);
	if (status)
		return status;
	FUNC0(4);
	open_conf->oc_seqid = FUNC1(p++);

	DECODE_TAIL;
}