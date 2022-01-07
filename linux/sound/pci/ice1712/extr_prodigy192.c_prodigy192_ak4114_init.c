
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {int card; struct prodigy192_spec* spec; } ;
struct prodigy192_spec {TYPE_1__* ak4114; } ;
struct TYPE_2__ {int check_flags; } ;


 int AK4114_CHECK_NO_RATE ;
 int prodigy192_ak4114_read ;
 int prodigy192_ak4114_write ;
 int snd_ak4114_create (int ,int ,int ,unsigned char const*,unsigned char const*,struct snd_ice1712*,TYPE_1__**) ;

__attribute__((used)) static int prodigy192_ak4114_init(struct snd_ice1712 *ice)
{
 static const unsigned char ak4114_init_vals[] = {
  129 | 130 | 132 | 131,



  135 | 136 ,
  128,
  133 | 134,
  0,
  0
 };
 static const unsigned char ak4114_init_txcsb[] = {
  0x41, 0x02, 0x2c, 0x00, 0x00
 };
 struct prodigy192_spec *spec = ice->spec;
 int err;

 err = snd_ak4114_create(ice->card,
     prodigy192_ak4114_read,
     prodigy192_ak4114_write,
     ak4114_init_vals, ak4114_init_txcsb,
     ice, &spec->ak4114);
 if (err < 0)
  return err;


 spec->ak4114->check_flags = AK4114_CHECK_NO_RATE;
 return 0;
}
