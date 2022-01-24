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
typedef  union smc_llc_msg {int dummy; } smc_llc_msg ;
struct smc_wr_tx_pend_priv {int dummy; } ;
struct smc_wr_buf {int dummy; } ;
struct smc_llc_tx_pend {int dummy; } ;
struct smc_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int SMC_WR_BUF_SIZE ; 
 int SMC_WR_TX_PEND_PRIV_SIZE ; 
 int SMC_WR_TX_SIZE ; 
 int /*<<< orphan*/  smc_llc_tx_handler ; 
 int FUNC1 (struct smc_link*,int /*<<< orphan*/ ,struct smc_wr_buf**,int /*<<< orphan*/ *,struct smc_wr_tx_pend_priv**) ; 

__attribute__((used)) static int FUNC2(struct smc_link *link,
				    struct smc_wr_buf **wr_buf,
				    struct smc_wr_tx_pend_priv **pend)
{
	int rc;

	rc = FUNC1(link, smc_llc_tx_handler, wr_buf, NULL,
				     pend);
	if (rc < 0)
		return rc;
	FUNC0(
		sizeof(union smc_llc_msg) > SMC_WR_BUF_SIZE,
		"must increase SMC_WR_BUF_SIZE to at least sizeof(struct smc_llc_msg)");
	FUNC0(
		sizeof(union smc_llc_msg) != SMC_WR_TX_SIZE,
		"must adapt SMC_WR_TX_SIZE to sizeof(struct smc_llc_msg); if not all smc_wr upper layer protocols use the same message size any more, must start to set link->wr_tx_sges[i].length on each individual smc_wr_tx_send()");
	FUNC0(
		sizeof(struct smc_llc_tx_pend) > SMC_WR_TX_PEND_PRIV_SIZE,
		"must increase SMC_WR_TX_PEND_PRIV_SIZE to at least sizeof(struct smc_llc_tx_pend)");
	return 0;
}