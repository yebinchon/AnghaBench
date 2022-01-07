
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int options; } ;
typedef enum net_bridge_opts { ____Placeholder_net_bridge_opts } net_bridge_opts ;


 int test_bit (int,int *) ;

__attribute__((used)) static inline int br_opt_get(const struct net_bridge *br,
        enum net_bridge_opts opt)
{
 return test_bit(opt, &br->options);
}
