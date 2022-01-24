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
struct wm8994_priv {scalar_t__* hpf2_ena; scalar_t__* hpf1_ena; scalar_t__* vss_ena; scalar_t__* mbc_ena; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 

__attribute__((used)) static int FUNC1(struct wm8994_priv *wm8994, int aif)
{
	int i;

	for (i = 0; i < FUNC0(wm8994->mbc_ena); i++) {
		if (i == aif)
			continue;
		if (wm8994->mbc_ena[i] || wm8994->vss_ena[i] ||
		    wm8994->hpf1_ena[i] || wm8994->hpf2_ena[i])
			return 1;
	}

	return 0;
}