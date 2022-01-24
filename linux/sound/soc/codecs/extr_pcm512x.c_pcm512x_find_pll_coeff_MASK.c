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
typedef  unsigned long u64 ;
struct snd_soc_dai {struct snd_soc_component* component; struct device* dev; } ;
struct snd_soc_component {int dummy; } ;
struct pcm512x_priv {unsigned long real_pll; int pll_r; int pll_j; int pll_d; int pll_p; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,int) ; 
 unsigned long FUNC2 (unsigned long,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 unsigned long FUNC5 (int,unsigned long) ; 
 struct pcm512x_priv* FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *dai,
				  unsigned long pllin_rate,
				  unsigned long pll_rate)
{
	struct device *dev = dai->dev;
	struct snd_soc_component *component = dai->component;
	struct pcm512x_priv *pcm512x = FUNC6(component);
	unsigned long common;
	int R, J, D, P;
	unsigned long K; /* 10000 * J.D */
	unsigned long num;
	unsigned long den;

	common = FUNC5(pll_rate, pllin_rate);
	FUNC3(dev, "pll %lu pllin %lu common %lu\n",
		pll_rate, pllin_rate, common);
	num = pll_rate / common;
	den = pllin_rate / common;

	/* pllin_rate / P (or here, den) cannot be greater than 20 MHz */
	if (pllin_rate / den > 20000000 && num < 8) {
		num *= FUNC2(pllin_rate / den, 20000000);
		den *= FUNC2(pllin_rate / den, 20000000);
	}
	FUNC3(dev, "num / den = %lu / %lu\n", num, den);

	P = den;
	if (den <= 15 && num <= 16 * 63
	    && 1000000 <= pllin_rate / P && pllin_rate / P <= 20000000) {
		/* Try the case with D = 0 */
		D = 0;
		/* factor 'num' into J and R, such that R <= 16 and J <= 63 */
		for (R = 16; R; R--) {
			if (num % R)
				continue;
			J = num / R;
			if (J == 0 || J > 63)
				continue;

			FUNC3(dev, "R * J / P = %d * %d / %d\n", R, J, P);
			pcm512x->real_pll = pll_rate;
			goto done;
		}
		/* no luck */
	}

	R = 1;

	if (num > 0xffffffffUL / 10000)
		goto fallback;

	/* Try to find an exact pll_rate using the D > 0 case */
	common = FUNC5(10000 * num, den);
	num = 10000 * num / common;
	den /= common;
	FUNC3(dev, "num %lu den %lu common %lu\n", num, den, common);

	for (P = den; P <= 15; P++) {
		if (pllin_rate / P < 6667000 || 200000000 < pllin_rate / P)
			continue;
		if (num * P % den)
			continue;
		K = num * P / den;
		/* J == 12 is ok if D == 0 */
		if (K < 40000 || K > 120000)
			continue;

		J = K / 10000;
		D = K % 10000;
		FUNC3(dev, "J.D / P = %d.%04d / %d\n", J, D, P);
		pcm512x->real_pll = pll_rate;
		goto done;
	}

	/* Fall back to an approximate pll_rate */

fallback:
	/* find smallest possible P */
	P = FUNC2(pllin_rate, 20000000);
	if (!P)
		P = 1;
	else if (P > 15) {
		FUNC4(dev, "Need a slower clock as pll-input\n");
		return -EINVAL;
	}
	if (pllin_rate / P < 6667000) {
		FUNC4(dev, "Need a faster clock as pll-input\n");
		return -EINVAL;
	}
	K = FUNC0(10000ULL * pll_rate * P, pllin_rate);
	if (K < 40000)
		K = 40000;
	/* J == 12 is ok if D == 0 */
	if (K > 120000)
		K = 120000;
	J = K / 10000;
	D = K % 10000;
	FUNC3(dev, "J.D / P ~ %d.%04d / %d\n", J, D, P);
	pcm512x->real_pll = FUNC1((u64)K * pllin_rate, 10000 * P);

done:
	pcm512x->pll_r = R;
	pcm512x->pll_j = J;
	pcm512x->pll_d = D;
	pcm512x->pll_p = P;
	return 0;
}