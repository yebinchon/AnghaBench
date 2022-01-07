
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int h_sequence; } ;
struct TYPE_4__ {TYPE_1__ i_hdr; } ;
struct rds_message {TYPE_2__ m_inc; } ;
typedef int (* is_acked_func ) (struct rds_message*,scalar_t__) ;


 scalar_t__ be64_to_cpu (int ) ;

__attribute__((used)) static inline int rds_send_is_acked(struct rds_message *rm, u64 ack,
        is_acked_func is_acked)
{
 if (is_acked)
  return is_acked(rm, ack);
 return be64_to_cpu(rm->m_inc.i_hdr.h_sequence) <= ack;
}
