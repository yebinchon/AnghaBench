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
struct nfsd4_copy {int /*<<< orphan*/  cp_synchronous; int /*<<< orphan*/  cp_count; int /*<<< orphan*/  cp_dst_pos; int /*<<< orphan*/  cp_src_pos; int /*<<< orphan*/  cp_dst_stateid; int /*<<< orphan*/  cp_src_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 
 scalar_t__ status ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundargs *argp, struct nfsd4_copy *copy)
{
	DECODE_HEAD;

	status = FUNC2(argp, &copy->cp_src_stateid);
	if (status)
		return status;
	status = FUNC2(argp, &copy->cp_dst_stateid);
	if (status)
		return status;

	FUNC0(8 + 8 + 8 + 4 + 4 + 4);
	p = FUNC3(p, &copy->cp_src_pos);
	p = FUNC3(p, &copy->cp_dst_pos);
	p = FUNC3(p, &copy->cp_count);
	p++; /* ca_consecutive: we always do consecutive copies */
	copy->cp_synchronous = FUNC1(p++);
	/* tmp = be32_to_cpup(p); Source server list not supported */

	DECODE_TAIL;
}