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
typedef  int u8 ;
typedef  int u32 ;
struct rsnd_mod {int dummy; } ;
struct rsnd_dai_stream {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int* gen2_id_table_cmd ; 
 int* gen2_id_table_scu ; 
 int* gen2_id_table_ssiu ; 
 struct rsnd_mod* FUNC2 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC3 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC4 (struct rsnd_dai_stream*) ; 
 struct rsnd_mod* FUNC5 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsnd_dai_stream*) ; 
 int FUNC7 (struct rsnd_mod*) ; 
 int FUNC8 (struct rsnd_mod*) ; 
 int /*<<< orphan*/  FUNC9 (struct rsnd_mod*) ; 
 struct device* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC11(struct rsnd_dai_stream *io,
			     struct rsnd_mod *mod)
{
	struct rsnd_mod *ssi = FUNC4(io);
	struct rsnd_mod *ssiu = FUNC5(io);
	struct rsnd_mod *src = FUNC3(io);
	struct rsnd_mod *dvc = FUNC2(io);
	const u8 *entry = NULL;
	int id = 255;
	int size = 0;

	if ((mod == ssi) ||
	    (mod == ssiu)) {
		int busif = FUNC8(ssiu);

		entry = gen2_id_table_ssiu;
		size = FUNC0(gen2_id_table_ssiu);
		id = (FUNC7(mod) * 8) + busif;
	} else if (mod == src) {
		entry = gen2_id_table_scu;
		size = FUNC0(gen2_id_table_scu);
		id = FUNC7(mod);
	} else if (mod == dvc) {
		entry = gen2_id_table_cmd;
		size = FUNC0(gen2_id_table_cmd);
		id = FUNC7(mod);
	}

	if ((!entry) || (size <= id)) {
		struct device *dev = FUNC10(FUNC6(io));

		FUNC1(dev, "unknown connection (%s)\n", FUNC9(mod));

		/* use non-prohibited SRS number as error */
		return 0x00; /* SSI00 */
	}

	return entry[id];
}