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
struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_clone {int /*<<< orphan*/  cl_count; int /*<<< orphan*/  cl_dst_pos; int /*<<< orphan*/  cl_src_pos; int /*<<< orphan*/  cl_dst_stateid; int /*<<< orphan*/  cl_src_stateid; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 
 scalar_t__ status ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundargs *argp, struct nfsd4_clone *clone)
{
	DECODE_HEAD;

	status = FUNC1(argp, &clone->cl_src_stateid);
	if (status)
		return status;
	status = FUNC1(argp, &clone->cl_dst_stateid);
	if (status)
		return status;

	FUNC0(8 + 8 + 8);
	p = FUNC2(p, &clone->cl_src_pos);
	p = FUNC2(p, &clone->cl_dst_pos);
	p = FUNC2(p, &clone->cl_count);
	DECODE_TAIL;
}