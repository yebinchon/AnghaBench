
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbochs_mode {int dummy; } ;


 scalar_t__ memcmp (struct mbochs_mode*,struct mbochs_mode*,int) ;

__attribute__((used)) static bool mbochs_modes_equal(struct mbochs_mode *mode1,
          struct mbochs_mode *mode2)
{
 return memcmp(mode1, mode2, sizeof(struct mbochs_mode)) == 0;
}
