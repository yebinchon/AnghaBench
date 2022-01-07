
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int ak4396_init (struct oxygen*) ;

__attribute__((used)) static void stereo_output_init(struct oxygen *chip)
{
 ak4396_init(chip);
}
