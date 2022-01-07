
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_stream {int dummy; } ;
typedef int gfp_t ;
typedef int __u16 ;
struct TYPE_4__ {TYPE_1__* ext; } ;
struct TYPE_3__ {int prio_list; } ;


 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* SCTP_SO (struct sctp_stream*,int ) ;
 int sctp_sched_prio_set (struct sctp_stream*,int ,int ,int ) ;

__attribute__((used)) static int sctp_sched_prio_init_sid(struct sctp_stream *stream, __u16 sid,
        gfp_t gfp)
{
 INIT_LIST_HEAD(&SCTP_SO(stream, sid)->ext->prio_list);
 return sctp_sched_prio_set(stream, sid, 0, gfp);
}
