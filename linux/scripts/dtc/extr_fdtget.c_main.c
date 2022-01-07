
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_info {int size; int default_val; int mode; int type; } ;
typedef int disp ;


 int MODE_LIST_PROPS ;
 int MODE_LIST_SUBNODES ;
 int MODE_SHOW_VALUE ;
 scalar_t__ do_fdtget (struct display_info*,char*,char**,int,int) ;
 int getopt (int,char**,char*) ;
 int memset (struct display_info*,char,int) ;
 int optarg ;
 int optind ;
 int usage (char*) ;
 int utilfdt_decode_type (int ,int *,int*) ;

int main(int argc, char *argv[])
{
 char *filename = ((void*)0);
 struct display_info disp;
 int args_per_step = 2;


 memset(&disp, '\0', sizeof(disp));
 disp.size = -1;
 disp.mode = MODE_SHOW_VALUE;
 for (;;) {
  int c = getopt(argc, argv, "d:hlpt:");
  if (c == -1)
   break;

  switch (c) {
  case 'h':
  case '?':
   usage(((void*)0));

  case 't':
   if (utilfdt_decode_type(optarg, &disp.type,
     &disp.size))
    usage("Invalid type string");
   break;

  case 'p':
   disp.mode = MODE_LIST_PROPS;
   args_per_step = 1;
   break;

  case 'l':
   disp.mode = MODE_LIST_SUBNODES;
   args_per_step = 1;
   break;

  case 'd':
   disp.default_val = optarg;
   break;
  }
 }

 if (optind < argc)
  filename = argv[optind++];
 if (!filename)
  usage("Missing filename");

 argv += optind;
 argc -= optind;


 if (!argc)
  return 0;


 if (args_per_step == 2 && (argc % 2))
  usage("Must have an even number of arguments");

 if (do_fdtget(&disp, filename, argv, argc, args_per_step))
  return 1;
 return 0;
}
