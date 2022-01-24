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
struct extended_attribute {int namelen; } ;
struct buffer_head {int dummy; } ;
struct anode {int /*<<< orphan*/  btree; } ;
typedef  int /*<<< orphan*/  secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct extended_attribute*) ; 
 scalar_t__ FUNC2 (struct extended_attribute*) ; 
 int /*<<< orphan*/  FUNC3 (struct extended_attribute*) ; 
 int /*<<< orphan*/  FUNC4 (struct extended_attribute*) ; 
 int FUNC5 (struct extended_attribute*) ; 
 scalar_t__ FUNC6 (struct super_block*,int /*<<< orphan*/ ,int,unsigned int,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct anode* FUNC10 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,int /*<<< orphan*/ *) ; 

void FUNC12(struct super_block *s, secno a, int ano, unsigned len)
{
	unsigned pos = 0;
	while (pos < len) {
		char ex[4 + 255 + 1 + 8];
		struct extended_attribute *ea = (struct extended_attribute *)ex;
		if (pos + 4 > len) {
			FUNC8(s, "EAs don't end correctly, %s %08x, len %08x",
				ano ? "anode" : "sectors", a, len);
			return;
		}
		if (FUNC6(s, a, ano, pos, 4, ex)) return;
		if (FUNC2(ea)) {
			if (FUNC5(ea) != 8) {
				FUNC8(s, "ea_indirect(ea) set while ea->valuelen!=8, %s %08x, pos %08x",
					ano ? "anode" : "sectors", a, pos);
				return;
			}
			if (FUNC6(s, a, ano, pos + 4, ea->namelen + 9, ex+4))
				return;
			FUNC7(s, FUNC4(ea), FUNC1(ea), FUNC3(ea));
		}
		pos += ea->namelen + FUNC5(ea) + 5;
	}
	if (!ano) FUNC9(s, a, (len+511) >> 9);
	else {
		struct buffer_head *bh;
		struct anode *anode;
		if ((anode = FUNC10(s, a, &bh))) {
			FUNC11(s, &anode->btree);
			FUNC0(bh);
			FUNC9(s, a, 1);
		}
	}
}