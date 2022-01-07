
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_op {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_MINOR_VERS_MISMATCH ;
 int htonl (int ) ;

__attribute__((used)) static __be32
preprocess_nfs42_op(int nop, unsigned int op_nr, struct callback_op **op)
{
 return htonl(NFS4ERR_MINOR_VERS_MISMATCH);
}
