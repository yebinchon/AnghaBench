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
struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {int /*<<< orphan*/ * base_ck; } ;

/* Variables and functions */
 size_t MT2701_AUDSYS_A1SYS ; 
 size_t MT2701_AUDSYS_A2SYS ; 
 size_t MT2701_AUDSYS_AFE ; 
 size_t MT2701_AUDSYS_AFE_CONN ; 
 size_t MT2701_INFRA_SYS_AUDIO ; 
 size_t MT2701_TOP_AUD_A1SYS ; 
 size_t MT2701_TOP_AUD_A2SYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mtk_base_afe *afe)
{
	struct mt2701_afe_private *afe_priv = afe->platform_priv;
	int ret;

	/* Enable infra clock gate */
	ret = FUNC1(afe_priv->base_ck[MT2701_INFRA_SYS_AUDIO]);
	if (ret)
		return ret;

	/* Enable top a1sys clock gate */
	ret = FUNC1(afe_priv->base_ck[MT2701_TOP_AUD_A1SYS]);
	if (ret)
		goto err_a1sys;

	/* Enable top a2sys clock gate */
	ret = FUNC1(afe_priv->base_ck[MT2701_TOP_AUD_A2SYS]);
	if (ret)
		goto err_a2sys;

	/* Internal clock gates */
	ret = FUNC1(afe_priv->base_ck[MT2701_AUDSYS_AFE]);
	if (ret)
		goto err_afe;

	ret = FUNC1(afe_priv->base_ck[MT2701_AUDSYS_A1SYS]);
	if (ret)
		goto err_audio_a1sys;

	ret = FUNC1(afe_priv->base_ck[MT2701_AUDSYS_A2SYS]);
	if (ret)
		goto err_audio_a2sys;

	ret = FUNC1(afe_priv->base_ck[MT2701_AUDSYS_AFE_CONN]);
	if (ret)
		goto err_afe_conn;

	return 0;

err_afe_conn:
	FUNC0(afe_priv->base_ck[MT2701_AUDSYS_A2SYS]);
err_audio_a2sys:
	FUNC0(afe_priv->base_ck[MT2701_AUDSYS_A1SYS]);
err_audio_a1sys:
	FUNC0(afe_priv->base_ck[MT2701_AUDSYS_AFE]);
err_afe:
	FUNC0(afe_priv->base_ck[MT2701_TOP_AUD_A2SYS]);
err_a2sys:
	FUNC0(afe_priv->base_ck[MT2701_TOP_AUD_A1SYS]);
err_a1sys:
	FUNC0(afe_priv->base_ck[MT2701_INFRA_SYS_AUDIO]);

	return ret;
}