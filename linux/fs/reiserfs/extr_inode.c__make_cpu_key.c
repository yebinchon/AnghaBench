
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* k_objectid; void* k_dir_id; } ;
struct cpu_key {int version; int key_length; TYPE_1__ on_disk_key; } ;
typedef int loff_t ;
typedef void* __u32 ;


 int set_cpu_key_k_offset (struct cpu_key*,int ) ;
 int set_cpu_key_k_type (struct cpu_key*,int) ;

__attribute__((used)) static void _make_cpu_key(struct cpu_key *key, int version, __u32 dirid,
     __u32 objectid, loff_t offset, int type, int length)
{
 key->version = version;

 key->on_disk_key.k_dir_id = dirid;
 key->on_disk_key.k_objectid = objectid;
 set_cpu_key_k_offset(key, offset);
 set_cpu_key_k_type(key, type);
 key->key_length = length;
}
