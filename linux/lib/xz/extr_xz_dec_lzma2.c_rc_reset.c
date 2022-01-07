
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rc_dec {int init_bytes_left; scalar_t__ code; scalar_t__ range; } ;


 int RC_INIT_BYTES ;

__attribute__((used)) static void rc_reset(struct rc_dec *rc)
{
 rc->range = (uint32_t)-1;
 rc->code = 0;
 rc->init_bytes_left = RC_INIT_BYTES;
}
