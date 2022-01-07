
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {int sockfd; int datafd; } ;
struct ion_buffer_info {int buffd; unsigned long buflen; unsigned char* buffer; } ;
typedef int info ;


 void* ION_BUFFER_LEN ;
 int SOCKET_NAME ;
 int closesocket (int,int ) ;
 int fprintf (int ,char*) ;
 int ion_close_buffer_fd (struct ion_buffer_info*) ;
 int ion_import_buffer_fd (struct ion_buffer_info*) ;
 int memset (struct ion_buffer_info*,int ,int) ;
 int opensocket (int*,int ,int ) ;
 int printf (char*,int) ;
 int read_buffer (unsigned char*,unsigned long) ;
 int socket_receive_fd (struct socket_info*) ;
 int stderr ;
 int write_buffer (unsigned char*,unsigned long) ;

int main(void)
{
 int ret, status;
 int sockfd, shared_fd;
 unsigned char *map_buf;
 unsigned long map_len;
 struct ion_buffer_info info;
 struct socket_info skinfo;


 status = opensocket(&sockfd, SOCKET_NAME, 0);
 if (status < 0) {
  fprintf(stderr, "No exporter exists...\n");
  ret = status;
  goto err_socket;
 }

 skinfo.sockfd = sockfd;

 ret = socket_receive_fd(&skinfo);
 if (ret < 0) {
  fprintf(stderr, "Failed: socket_receive_fd\n");
  goto err_recv;
 }

 shared_fd = skinfo.datafd;
 printf("Received buffer fd: %d\n", shared_fd);
 if (shared_fd <= 0) {
  fprintf(stderr, "ERROR: improper buf fd\n");
  ret = -1;
  goto err_fd;
 }

 memset(&info, 0, sizeof(info));
 info.buffd = shared_fd;
 info.buflen = ION_BUFFER_LEN;

 ret = ion_import_buffer_fd(&info);
 if (ret < 0) {
  fprintf(stderr, "Failed: ion_use_buffer_fd\n");
  goto err_import;
 }

 map_buf = info.buffer;
 map_len = info.buflen;
 read_buffer(map_buf, map_len);


 map_len = ION_BUFFER_LEN;
 write_buffer(map_buf, map_len);

err_import:
 ion_close_buffer_fd(&info);
err_fd:
err_recv:
err_socket:
 closesocket(sockfd, SOCKET_NAME);

 return ret;
}
