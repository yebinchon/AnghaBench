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
struct cache_detail {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static void
FUNC1(struct cache_detail *detail, int has_died)
{
	FUNC0("nfsd: nfsv4 idmapping failing: has idmapd %s?\n",
			has_died ? "died" : "not been started");
}