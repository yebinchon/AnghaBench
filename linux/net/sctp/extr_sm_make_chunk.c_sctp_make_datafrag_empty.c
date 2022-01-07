
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_sndrcvinfo {int sinfo_flags; int sinfo_stream; int sinfo_ppid; } ;
struct sctp_datahdr {int stream; int ppid; } ;
struct TYPE_2__ {int data_hdr; } ;
struct sctp_chunk {int sinfo; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int dp ;
typedef int __u8 ;


 int SCTP_DATA_UNORDERED ;
 int SCTP_UNORDERED ;
 int htons (int ) ;
 int memcpy (int *,struct sctp_sndrcvinfo const*,int) ;
 int memset (struct sctp_datahdr*,int ,int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_datahdr*) ;
 struct sctp_chunk* sctp_make_data (struct sctp_association const*,int ,int,int ) ;

struct sctp_chunk *sctp_make_datafrag_empty(const struct sctp_association *asoc,
         const struct sctp_sndrcvinfo *sinfo,
         int len, __u8 flags, gfp_t gfp)
{
 struct sctp_chunk *retval;
 struct sctp_datahdr dp;




 memset(&dp, 0, sizeof(dp));
 dp.ppid = sinfo->sinfo_ppid;
 dp.stream = htons(sinfo->sinfo_stream);


 if (sinfo->sinfo_flags & SCTP_UNORDERED)
  flags |= SCTP_DATA_UNORDERED;

 retval = sctp_make_data(asoc, flags, sizeof(dp) + len, gfp);
 if (!retval)
  return ((void*)0);

 retval->subh.data_hdr = sctp_addto_chunk(retval, sizeof(dp), &dp);
 memcpy(&retval->sinfo, sinfo, sizeof(struct sctp_sndrcvinfo));

 return retval;
}
