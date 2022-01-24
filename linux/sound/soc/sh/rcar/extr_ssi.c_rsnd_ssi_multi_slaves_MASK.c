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
typedef  int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
typedef  enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int RSND_MOD_SSIM1 ; 
 int RSND_MOD_SSIM2 ; 
 int RSND_MOD_SSIM3 ; 
 struct rsnd_mod* FUNC1 (struct rsnd_dai_stream*,int) ; 
 int FUNC2 (struct rsnd_mod*) ; 

__attribute__((used)) static u32 FUNC3(struct rsnd_dai_stream *io)
{
	struct rsnd_mod *mod;
	enum rsnd_mod_type types[] = {
		RSND_MOD_SSIM1,
		RSND_MOD_SSIM2,
		RSND_MOD_SSIM3,
	};
	int i, mask;

	mask = 0;
	for (i = 0; i < FUNC0(types); i++) {
		mod = FUNC1(io, types[i]);
		if (!mod)
			continue;

		mask |= 1 << FUNC2(mod);
	}

	return mask;
}