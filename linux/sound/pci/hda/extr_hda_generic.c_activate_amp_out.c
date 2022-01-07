
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int * path; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_OUTPUT ;
 int check_and_activate_amp (struct hda_codec*,int ,int ,int ,int ,int) ;
 int init_amp (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static void activate_amp_out(struct hda_codec *codec, struct nid_path *path,
        int i, bool enable)
{
 hda_nid_t nid = path->path[i];
 init_amp(codec, nid, HDA_OUTPUT, 0);
 check_and_activate_amp(codec, nid, HDA_OUTPUT, 0, 0, enable);
}
