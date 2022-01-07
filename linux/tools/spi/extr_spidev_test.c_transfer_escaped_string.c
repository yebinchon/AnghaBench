
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int free (int *) ;
 int * malloc (size_t) ;
 int pabort (char*) ;
 size_t strlen (char*) ;
 int transfer (int,int *,int *,size_t) ;
 size_t unescape (char*,char*,size_t) ;

__attribute__((used)) static void transfer_escaped_string(int fd, char *str)
{
 size_t size = strlen(str);
 uint8_t *tx;
 uint8_t *rx;

 tx = malloc(size);
 if (!tx)
  pabort("can't allocate tx buffer");

 rx = malloc(size);
 if (!rx)
  pabort("can't allocate rx buffer");

 size = unescape((char *)tx, str, size);
 transfer(fd, tx, rx, size);
 free(rx);
 free(tx);
}
