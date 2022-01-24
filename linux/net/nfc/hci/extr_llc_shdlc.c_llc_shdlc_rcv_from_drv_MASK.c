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
struct sk_buff {int dummy; } ;
struct nfc_llc {int dummy; } ;
struct llc_shdlc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llc_shdlc*,struct sk_buff*) ; 
 struct llc_shdlc* FUNC1 (struct nfc_llc*) ; 

__attribute__((used)) static void FUNC2(struct nfc_llc *llc, struct sk_buff *skb)
{
	struct llc_shdlc *shdlc = FUNC1(llc);

	FUNC0(shdlc, skb);
}