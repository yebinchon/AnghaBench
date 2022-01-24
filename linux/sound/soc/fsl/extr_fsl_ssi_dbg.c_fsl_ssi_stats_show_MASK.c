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
struct seq_file {struct fsl_ssi_dbg* private; } ;
struct fsl_ssi_dbg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMDAU_EN ; 
 int /*<<< orphan*/  CMDDU_EN ; 
 int /*<<< orphan*/  RDR0_EN ; 
 int /*<<< orphan*/  RDR1_EN ; 
 int /*<<< orphan*/  RFF0_EN ; 
 int /*<<< orphan*/  RFF1_EN ; 
 int /*<<< orphan*/  RFRC_EN ; 
 int /*<<< orphan*/  RFS_EN ; 
 int /*<<< orphan*/  RLS_EN ; 
 int /*<<< orphan*/  ROE0_EN ; 
 int /*<<< orphan*/  ROE1_EN ; 
 int /*<<< orphan*/  RXT_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDE0_EN ; 
 int /*<<< orphan*/  TDE1_EN ; 
 int /*<<< orphan*/  TFE0_EN ; 
 int /*<<< orphan*/  TFE1_EN ; 
 int /*<<< orphan*/  TFRC_EN ; 
 int /*<<< orphan*/  TFS_EN ; 
 int /*<<< orphan*/  TLS_EN ; 
 int /*<<< orphan*/  TUE0_EN ; 
 int /*<<< orphan*/  TUE1_EN ; 
 int /*<<< orphan*/  cmdau ; 
 int /*<<< orphan*/  cmddu ; 
 int /*<<< orphan*/  rdr0 ; 
 int /*<<< orphan*/  rdr1 ; 
 int /*<<< orphan*/  rff0 ; 
 int /*<<< orphan*/  rff1 ; 
 int /*<<< orphan*/  rfrc ; 
 int /*<<< orphan*/  rfs ; 
 int /*<<< orphan*/  rls ; 
 int /*<<< orphan*/  roe0 ; 
 int /*<<< orphan*/  roe1 ; 
 int /*<<< orphan*/  rxt ; 
 int /*<<< orphan*/  tde0 ; 
 int /*<<< orphan*/  tde1 ; 
 int /*<<< orphan*/  tfe0 ; 
 int /*<<< orphan*/  tfe1 ; 
 int /*<<< orphan*/  tfrc ; 
 int /*<<< orphan*/  tfs ; 
 int /*<<< orphan*/  tls ; 
 int /*<<< orphan*/  tue0 ; 
 int /*<<< orphan*/  tue1 ; 

__attribute__((used)) static int FUNC1(struct seq_file *s, void *unused)
{
	struct fsl_ssi_dbg *ssi_dbg = s->private;

	FUNC0(RFRC_EN, rfrc);
	FUNC0(TFRC_EN, tfrc);
	FUNC0(CMDAU_EN, cmdau);
	FUNC0(CMDDU_EN, cmddu);
	FUNC0(RXT_EN, rxt);
	FUNC0(RDR1_EN, rdr1);
	FUNC0(RDR0_EN, rdr0);
	FUNC0(TDE1_EN, tde1);
	FUNC0(TDE0_EN, tde0);
	FUNC0(ROE1_EN, roe1);
	FUNC0(ROE0_EN, roe0);
	FUNC0(TUE1_EN, tue1);
	FUNC0(TUE0_EN, tue0);
	FUNC0(TFS_EN, tfs);
	FUNC0(RFS_EN, rfs);
	FUNC0(TLS_EN, tls);
	FUNC0(RLS_EN, rls);
	FUNC0(RFF1_EN, rff1);
	FUNC0(RFF0_EN, rff0);
	FUNC0(TFE1_EN, tfe1);
	FUNC0(TFE0_EN, tfe0);

	return 0;
}