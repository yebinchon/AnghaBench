
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rd_length; int rd_offset; int rd_fhp; int rd_rqstp; scalar_t__ rd_nf; } ;
union nfsd4_op_u {TYPE_1__ read; } ;


 int nfsd_file_put (scalar_t__) ;
 int trace_nfsd_read_done (int ,int ,int ,int ) ;

__attribute__((used)) static void
nfsd4_read_release(union nfsd4_op_u *u)
{
 if (u->read.rd_nf)
  nfsd_file_put(u->read.rd_nf);
 trace_nfsd_read_done(u->read.rd_rqstp, u->read.rd_fhp,
        u->read.rd_offset, u->read.rd_length);
}
