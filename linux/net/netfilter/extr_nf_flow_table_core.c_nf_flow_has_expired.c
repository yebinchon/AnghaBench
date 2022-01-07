
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_offload {int timeout; } ;


 scalar_t__ nf_flow_timeout_delta (int ) ;

__attribute__((used)) static inline bool nf_flow_has_expired(const struct flow_offload *flow)
{
 return nf_flow_timeout_delta(flow->timeout) <= 0;
}
