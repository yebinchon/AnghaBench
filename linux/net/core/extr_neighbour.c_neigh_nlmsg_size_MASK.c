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
struct ndmsg {int dummy; } ;
struct nda_cacheinfo {int dummy; } ;

/* Variables and functions */
 int MAX_ADDR_LEN ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(sizeof(struct ndmsg))
	       + FUNC1(MAX_ADDR_LEN) /* NDA_DST */
	       + FUNC1(MAX_ADDR_LEN) /* NDA_LLADDR */
	       + FUNC1(sizeof(struct nda_cacheinfo))
	       + FUNC1(4)  /* NDA_PROBES */
	       + FUNC1(1); /* NDA_PROTOCOL */
}