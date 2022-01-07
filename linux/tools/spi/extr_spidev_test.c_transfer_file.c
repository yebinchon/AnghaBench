
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct stat {scalar_t__ st_size; } ;
typedef scalar_t__ ssize_t ;


 int O_RDONLY ;
 int close (int) ;
 int free (int *) ;
 int * malloc (scalar_t__) ;
 int open (char*,int ) ;
 int pabort (char*) ;
 scalar_t__ read (int,int *,scalar_t__) ;
 int stat (char*,struct stat*) ;
 int transfer (int,int *,int *,scalar_t__) ;

__attribute__((used)) static void transfer_file(int fd, char *filename)
{
 ssize_t bytes;
 struct stat sb;
 int tx_fd;
 uint8_t *tx;
 uint8_t *rx;

 if (stat(filename, &sb) == -1)
  pabort("can't stat input file");

 tx_fd = open(filename, O_RDONLY);
 if (tx_fd < 0)
  pabort("can't open input file");

 tx = malloc(sb.st_size);
 if (!tx)
  pabort("can't allocate tx buffer");

 rx = malloc(sb.st_size);
 if (!rx)
  pabort("can't allocate rx buffer");

 bytes = read(tx_fd, tx, sb.st_size);
 if (bytes != sb.st_size)
  pabort("failed to read input file");

 transfer(fd, tx, rx, sb.st_size);
 free(rx);
 free(tx);
 close(tx_fd);
}
