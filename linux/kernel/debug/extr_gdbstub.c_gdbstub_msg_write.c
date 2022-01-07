
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUFMAX ;
 char* gdbmsgbuf ;
 char* hex_byte_pack (char*,char const) ;
 int put_packet (char*) ;
 int strlen (char const*) ;

void gdbstub_msg_write(const char *s, int len)
{
 char *bufptr;
 int wcount;
 int i;

 if (len == 0)
  len = strlen(s);


 gdbmsgbuf[0] = 'O';


 while (len > 0) {
  bufptr = gdbmsgbuf + 1;


  if ((len << 1) > (BUFMAX - 2))
   wcount = (BUFMAX - 2) >> 1;
  else
   wcount = len;


  for (i = 0; i < wcount; i++)
   bufptr = hex_byte_pack(bufptr, s[i]);
  *bufptr = '\0';


  s += wcount;
  len -= wcount;


  put_packet(gdbmsgbuf);
 }
}
