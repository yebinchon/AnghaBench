
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_sndrcvinfo {int sinfo_flags; int sinfo_stream; } ;
struct sctp_idatahdr {int stream; } ;
struct TYPE_2__ {int idata_hdr; } ;
struct sctp_chunk {int sinfo; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int gfp_t ;
typedef int dp ;
typedef int __u8 ;


 int SCTP_DATA_UNORDERED ;
 int SCTP_UNORDERED ;
 int htons (int ) ;
 int memcpy (int *,struct sctp_sndrcvinfo const*,int) ;
 int memset (struct sctp_idatahdr*,int ,int) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,struct sctp_idatahdr*) ;
 struct sctp_chunk* sctp_make_idata (struct sctp_association const*,int ,int,int ) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_idatafrag_empty(
     const struct sctp_association *asoc,
     const struct sctp_sndrcvinfo *sinfo,
     int len, __u8 flags, gfp_t gfp)
{
 struct sctp_chunk *retval;
 struct sctp_idatahdr dp;

 memset(&dp, 0, sizeof(dp));
 dp.stream = htons(sinfo->sinfo_stream);

 if (sinfo->sinfo_flags & SCTP_UNORDERED)
  flags |= SCTP_DATA_UNORDERED;

 retval = sctp_make_idata(asoc, flags, sizeof(dp) + len, gfp);
 if (!retval)
  return ((void*)0);

 retval->subh.idata_hdr = sctp_addto_chunk(retval, sizeof(dp), &dp);
 memcpy(&retval->sinfo, sinfo, sizeof(struct sctp_sndrcvinfo));

 return retval;
}
