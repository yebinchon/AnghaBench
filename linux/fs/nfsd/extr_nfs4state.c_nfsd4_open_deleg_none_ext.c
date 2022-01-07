
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {int op_deleg_want; int op_why_no_deleg; int op_delegate_type; } ;


 int EAGAIN ;
 int NFS4_OPEN_DELEGATE_NONE_EXT ;





 int WARN_ON_ONCE (int) ;
 int WND4_CANCELLED ;
 int WND4_CONTENTION ;
 int WND4_RESOURCE ;

__attribute__((used)) static void nfsd4_open_deleg_none_ext(struct nfsd4_open *open, int status)
{
 open->op_delegate_type = NFS4_OPEN_DELEGATE_NONE_EXT;
 if (status == -EAGAIN)
  open->op_why_no_deleg = WND4_CONTENTION;
 else {
  open->op_why_no_deleg = WND4_RESOURCE;
  switch (open->op_deleg_want) {
  case 129:
  case 128:
  case 132:
   break;
  case 131:
   open->op_why_no_deleg = WND4_CANCELLED;
   break;
  case 130:
   WARN_ON_ONCE(1);
  }
 }
}
