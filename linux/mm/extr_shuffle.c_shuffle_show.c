
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int SHUFFLE_ENABLE ;
 int shuffle_state ;
 int sprintf (char*,char*,char) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int shuffle_show(char *buffer, const struct kernel_param *kp)
{
 return sprintf(buffer, "%c\n", test_bit(SHUFFLE_ENABLE, &shuffle_state)
   ? 'Y' : 'N');
}
