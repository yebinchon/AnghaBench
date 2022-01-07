
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmfw_adsp_alg_data {int ncoeff; int name; int id; int * data; } ;
struct wm_coeff_parsed_alg {void* ncoeff; int name; int name_len; void* id; } ;
struct wm_adsp {int fw_ver; } ;


 int adsp_dbg (struct wm_adsp*,char*,void*,...) ;
 void* le32_to_cpu (int ) ;
 int strlen (int ) ;
 void* wm_coeff_parse_int (int,int const**) ;
 int wm_coeff_parse_string (int,int const**,int *) ;

__attribute__((used)) static inline void wm_coeff_parse_alg(struct wm_adsp *dsp, const u8 **data,
          struct wm_coeff_parsed_alg *blk)
{
 const struct wmfw_adsp_alg_data *raw;

 switch (dsp->fw_ver) {
 case 0:
 case 1:
  raw = (const struct wmfw_adsp_alg_data *)*data;
  *data = raw->data;

  blk->id = le32_to_cpu(raw->id);
  blk->name = raw->name;
  blk->name_len = strlen(raw->name);
  blk->ncoeff = le32_to_cpu(raw->ncoeff);
  break;
 default:
  blk->id = wm_coeff_parse_int(sizeof(raw->id), data);
  blk->name_len = wm_coeff_parse_string(sizeof(u8), data,
            &blk->name);
  wm_coeff_parse_string(sizeof(u16), data, ((void*)0));
  blk->ncoeff = wm_coeff_parse_int(sizeof(raw->ncoeff), data);
  break;
 }

 adsp_dbg(dsp, "Algorithm ID: %#x\n", blk->id);
 adsp_dbg(dsp, "Algorithm name: %.*s\n", blk->name_len, blk->name);
 adsp_dbg(dsp, "# of coefficient descriptors: %#x\n", blk->ncoeff);
}
