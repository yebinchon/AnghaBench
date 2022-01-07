
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int asic_loaded; } ;



__attribute__((used)) static inline int check_asic_status(struct echoaudio *chip)
{
 chip->asic_loaded = 1;
 return 0;
}
