
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 size_t IPSET_ATTR_PROTOCOL ;
 scalar_t__ IPSET_PROTOCOL ;
 scalar_t__ protocol (struct nlattr const* const*) ;

__attribute__((used)) static inline bool
protocol_failed(const struct nlattr * const tb[])
{
 return !tb[IPSET_ATTR_PROTOCOL] || protocol(tb) != IPSET_PROTOCOL;
}
