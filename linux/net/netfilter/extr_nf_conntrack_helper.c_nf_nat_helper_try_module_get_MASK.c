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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct nf_conntrack_nat_helper {int /*<<< orphan*/  module; } ;
struct nf_conntrack_helper {char* nat_mod_name; } ;
typedef  int /*<<< orphan*/  mod_name ;

/* Variables and functions */
 int ENOENT ; 
 int NF_CT_HELPER_NAME_LEN ; 
 struct nf_conntrack_helper* FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_nat_helper* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(const char *name, u16 l3num, u8 protonum)
{
	struct nf_conntrack_helper *h;
	struct nf_conntrack_nat_helper *nat;
	char mod_name[NF_CT_HELPER_NAME_LEN];
	int ret = 0;

	FUNC2();
	h = FUNC0(name, l3num, protonum);
	if (!h) {
		FUNC3();
		return -ENOENT;
	}

	nat = FUNC1(h->nat_mod_name);
	if (!nat) {
		FUNC5(mod_name, sizeof(mod_name), "%s", h->nat_mod_name);
		FUNC3();
		FUNC4(mod_name);

		FUNC2();
		nat = FUNC1(mod_name);
		if (!nat) {
			FUNC3();
			return -ENOENT;
		}
	}

	if (!FUNC6(nat->module))
		ret = -ENOENT;

	FUNC3();
	return ret;
}