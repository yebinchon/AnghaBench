
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 char* filename ;
 int getopt (int,char**,char*) ;
 int logo_type ;
 void* logoname ;
 void* optarg ;
 scalar_t__ opterr ;
 int optind ;
 void* outputname ;
 char* programname ;
 int read_image () ;
 int strcmp (void*,char*) ;
 int usage () ;
 int write_logo_clut224 () ;
 int write_logo_gray256 () ;
 int write_logo_mono () ;
 int write_logo_vga16 () ;

int main(int argc, char *argv[])
{
    int opt;

    programname = argv[0];

    opterr = 0;
    while (1) {
 opt = getopt(argc, argv, "hn:o:t:");
 if (opt == -1)
     break;

 switch (opt) {
     case 'h':
  usage();
  break;

     case 'n':
  logoname = optarg;
  break;

     case 'o':
  outputname = optarg;
  break;

     case 't':
  if (!strcmp(optarg, "mono"))
      logo_type = 129;
  else if (!strcmp(optarg, "vga16"))
      logo_type = 128;
  else if (!strcmp(optarg, "clut224"))
      logo_type = 131;
  else if (!strcmp(optarg, "gray256"))
      logo_type = 130;
  else
      usage();
  break;

     default:
  usage();
  break;
 }
    }
    if (optind != argc-1)
 usage();

    filename = argv[optind];

    read_image();
    switch (logo_type) {
 case 129:
     write_logo_mono();
     break;

 case 128:
     write_logo_vga16();
     break;

 case 131:
     write_logo_clut224();
     break;

 case 130:
     write_logo_gray256();
     break;
    }
    exit(0);
}
