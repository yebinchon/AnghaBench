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
struct nfsd4_backchannel_ctl {int /*<<< orphan*/  bc_cb_sec; int /*<<< orphan*/  bc_cb_program; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  p ; 

__attribute__((used)) static __be32 FUNC3(struct nfsd4_compoundargs *argp, struct nfsd4_backchannel_ctl *bc)
{
	DECODE_HEAD;

	FUNC0(4);
	bc->bc_cb_program = FUNC1(p++);
	FUNC2(argp, &bc->bc_cb_sec);

	DECODE_TAIL;
}