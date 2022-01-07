
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int BX_DIGITAL_OUT ;

__attribute__((used)) static inline int bx_digital_out(const struct echoaudio *chip)
{
 return BX_DIGITAL_OUT;
}
