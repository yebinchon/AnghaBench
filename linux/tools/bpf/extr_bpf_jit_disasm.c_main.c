
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ssize_t ;


 int DEFFILEMODE ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int bfd_init () ;
 int close (int) ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int get_asm_insns (int *,unsigned int,unsigned int) ;
 int * get_last_jit_image (char*,unsigned int,unsigned int*) ;
 char* get_log_buff (char*,unsigned int*) ;
 unsigned int getopt (int,char**,char*) ;
 int open (char*,int,int ) ;
 char* optarg ;
 int perror (int *) ;
 int put_log_buff (char*) ;
 int stderr ;
 int usage () ;
 scalar_t__ write (int,int *,unsigned int) ;

int main(int argc, char **argv)
{
 unsigned int len, klen, opt, opcodes = 0;
 char *kbuff, *file = ((void*)0);
 char *ofile = ((void*)0);
 int ofd;
 ssize_t nr;
 uint8_t *pos;
 uint8_t *image = ((void*)0);

 while ((opt = getopt(argc, argv, "of:O:")) != -1) {
  switch (opt) {
  case 'o':
   opcodes = 1;
   break;
  case 'O':
   ofile = optarg;
   break;
  case 'f':
   file = optarg;
   break;
  default:
   usage();
   return -1;
  }
 }

 bfd_init();

 kbuff = get_log_buff(file, &klen);
 if (!kbuff) {
  fprintf(stderr, "Could not retrieve log buffer!\n");
  return -1;
 }

 image = get_last_jit_image(kbuff, klen, &len);
 if (!image) {
  fprintf(stderr, "No JIT image found!\n");
  goto done;
 }
 if (!ofile) {
  get_asm_insns(image, len, opcodes);
  goto done;
 }

 ofd = open(ofile, O_WRONLY | O_CREAT | O_TRUNC, DEFFILEMODE);
 if (ofd < 0) {
  fprintf(stderr, "Could not open file %s for writing: ", ofile);
  perror(((void*)0));
  goto done;
 }
 pos = image;
 do {
  nr = write(ofd, pos, len);
  if (nr < 0) {
   fprintf(stderr, "Could not write data to %s: ", ofile);
   perror(((void*)0));
   goto done;
  }
  len -= nr;
  pos += nr;
 } while (len);
 close(ofd);

done:
 put_log_buff(kbuff);
 free(image);
 return 0;
}
