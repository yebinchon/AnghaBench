
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int SPI_LOOP ;
 int _read_count ;
 int _write_count ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int free (int *) ;
 int hex_dump (int *,int,int,char*) ;
 int * malloc (int) ;
 scalar_t__ memcmp (int *,int *,int) ;
 int mode ;
 int pabort (char*) ;
 int random () ;
 int stderr ;
 int transfer (int,int *,int *,int) ;

__attribute__((used)) static void transfer_buf(int fd, int len)
{
 uint8_t *tx;
 uint8_t *rx;
 int i;

 tx = malloc(len);
 if (!tx)
  pabort("can't allocate tx buffer");
 for (i = 0; i < len; i++)
  tx[i] = random();

 rx = malloc(len);
 if (!rx)
  pabort("can't allocate rx buffer");

 transfer(fd, tx, rx, len);

 _write_count += len;
 _read_count += len;

 if (mode & SPI_LOOP) {
  if (memcmp(tx, rx, len)) {
   fprintf(stderr, "transfer error !\n");
   hex_dump(tx, len, 32, "TX");
   hex_dump(rx, len, 32, "RX");
   exit(1);
  }
 }

 free(rx);
 free(tx);
}
