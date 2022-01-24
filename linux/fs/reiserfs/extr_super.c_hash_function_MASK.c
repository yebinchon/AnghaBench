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
struct super_block {int dummy; } ;
typedef  int /*<<< orphan*/ * hashf_t ;

/* Variables and functions */
#define  R5_HASH 130 
#define  TEA_HASH 129 
#define  YURA_HASH 128 
 int /*<<< orphan*/ * keyed_hash ; 
 int /*<<< orphan*/ * r5_hash ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,char*) ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/ * yura_hash ; 

__attribute__((used)) static hashf_t FUNC2(struct super_block *s)
{
	switch (FUNC1(s)) {
	case TEA_HASH:
		FUNC0(s, "Using tea hash to sort names\n");
		return keyed_hash;
	case YURA_HASH:
		FUNC0(s, "Using rupasov hash to sort names\n");
		return yura_hash;
	case R5_HASH:
		FUNC0(s, "Using r5 hash to sort names\n");
		return r5_hash;
	}
	return NULL;
}