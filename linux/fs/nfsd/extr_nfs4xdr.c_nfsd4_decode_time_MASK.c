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
typedef  scalar_t__ u32 ;
struct timespec64 {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  p ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundargs *argp, struct timespec64 *tv)
{
	DECODE_HEAD;

	FUNC0(12);
	p = FUNC2(p, &tv->tv_sec);
	tv->tv_nsec = FUNC1(p++);
	if (tv->tv_nsec >= (u32)1000000000)
		return nfserr_inval;

	DECODE_TAIL;
}