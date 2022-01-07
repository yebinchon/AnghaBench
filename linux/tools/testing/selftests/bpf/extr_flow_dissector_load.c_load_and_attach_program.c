
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int dummy; } ;


 int BPF_FLOW_DISSECTOR ;
 int bpf_flow_load (struct bpf_object**,char*,int ,int ,int *,int*,int *) ;
 int bpf_object__pin (struct bpf_object*,char*) ;
 int bpf_prog_attach (int,int ,int ,int ) ;
 int cfg_map_name ;
 char* cfg_path_name ;
 char* cfg_pin_path ;
 int cfg_section_name ;
 int error (int,int ,char*,char*) ;

__attribute__((used)) static void load_and_attach_program(void)
{
 int prog_fd, ret;
 struct bpf_object *obj;

 ret = bpf_flow_load(&obj, cfg_path_name, cfg_section_name,
       cfg_map_name, ((void*)0), &prog_fd, ((void*)0));
 if (ret)
  error(1, 0, "bpf_flow_load %s", cfg_path_name);

 ret = bpf_prog_attach(prog_fd, 0 , BPF_FLOW_DISSECTOR, 0);
 if (ret)
  error(1, 0, "bpf_prog_attach %s", cfg_path_name);

 ret = bpf_object__pin(obj, cfg_pin_path);
 if (ret)
  error(1, 0, "bpf_object__pin %s", cfg_pin_path);
}
