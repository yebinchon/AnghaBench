
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_sndrcvinfo {int sinfo_tsn; int sinfo_ssn; int sinfo_timetolive; int sinfo_flags; int sinfo_assoc_id; int sinfo_context; int sinfo_ppid; int sinfo_stream; } ;
struct sctp_cmsgs {TYPE_1__* authinfo; int prinfo; int srinfo; int sinfo; } ;
struct sctp_association {int default_timetolive; int default_flags; int default_context; int default_ppid; int default_stream; } ;
struct TYPE_2__ {int auth_keynumber; } ;


 int sctp_assoc2id (struct sctp_association*) ;

__attribute__((used)) static void sctp_sendmsg_update_sinfo(struct sctp_association *asoc,
          struct sctp_sndrcvinfo *sinfo,
          struct sctp_cmsgs *cmsgs)
{
 if (!cmsgs->srinfo && !cmsgs->sinfo) {
  sinfo->sinfo_stream = asoc->default_stream;
  sinfo->sinfo_ppid = asoc->default_ppid;
  sinfo->sinfo_context = asoc->default_context;
  sinfo->sinfo_assoc_id = sctp_assoc2id(asoc);

  if (!cmsgs->prinfo)
   sinfo->sinfo_flags = asoc->default_flags;
 }

 if (!cmsgs->srinfo && !cmsgs->prinfo)
  sinfo->sinfo_timetolive = asoc->default_timetolive;

 if (cmsgs->authinfo) {



  sinfo->sinfo_tsn = 1;
  sinfo->sinfo_ssn = cmsgs->authinfo->auth_keynumber;
 }
}
