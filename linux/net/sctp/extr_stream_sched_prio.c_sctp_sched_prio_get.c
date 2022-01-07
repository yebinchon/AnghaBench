
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_stream {int dummy; } ;
typedef int __u16 ;
struct TYPE_6__ {TYPE_2__* ext; } ;
struct TYPE_5__ {TYPE_1__* prio_head; } ;
struct TYPE_4__ {int prio; } ;


 TYPE_3__* SCTP_SO (struct sctp_stream*,int ) ;

__attribute__((used)) static int sctp_sched_prio_get(struct sctp_stream *stream, __u16 sid,
          __u16 *value)
{
 *value = SCTP_SO(stream, sid)->ext->prio_head->prio;
 return 0;
}
