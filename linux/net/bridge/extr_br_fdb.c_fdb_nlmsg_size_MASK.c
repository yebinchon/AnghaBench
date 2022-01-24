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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ndmsg {int dummy; } ;
struct nda_cacheinfo {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(sizeof(struct ndmsg))
		+ FUNC1(ETH_ALEN) /* NDA_LLADDR */
		+ FUNC1(sizeof(u32)) /* NDA_MASTER */
		+ FUNC1(sizeof(u16)) /* NDA_VLAN */
		+ FUNC1(sizeof(struct nda_cacheinfo));
}