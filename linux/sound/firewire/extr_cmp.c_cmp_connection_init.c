
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct fw_unit {int dummy; } ;
struct cmp_connection {int direction; int connected; unsigned int pcr_index; unsigned int max_speed; int last_pcr_value; int mutex; int resources; } ;
typedef enum cmp_direction { ____Placeholder_cmp_direction } cmp_direction ;
typedef int __be32 ;


 int EINVAL ;
 unsigned int MPR_PLUGS_MASK ;
 unsigned int MPR_SPEED_MASK ;
 unsigned int MPR_SPEED_SHIFT ;
 unsigned int MPR_XSPEED_MASK ;
 unsigned int MPR_XSPEED_SHIFT ;
 unsigned int SCODE_BETA ;
 int TCODE_READ_QUADLET_REQUEST ;
 unsigned int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int fw_iso_resources_init (int *,struct fw_unit*) ;
 int mpr_address (struct cmp_connection*) ;
 int mutex_init (int *) ;
 int snd_fw_transaction (struct fw_unit*,int ,int ,int *,int,int ) ;

int cmp_connection_init(struct cmp_connection *c,
   struct fw_unit *unit,
   enum cmp_direction direction,
   unsigned int pcr_index)
{
 __be32 mpr_be;
 u32 mpr;
 int err;

 c->direction = direction;
 err = snd_fw_transaction(unit, TCODE_READ_QUADLET_REQUEST,
     mpr_address(c), &mpr_be, 4, 0);
 if (err < 0)
  return err;
 mpr = be32_to_cpu(mpr_be);

 if (pcr_index >= (mpr & MPR_PLUGS_MASK))
  return -EINVAL;

 err = fw_iso_resources_init(&c->resources, unit);
 if (err < 0)
  return err;

 c->connected = 0;
 mutex_init(&c->mutex);
 c->last_pcr_value = cpu_to_be32(0x80000000);
 c->pcr_index = pcr_index;
 c->max_speed = (mpr & MPR_SPEED_MASK) >> MPR_SPEED_SHIFT;
 if (c->max_speed == SCODE_BETA)
  c->max_speed += (mpr & MPR_XSPEED_MASK) >> MPR_XSPEED_SHIFT;

 return 0;
}
