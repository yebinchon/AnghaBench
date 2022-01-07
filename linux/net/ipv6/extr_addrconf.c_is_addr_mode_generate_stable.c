
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ addr_gen_mode; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 scalar_t__ IN6_ADDR_GEN_MODE_RANDOM ;
 scalar_t__ IN6_ADDR_GEN_MODE_STABLE_PRIVACY ;

__attribute__((used)) static bool is_addr_mode_generate_stable(struct inet6_dev *idev)
{
 return idev->cnf.addr_gen_mode == IN6_ADDR_GEN_MODE_STABLE_PRIVACY ||
        idev->cnf.addr_gen_mode == IN6_ADDR_GEN_MODE_RANDOM;
}
