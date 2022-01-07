
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_verifier_env {int subprog_cnt; } ;
struct bpf_map {int map_type; } ;





 int BPF_FUNC_map_delete_elem ;
 int BPF_FUNC_map_lookup_elem ;
 int EINVAL ;
 int func_id_name (int) ;
 int verbose (struct bpf_verifier_env*,char*,...) ;

__attribute__((used)) static int check_map_func_compatibility(struct bpf_verifier_env *env,
     struct bpf_map *map, int func_id)
{
 if (!map)
  return 0;


 switch (map->map_type) {
 case 136:
  if (func_id != 146)
   goto error;
  break;
 case 137:
  if (func_id != 157 &&
      func_id != 158 &&
      func_id != 156)
   goto error;
  break;
 case 129:
  if (func_id != 164)
   goto error;
  break;
 case 144:
  if (func_id != 149 &&
      func_id != 166)
   goto error;
  break;
 case 143:
 case 138:
  if (func_id != 165)
   goto error;
  break;
 case 141:
 case 140:
  if (func_id != 155 &&
      func_id != BPF_FUNC_map_lookup_elem)
   goto error;
  break;



 case 142:
  if (func_id != 155)
   goto error;
  break;
 case 128:
  if (func_id != 155 &&
      func_id != BPF_FUNC_map_lookup_elem)
   goto error;
  break;
 case 145:
 case 139:
  if (func_id != BPF_FUNC_map_lookup_elem)
   goto error;
  break;
 case 131:
  if (func_id != 153 &&
      func_id != 147 &&
      func_id != BPF_FUNC_map_delete_elem &&
      func_id != 159)
   goto error;
  break;
 case 132:
  if (func_id != 154 &&
      func_id != 148 &&
      func_id != BPF_FUNC_map_delete_elem &&
      func_id != 160)
   goto error;
  break;
 case 134:
  if (func_id != 152)
   goto error;
  break;
 case 135:
 case 130:
  if (func_id != 163 &&
      func_id != 162 &&
      func_id != 161)
   goto error;
  break;
 case 133:
  if (func_id != 150 &&
      func_id != 151)
   goto error;
  break;
 default:
  break;
 }


 switch (func_id) {
 case 146:
  if (map->map_type != 136)
   goto error;
  if (env->subprog_cnt > 1) {
   verbose(env, "tail_calls are not allowed in programs with bpf-to-bpf calls\n");
   return -EINVAL;
  }
  break;
 case 157:
 case 158:
 case 156:
  if (map->map_type != 137)
   goto error;
  break;
 case 164:
  if (map->map_type != 129)
   goto error;
  break;
 case 166:
 case 149:
  if (map->map_type != 144)
   goto error;
  break;
 case 155:
  if (map->map_type != 141 &&
      map->map_type != 140 &&
      map->map_type != 142 &&
      map->map_type != 128)
   goto error;
  break;
 case 153:
 case 159:
 case 147:
  if (map->map_type != 131)
   goto error;
  break;
 case 154:
 case 160:
 case 148:
  if (map->map_type != 132)
   goto error;
  break;
 case 165:
  if (map->map_type != 143 &&
      map->map_type != 138)
   goto error;
  break;
 case 152:
  if (map->map_type != 134)
   goto error;
  break;
 case 163:
 case 162:
 case 161:
  if (map->map_type != 135 &&
      map->map_type != 130)
   goto error;
  break;
 case 150:
 case 151:
  if (map->map_type != 133)
   goto error;
  break;
 default:
  break;
 }

 return 0;
error:
 verbose(env, "cannot pass map_type %d into func %s#%d\n",
  map->map_type, func_id_name(func_id), func_id);
 return -EINVAL;
}
