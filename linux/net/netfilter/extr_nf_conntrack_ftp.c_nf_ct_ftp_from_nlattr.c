
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_ct_ftp_master {int * flags; } ;
struct nf_conn {int dummy; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int NF_CT_FTP_SEQ_PICKUP ;
 struct nf_ct_ftp_master* nfct_help_data (struct nf_conn*) ;

__attribute__((used)) static int nf_ct_ftp_from_nlattr(struct nlattr *attr, struct nf_conn *ct)
{
 struct nf_ct_ftp_master *ftp = nfct_help_data(ct);





 ftp->flags[IP_CT_DIR_ORIGINAL] |= NF_CT_FTP_SEQ_PICKUP;
 ftp->flags[IP_CT_DIR_REPLY] |= NF_CT_FTP_SEQ_PICKUP;
 return 0;
}
