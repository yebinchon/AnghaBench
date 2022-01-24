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
struct srcfile {int /*<<< orphan*/  fn; int /*<<< orphan*/  lines; scalar_t__ maplen; int /*<<< orphan*/  map; int /*<<< orphan*/  hash_nd; int /*<<< orphan*/  nd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct srcfile*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  map_total_sz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  num_srcfiles ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct srcfile *sf)
{
	FUNC2(&sf->nd);
	FUNC1(&sf->hash_nd);
	map_total_sz -= sf->maplen;
	FUNC3(sf->map, sf->maplen);
	FUNC4(&sf->lines);
	FUNC4(&sf->fn);
	FUNC0(sf);
	num_srcfiles--;
}