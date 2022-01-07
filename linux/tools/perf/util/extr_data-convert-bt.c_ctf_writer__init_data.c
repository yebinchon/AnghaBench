
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ string; int u64_hex; int u32_hex; int u32; int s32; int u64; int s64; } ;
struct ctf_writer {TYPE_1__ data; } ;


 int CREATE_INT_TYPE (int ,int,int,int) ;
 scalar_t__ bt_ctf_field_type_string_create () ;
 int ctf_writer__cleanup_data (struct ctf_writer*) ;
 int pr_err (char*) ;

__attribute__((used)) static int ctf_writer__init_data(struct ctf_writer *cw)
{







 do { (cw->data.s64) = create_int_type(64, 1, 0); if (!(cw->data.s64)) goto err; } while (0);
 do { (cw->data.u64) = create_int_type(64, 0, 0); if (!(cw->data.u64)) goto err; } while (0);
 do { (cw->data.s32) = create_int_type(32, 1, 0); if (!(cw->data.s32)) goto err; } while (0);
 do { (cw->data.u32) = create_int_type(32, 0, 0); if (!(cw->data.u32)) goto err; } while (0);
 do { (cw->data.u32_hex) = create_int_type(32, 0, 1); if (!(cw->data.u32_hex)) goto err; } while (0);
 do { (cw->data.u64_hex) = create_int_type(64, 0, 1); if (!(cw->data.u64_hex)) goto err; } while (0);

 cw->data.string = bt_ctf_field_type_string_create();
 if (cw->data.string)
  return 0;

err:
 ctf_writer__cleanup_data(cw);
 pr_err("Failed to create data types.\n");
 return -1;
}
