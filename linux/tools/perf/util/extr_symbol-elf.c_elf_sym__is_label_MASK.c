#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ st_name; scalar_t__ st_shndx; } ;
typedef  TYPE_1__ GElf_Sym ;

/* Variables and functions */
 scalar_t__ SHN_ABS ; 
 scalar_t__ SHN_UNDEF ; 
 scalar_t__ STT_NOTYPE ; 
 scalar_t__ STV_HIDDEN ; 
 scalar_t__ STV_INTERNAL ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 

__attribute__((used)) static inline int FUNC2(const GElf_Sym *sym)
{
	return FUNC0(sym) == STT_NOTYPE &&
		sym->st_name != 0 &&
		sym->st_shndx != SHN_UNDEF &&
		sym->st_shndx != SHN_ABS &&
		FUNC1(sym) != STV_HIDDEN &&
		FUNC1(sym) != STV_INTERNAL;
}