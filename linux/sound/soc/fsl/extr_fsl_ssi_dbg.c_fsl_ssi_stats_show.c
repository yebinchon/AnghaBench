
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct fsl_ssi_dbg* private; } ;
struct fsl_ssi_dbg {int dummy; } ;


 int CMDAU_EN ;
 int CMDDU_EN ;
 int RDR0_EN ;
 int RDR1_EN ;
 int RFF0_EN ;
 int RFF1_EN ;
 int RFRC_EN ;
 int RFS_EN ;
 int RLS_EN ;
 int ROE0_EN ;
 int ROE1_EN ;
 int RXT_EN ;
 int SIER_SHOW (int ,int ) ;
 int TDE0_EN ;
 int TDE1_EN ;
 int TFE0_EN ;
 int TFE1_EN ;
 int TFRC_EN ;
 int TFS_EN ;
 int TLS_EN ;
 int TUE0_EN ;
 int TUE1_EN ;
 int cmdau ;
 int cmddu ;
 int rdr0 ;
 int rdr1 ;
 int rff0 ;
 int rff1 ;
 int rfrc ;
 int rfs ;
 int rls ;
 int roe0 ;
 int roe1 ;
 int rxt ;
 int tde0 ;
 int tde1 ;
 int tfe0 ;
 int tfe1 ;
 int tfrc ;
 int tfs ;
 int tls ;
 int tue0 ;
 int tue1 ;

__attribute__((used)) static int fsl_ssi_stats_show(struct seq_file *s, void *unused)
{
 struct fsl_ssi_dbg *ssi_dbg = s->private;

 SIER_SHOW(RFRC_EN, rfrc);
 SIER_SHOW(TFRC_EN, tfrc);
 SIER_SHOW(CMDAU_EN, cmdau);
 SIER_SHOW(CMDDU_EN, cmddu);
 SIER_SHOW(RXT_EN, rxt);
 SIER_SHOW(RDR1_EN, rdr1);
 SIER_SHOW(RDR0_EN, rdr0);
 SIER_SHOW(TDE1_EN, tde1);
 SIER_SHOW(TDE0_EN, tde0);
 SIER_SHOW(ROE1_EN, roe1);
 SIER_SHOW(ROE0_EN, roe0);
 SIER_SHOW(TUE1_EN, tue1);
 SIER_SHOW(TUE0_EN, tue0);
 SIER_SHOW(TFS_EN, tfs);
 SIER_SHOW(RFS_EN, rfs);
 SIER_SHOW(TLS_EN, tls);
 SIER_SHOW(RLS_EN, rls);
 SIER_SHOW(RFF1_EN, rff1);
 SIER_SHOW(RFF0_EN, rff0);
 SIER_SHOW(TFE1_EN, tfe1);
 SIER_SHOW(TFE0_EN, tfe0);

 return 0;
}
