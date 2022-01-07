
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tss ;
struct scm_timestamping_internal {int * ts; } ;
struct scm_timestamping {int * ts; } ;
struct msghdr {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int SOL_SOCKET ;
 int SO_TIMESTAMPING_OLD ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct scm_timestamping*) ;
 int timespec64_to_timespec (int ) ;

void put_cmsg_scm_timestamping(struct msghdr *msg, struct scm_timestamping_internal *tss_internal)
{
 struct scm_timestamping tss;
 int i;

 for (i = 0; i < ARRAY_SIZE(tss.ts); i++)
  tss.ts[i] = timespec64_to_timespec(tss_internal->ts[i]);

 put_cmsg(msg, SOL_SOCKET, SO_TIMESTAMPING_OLD, sizeof(tss), &tss);
}
