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
struct snd_trident {int /*<<< orphan*/  spdif_bits; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI_SPDIF_CS ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_trident*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_trident*) ; 

__attribute__((used)) static int FUNC4(struct snd_trident *trident)
{
	int err;

	if ((err = FUNC2(trident)) < 0)
		return err;

	FUNC3(trident);

	/* initialize S/PDIF */
	FUNC1(trident->spdif_bits, FUNC0(trident, SI_SPDIF_CS));

	return 0;
}