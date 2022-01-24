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
struct hws_basic_entry {int def; unsigned long long prim_asn; unsigned long long CL; unsigned long long I; unsigned long long AS; unsigned long long P; unsigned long long W; unsigned long long T; unsigned long long U; unsigned long long ia; unsigned long long gpp; unsigned long long hpp; } ;
typedef  int /*<<< orphan*/  local ;

/* Variables and functions */
 int FUNC0 (int) ; 
 void* FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,size_t,int,unsigned long long,char,char,char,char,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (struct hws_basic_entry*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static bool FUNC5(const char *color, size_t pos,
				   struct hws_basic_entry *basicp)
{
	struct hws_basic_entry *basic = basicp;
#if __BYTE_ORDER == __LITTLE_ENDIAN
	struct hws_basic_entry local;
	unsigned long long word = FUNC1(*(unsigned long long *)basicp);

	FUNC3(&local, 0, sizeof(local));
	local.def = FUNC0(basicp->def);
	local.prim_asn = word & 0xffff;
	local.CL = word >> 30 & 0x3;
	local.I = word >> 32 & 0x1;
	local.AS = word >> 33 & 0x3;
	local.P = word >> 35 & 0x1;
	local.W = word >> 36 & 0x1;
	local.T = word >> 37 & 0x1;
	local.U = word >> 40 & 0xf;
	local.ia = FUNC1(basicp->ia);
	local.gpp = FUNC1(basicp->gpp);
	local.hpp = FUNC1(basicp->hpp);
	basic = &local;
#endif
	if (basic->def != 1) {
		FUNC4("Invalid AUX trace basic entry [%#08zx]\n", pos);
		return false;
	}
	FUNC2(stdout, color, "    [%#08zx] Basic   Def:%04x Inst:%#04x"
		      " %c%c%c%c AS:%d ASN:%#04x IA:%#018llx\n"
		      "\t\tCL:%d HPP:%#018llx GPP:%#018llx\n",
		      pos, basic->def, basic->U,
		      basic->T ? 'T' : ' ',
		      basic->W ? 'W' : ' ',
		      basic->P ? 'P' : ' ',
		      basic->I ? 'I' : ' ',
		      basic->AS, basic->prim_asn, basic->ia, basic->CL,
		      basic->hpp, basic->gpp);
	return true;
}