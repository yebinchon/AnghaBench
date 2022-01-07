
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BPF_F_GET ;
 int BPF_F_KEY ;
 int BPF_F_PIN ;
 int BPF_F_PIN_GET ;
 int BPF_F_VAL ;


 int BPF_M_UNSPEC ;
 int bpf_do_map (char const*,int,int,int) ;
 int bpf_do_prog (char const*,int,char const*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int strtoul (char*,int *,int ) ;
 int usage () ;

int main(int argc, char **argv)
{
 const char *file = ((void*)0), *object = ((void*)0);
 uint32_t key = 0, value = 0, flags = 0;
 int opt, mode = BPF_M_UNSPEC;

 while ((opt = getopt(argc, argv, "F:PGmk:v:po:")) != -1) {
  switch (opt) {

  case 'F':
   file = optarg;
   break;
  case 'P':
   flags |= BPF_F_PIN;
   break;
  case 'G':
   flags |= BPF_F_GET;
   break;

  case 'm':
   mode = 129;
   break;
  case 'k':
   key = strtoul(optarg, ((void*)0), 0);
   flags |= BPF_F_KEY;
   break;
  case 'v':
   value = strtoul(optarg, ((void*)0), 0);
   flags |= BPF_F_VAL;
   break;

  case 'p':
   mode = 128;
   break;
  case 'o':
   object = optarg;
   break;
  default:
   goto out;
  }
 }

 if (!(flags & BPF_F_PIN_GET) || !file)
  goto out;

 switch (mode) {
 case 129:
  return bpf_do_map(file, flags, key, value);
 case 128:
  return bpf_do_prog(file, flags, object);
 }
out:
 usage();
 return -1;
}
