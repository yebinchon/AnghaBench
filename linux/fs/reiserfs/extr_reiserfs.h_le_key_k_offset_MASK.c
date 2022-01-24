#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  k_offset; } ;
struct TYPE_4__ {int /*<<< orphan*/  k_offset_v2; TYPE_1__ k_offset_v1; } ;
struct reiserfs_key {TYPE_2__ u; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int KEY_FORMAT_3_5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline loff_t FUNC2(int version,
				     const struct reiserfs_key *key)
{
	return (version == KEY_FORMAT_3_5) ?
	    FUNC0(key->u.k_offset_v1.k_offset) :
	    FUNC1(&(key->u.k_offset_v2));
}