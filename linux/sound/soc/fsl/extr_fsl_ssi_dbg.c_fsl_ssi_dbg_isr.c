
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tfe0; int tfe1; int rff0; int rff1; int rls; int tls; int rfs; int tfs; int tue0; int tue1; int roe0; int roe1; int tde0; int tde1; int rdr0; int rdr1; int rxt; int cmddu; int cmdau; int tfrc; int rfrc; } ;
struct fsl_ssi_dbg {TYPE_1__ stats; } ;


 int SSI_SISR_CMDAU ;
 int SSI_SISR_CMDDU ;
 int SSI_SISR_RDR0 ;
 int SSI_SISR_RDR1 ;
 int SSI_SISR_RFF0 ;
 int SSI_SISR_RFF1 ;
 int SSI_SISR_RFRC ;
 int SSI_SISR_RFS ;
 int SSI_SISR_RLS ;
 int SSI_SISR_ROE0 ;
 int SSI_SISR_ROE1 ;
 int SSI_SISR_RXT ;
 int SSI_SISR_TDE0 ;
 int SSI_SISR_TDE1 ;
 int SSI_SISR_TFE0 ;
 int SSI_SISR_TFE1 ;
 int SSI_SISR_TFRC ;
 int SSI_SISR_TFS ;
 int SSI_SISR_TLS ;
 int SSI_SISR_TUE0 ;
 int SSI_SISR_TUE1 ;

void fsl_ssi_dbg_isr(struct fsl_ssi_dbg *dbg, u32 sisr)
{
 if (sisr & SSI_SISR_RFRC)
  dbg->stats.rfrc++;

 if (sisr & SSI_SISR_TFRC)
  dbg->stats.tfrc++;

 if (sisr & SSI_SISR_CMDAU)
  dbg->stats.cmdau++;

 if (sisr & SSI_SISR_CMDDU)
  dbg->stats.cmddu++;

 if (sisr & SSI_SISR_RXT)
  dbg->stats.rxt++;

 if (sisr & SSI_SISR_RDR1)
  dbg->stats.rdr1++;

 if (sisr & SSI_SISR_RDR0)
  dbg->stats.rdr0++;

 if (sisr & SSI_SISR_TDE1)
  dbg->stats.tde1++;

 if (sisr & SSI_SISR_TDE0)
  dbg->stats.tde0++;

 if (sisr & SSI_SISR_ROE1)
  dbg->stats.roe1++;

 if (sisr & SSI_SISR_ROE0)
  dbg->stats.roe0++;

 if (sisr & SSI_SISR_TUE1)
  dbg->stats.tue1++;

 if (sisr & SSI_SISR_TUE0)
  dbg->stats.tue0++;

 if (sisr & SSI_SISR_TFS)
  dbg->stats.tfs++;

 if (sisr & SSI_SISR_RFS)
  dbg->stats.rfs++;

 if (sisr & SSI_SISR_TLS)
  dbg->stats.tls++;

 if (sisr & SSI_SISR_RLS)
  dbg->stats.rls++;

 if (sisr & SSI_SISR_RFF1)
  dbg->stats.rff1++;

 if (sisr & SSI_SISR_RFF0)
  dbg->stats.rff0++;

 if (sisr & SSI_SISR_TFE1)
  dbg->stats.tfe1++;

 if (sisr & SSI_SISR_TFE0)
  dbg->stats.tfe0++;
}
