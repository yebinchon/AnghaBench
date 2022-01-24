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
struct nfsd4_destroy_clientid {int /*<<< orphan*/  clientid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static __be32 FUNC2(struct nfsd4_compoundargs *argp, struct nfsd4_destroy_clientid *dc)
{
	DECODE_HEAD;

	FUNC1(8);
	FUNC0(&dc->clientid, 8);

	DECODE_TAIL;
}