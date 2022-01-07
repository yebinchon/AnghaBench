
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_datamsg {int dummy; } ;
typedef int gfp_t ;


 int SCTP_DBG_OBJCNT_INC (int ) ;
 int datamsg ;
 struct sctp_datamsg* kmalloc (int,int ) ;
 int sctp_datamsg_init (struct sctp_datamsg*) ;

__attribute__((used)) static struct sctp_datamsg *sctp_datamsg_new(gfp_t gfp)
{
 struct sctp_datamsg *msg;
 msg = kmalloc(sizeof(struct sctp_datamsg), gfp);
 if (msg) {
  sctp_datamsg_init(msg);
  SCTP_DBG_OBJCNT_INC(datamsg);
 }
 return msg;
}
