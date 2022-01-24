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
struct nfsd4_fallocate {int /*<<< orphan*/  falloc_length; int /*<<< orphan*/  falloc_offset; int /*<<< orphan*/  falloc_stateid; } ;
struct nfsd4_compoundargs {int dummy; } ;
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
FUNC3(struct nfsd4_compoundargs *argp,
		       struct nfsd4_fallocate *fallocate)
{
	DECODE_HEAD;

	status = FUNC1(argp, &fallocate->falloc_stateid);
	if (status)
		return status;

	FUNC0(16);
	p = FUNC2(p, &fallocate->falloc_offset);
	FUNC2(p, &fallocate->falloc_length);

	DECODE_TAIL;
}