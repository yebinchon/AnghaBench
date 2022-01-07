
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int activate_amp (struct hda_codec*,int ,int,int,int,int) ;
 scalar_t__ is_active_nid (struct hda_codec*,int ,int,int) ;

__attribute__((used)) static void check_and_activate_amp(struct hda_codec *codec, hda_nid_t nid,
       int dir, int idx, int idx_to_check,
       bool enable)
{

 if (!enable && is_active_nid(codec, nid, dir, idx_to_check))
  return;
 activate_amp(codec, nid, dir, idx, idx_to_check, enable);
}
