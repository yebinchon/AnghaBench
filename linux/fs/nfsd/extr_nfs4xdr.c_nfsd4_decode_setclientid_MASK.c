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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd4_setclientid {int se_callback_netid_len; int se_callback_addr_len; void* se_callback_ident; int /*<<< orphan*/  se_callback_addr_val; int /*<<< orphan*/  se_callback_netid_val; void* se_callback_prog; int /*<<< orphan*/  se_name; TYPE_1__ se_verf; } ;
struct nfsd4_compoundargs {int minorversion; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int NFS4_VERIFIER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfserr_bad_xdr ; 
 int /*<<< orphan*/  nfserr_notsupp ; 
 int /*<<< orphan*/  p ; 
 scalar_t__ status ; 

__attribute__((used)) static __be32
FUNC5(struct nfsd4_compoundargs *argp, struct nfsd4_setclientid *setclientid)
{
	DECODE_HEAD;

	if (argp->minorversion >= 1)
		return nfserr_notsupp;

	FUNC1(NFS4_VERIFIER_SIZE);
	FUNC0(setclientid->se_verf.data, NFS4_VERIFIER_SIZE);

	status = FUNC4(argp, &setclientid->se_name);
	if (status)
		return nfserr_bad_xdr;
	FUNC1(8);
	setclientid->se_callback_prog = FUNC3(p++);
	setclientid->se_callback_netid_len = FUNC3(p++);
	FUNC1(setclientid->se_callback_netid_len);
	FUNC2(setclientid->se_callback_netid_val, setclientid->se_callback_netid_len);
	FUNC1(4);
	setclientid->se_callback_addr_len = FUNC3(p++);

	FUNC1(setclientid->se_callback_addr_len);
	FUNC2(setclientid->se_callback_addr_val, setclientid->se_callback_addr_len);
	FUNC1(4);
	setclientid->se_callback_ident = FUNC3(p++);

	DECODE_TAIL;
}