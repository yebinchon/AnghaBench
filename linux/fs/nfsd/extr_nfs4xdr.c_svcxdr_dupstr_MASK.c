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
typedef  int u32 ;
struct nfsd4_compoundargs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*,int) ; 
 char* FUNC1 (struct nfsd4_compoundargs*,int) ; 

__attribute__((used)) static char *
FUNC2(struct nfsd4_compoundargs *argp, void *buf, u32 len)
{
	char *p = FUNC1(argp, len + 1);

	if (!p)
		return NULL;
	FUNC0(p, buf, len);
	p[len] = '\0';
	return p;
}