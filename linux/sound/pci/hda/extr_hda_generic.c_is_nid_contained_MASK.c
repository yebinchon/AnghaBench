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
struct nid_path {int /*<<< orphan*/  depth; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  hda_nid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct nid_path *path, hda_nid_t nid)
{
	return FUNC0(nid, path->path, path->depth) >= 0;
}