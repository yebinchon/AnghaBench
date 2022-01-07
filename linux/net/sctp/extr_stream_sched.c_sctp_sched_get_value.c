
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ outcnt; } ;
struct TYPE_7__ {TYPE_1__* sched; } ;
struct sctp_association {TYPE_3__ stream; TYPE_2__ outqueue; } ;
typedef scalar_t__ __u16 ;
struct TYPE_9__ {int ext; } ;
struct TYPE_6__ {int (* get ) (TYPE_3__*,scalar_t__,scalar_t__*) ;} ;


 int EINVAL ;
 TYPE_4__* SCTP_SO (TYPE_3__*,scalar_t__) ;
 int stub1 (TYPE_3__*,scalar_t__,scalar_t__*) ;

int sctp_sched_get_value(struct sctp_association *asoc, __u16 sid,
    __u16 *value)
{
 if (sid >= asoc->stream.outcnt)
  return -EINVAL;

 if (!SCTP_SO(&asoc->stream, sid)->ext)
  return 0;

 return asoc->outqueue.sched->get(&asoc->stream, sid, value);
}
