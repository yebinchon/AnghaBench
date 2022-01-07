
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EC_SPACE_SIZE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int atoi (char*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int printf (char*,char*) ;
 int read_byte_offset ;
 int read_mode ;
 int sleep_time ;
 int stderr ;
 void* strtoul (char*,int *,int) ;
 int usage (char*,int ) ;
 scalar_t__ write_byte_offset ;
 int write_value ;

void parse_opts(int argc, char *argv[])
{
 int c;

 while ((c = getopt(argc, argv, "rs:b:w:v:h")) != -1) {

  switch (c) {
  case 'r':
   if (read_mode != -1)
    usage(argv[0], EXIT_FAILURE);
   read_mode = 1;
   break;
  case 's':
   if (read_mode != -1 && read_mode != 1)
    usage(argv[0], EXIT_FAILURE);

   sleep_time = atoi(optarg);
   if (sleep_time <= 0) {
    sleep_time = 0;
    usage(argv[0], EXIT_FAILURE);
    printf("Bad sleep time: %s\n", optarg);
   }
   break;
  case 'b':
   if (read_mode != -1)
    usage(argv[0], EXIT_FAILURE);
   read_mode = 1;
   read_byte_offset = strtoul(optarg, ((void*)0), 16);
   break;
  case 'w':
   if (read_mode != -1)
    usage(argv[0], EXIT_FAILURE);
   read_mode = 0;
   write_byte_offset = strtoul(optarg, ((void*)0), 16);
   break;
  case 'v':
   write_value = strtoul(optarg, ((void*)0), 16);
   break;
  case 'h':
   usage(argv[0], EXIT_SUCCESS);
  default:
   fprintf(stderr, "Unknown option!\n");
   usage(argv[0], EXIT_FAILURE);
  }
 }
 if (read_mode == 0) {
  if (write_byte_offset < 0 ||
      write_byte_offset >= EC_SPACE_SIZE) {
   fprintf(stderr, "Wrong byte offset 0x%.2x, valid: "
    "[0-0x%.2x]\n",
    write_byte_offset, EC_SPACE_SIZE - 1);
   usage(argv[0], EXIT_FAILURE);
  }
  if (write_value < 0 ||
      write_value >= 255) {
   fprintf(stderr, "Wrong byte offset 0x%.2x, valid:"
    "[0-0xff]\n", write_byte_offset);
   usage(argv[0], EXIT_FAILURE);
  }
 }
 if (read_mode == 1 && read_byte_offset != -1) {
  if (read_byte_offset < -1 ||
      read_byte_offset >= EC_SPACE_SIZE) {
   fprintf(stderr, "Wrong byte offset 0x%.2x, valid: "
    "[0-0x%.2x]\n",
    read_byte_offset, EC_SPACE_SIZE - 1);
   usage(argv[0], EXIT_FAILURE);
  }
 }

}
