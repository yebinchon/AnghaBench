
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int PX_DIGITAL_IN ;

__attribute__((used)) static inline int px_digital_in(const struct echoaudio *chip)
{
 return PX_DIGITAL_IN;
}
