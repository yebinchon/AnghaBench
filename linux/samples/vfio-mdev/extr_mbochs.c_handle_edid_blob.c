
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ edid_max_size; } ;
struct mdev_state {char* edid_blob; TYPE_1__ edid_regs; } ;


 int memcpy (char*,char*,scalar_t__) ;

__attribute__((used)) static void handle_edid_blob(struct mdev_state *mdev_state, u16 offset,
        char *buf, u32 count, bool is_write)
{
 if (offset + count > mdev_state->edid_regs.edid_max_size)
  return;
 if (is_write)
  memcpy(mdev_state->edid_blob + offset, buf, count);
 else
  memcpy(buf, mdev_state->edid_blob + offset, count);
}
