
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tss ;
struct scm_timestamping_internal {TYPE_1__* ts; } ;
struct scm_timestamping64 {TYPE_2__* ts; } ;
struct msghdr {int dummy; } ;
struct TYPE_4__ {int tv_nsec; int tv_sec; } ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int SOL_SOCKET ;
 int SO_TIMESTAMPING_NEW ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct scm_timestamping64*) ;

void put_cmsg_scm_timestamping64(struct msghdr *msg, struct scm_timestamping_internal *tss_internal)
{
 struct scm_timestamping64 tss;
 int i;

 for (i = 0; i < ARRAY_SIZE(tss.ts); i++) {
  tss.ts[i].tv_sec = tss_internal->ts[i].tv_sec;
  tss.ts[i].tv_nsec = tss_internal->ts[i].tv_nsec;
 }

 put_cmsg(msg, SOL_SOCKET, SO_TIMESTAMPING_NEW, sizeof(tss), &tss);
}
