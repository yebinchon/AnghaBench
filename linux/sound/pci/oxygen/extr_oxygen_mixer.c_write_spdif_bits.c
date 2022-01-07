
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxygen {int dummy; } ;


 int OXYGEN_SPDIF_C ;
 int OXYGEN_SPDIF_CATEGORY_MASK ;
 int OXYGEN_SPDIF_NONAUDIO ;
 int OXYGEN_SPDIF_ORIGINAL ;
 int OXYGEN_SPDIF_OUTPUT_BITS ;
 int OXYGEN_SPDIF_PREEMPHASIS ;
 int OXYGEN_SPDIF_V ;
 int oxygen_write32_masked (struct oxygen*,int ,int ,int) ;

__attribute__((used)) static inline void write_spdif_bits(struct oxygen *chip, u32 bits)
{
 oxygen_write32_masked(chip, OXYGEN_SPDIF_OUTPUT_BITS, bits,
         OXYGEN_SPDIF_NONAUDIO |
         OXYGEN_SPDIF_C |
         OXYGEN_SPDIF_PREEMPHASIS |
         OXYGEN_SPDIF_CATEGORY_MASK |
         OXYGEN_SPDIF_ORIGINAL |
         OXYGEN_SPDIF_V);
}
