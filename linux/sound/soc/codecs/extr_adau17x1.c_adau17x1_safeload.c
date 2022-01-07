
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
struct sigmadsp {int control_data; } ;


 int ADAU17X1_SAFELOAD_DATA ;
 int ADAU17X1_SAFELOAD_DATA_SIZE ;
 int ADAU17X1_SAFELOAD_TARGET_ADDRESS ;
 int ADAU17X1_SAFELOAD_TRIGGER ;
 int ADAU17X1_WORD_SIZE ;
 int memcpy (int const*,int const*,size_t) ;
 int memset (int const*,int ,int) ;
 int put_unaligned_be32 (unsigned int,int const*) ;
 int regmap_raw_write (int ,int ,int const*,int) ;

__attribute__((used)) static int adau17x1_safeload(struct sigmadsp *sigmadsp, unsigned int addr,
 const uint8_t bytes[], size_t len)
{
 uint8_t buf[ADAU17X1_WORD_SIZE];
 uint8_t data[ADAU17X1_SAFELOAD_DATA_SIZE];
 unsigned int addr_offset;
 unsigned int nbr_words;
 int ret;




 nbr_words = len / ADAU17X1_WORD_SIZE;
 if ((len - nbr_words * ADAU17X1_WORD_SIZE) == 0) {
  ret = regmap_raw_write(sigmadsp->control_data,
   ADAU17X1_SAFELOAD_DATA, bytes, len);
 } else {
  nbr_words++;
  memset(data, 0, ADAU17X1_SAFELOAD_DATA_SIZE);
  memcpy(data, bytes, len);
  ret = regmap_raw_write(sigmadsp->control_data,
   ADAU17X1_SAFELOAD_DATA, data,
   nbr_words * ADAU17X1_WORD_SIZE);
 }

 if (ret < 0)
  return ret;


 addr_offset = addr - 1;
 put_unaligned_be32(addr_offset, buf);
 ret = regmap_raw_write(sigmadsp->control_data,
  ADAU17X1_SAFELOAD_TARGET_ADDRESS, buf, ADAU17X1_WORD_SIZE);
 if (ret < 0)
  return ret;


 put_unaligned_be32(nbr_words, buf);
 ret = regmap_raw_write(sigmadsp->control_data,
  ADAU17X1_SAFELOAD_TRIGGER, buf, ADAU17X1_WORD_SIZE);
 if (ret < 0)
  return ret;

 return 0;
}
