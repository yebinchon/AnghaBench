
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_ERR ;
 int CMD_OK ;
 int bpf_dump_all (int ,int ) ;
 int bpf_image ;
 int bpf_prog_len ;
 int bpf_prog_loaded () ;

__attribute__((used)) static int cmd_dump(char *dontcare)
{
 if (!bpf_prog_loaded())
  return CMD_ERR;

 bpf_dump_all(bpf_image, bpf_prog_len);

 return CMD_OK;
}
