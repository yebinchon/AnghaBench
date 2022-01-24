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
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct rsnd_dai {int dummy; } ;
typedef  enum rsnd_mod_type { ____Placeholder_rsnd_mod_type } rsnd_mod_type ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int RSND_MOD_SSI ; 
 int RSND_MOD_SSIM1 ; 
 int RSND_MOD_SSIM2 ; 
 int RSND_MOD_SSIM3 ; 
 int /*<<< orphan*/  FUNC1 (struct rsnd_mod*,struct rsnd_dai_stream*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dai_stream*,int) ; 
 struct rsnd_dai* FUNC3 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_dai*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rsnd_dai*,int) ; 

__attribute__((used)) static void FUNC6(struct rsnd_mod *mod,
			     struct rsnd_dai_stream *io)
{
	struct rsnd_dai *rdai = FUNC3(io);
	enum rsnd_mod_type types[] = {
		RSND_MOD_SSI,
		RSND_MOD_SSIM1,
		RSND_MOD_SSIM2,
		RSND_MOD_SSIM3,
	};
	enum rsnd_mod_type type;
	int i;

	/* try SSI -> SSIM1 -> SSIM2 -> SSIM3 */
	for (i = 0; i < FUNC0(types); i++) {
		type = types[i];
		if (!FUNC2(io, type)) {
			FUNC1(mod, io, type);
			FUNC4(rdai, (i + 1) * 2);
			FUNC5(rdai, (i + 1));
			return;
		}
	}
}