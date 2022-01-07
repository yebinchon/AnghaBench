
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {scalar_t__ sc_handshake_ok; int sc_page_off; int sc_sock; int sc_page; } ;
struct o2net_msg {int data_len; } ;
struct o2net_handshake {int dummy; } ;


 int EOVERFLOW ;
 int EPROTO ;
 int O2NET_MAX_PAYLOAD_BYTES ;
 int be16_to_cpu (int ) ;
 int msglog (struct o2net_msg*,char*,int) ;
 int o2net_check_handshake (struct o2net_sock_container*) ;
 int o2net_process_message (struct o2net_sock_container*,struct o2net_msg*) ;
 int o2net_recv_tcp_msg (int ,void*,size_t) ;
 int o2net_set_advance_start_time (struct o2net_sock_container*) ;
 int o2net_set_advance_stop_time (struct o2net_sock_container*) ;
 void* page_address (int ) ;
 int sclog (struct o2net_sock_container*,char*,...) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int o2net_advance_rx(struct o2net_sock_container *sc)
{
 struct o2net_msg *hdr;
 int ret = 0;
 void *data;
 size_t datalen;

 sclog(sc, "receiving\n");
 o2net_set_advance_start_time(sc);

 if (unlikely(sc->sc_handshake_ok == 0)) {
  if(sc->sc_page_off < sizeof(struct o2net_handshake)) {
   data = page_address(sc->sc_page) + sc->sc_page_off;
   datalen = sizeof(struct o2net_handshake) - sc->sc_page_off;
   ret = o2net_recv_tcp_msg(sc->sc_sock, data, datalen);
   if (ret > 0)
    sc->sc_page_off += ret;
  }

  if (sc->sc_page_off == sizeof(struct o2net_handshake)) {
   o2net_check_handshake(sc);
   if (unlikely(sc->sc_handshake_ok == 0))
    ret = -EPROTO;
  }
  goto out;
 }


 if (sc->sc_page_off < sizeof(struct o2net_msg)) {
  data = page_address(sc->sc_page) + sc->sc_page_off;
  datalen = sizeof(struct o2net_msg) - sc->sc_page_off;
  ret = o2net_recv_tcp_msg(sc->sc_sock, data, datalen);
  if (ret > 0) {
   sc->sc_page_off += ret;



   if (sc->sc_page_off == sizeof(struct o2net_msg)) {
    hdr = page_address(sc->sc_page);
    if (be16_to_cpu(hdr->data_len) >
        O2NET_MAX_PAYLOAD_BYTES)
     ret = -EOVERFLOW;
   }
  }
  if (ret <= 0)
   goto out;
 }

 if (sc->sc_page_off < sizeof(struct o2net_msg)) {

  goto out;
 }


 hdr = page_address(sc->sc_page);

 msglog(hdr, "at page_off %zu\n", sc->sc_page_off);


 if (sc->sc_page_off - sizeof(struct o2net_msg) < be16_to_cpu(hdr->data_len)) {

  data = page_address(sc->sc_page) + sc->sc_page_off;
  datalen = (sizeof(struct o2net_msg) + be16_to_cpu(hdr->data_len)) -
     sc->sc_page_off;
  ret = o2net_recv_tcp_msg(sc->sc_sock, data, datalen);
  if (ret > 0)
   sc->sc_page_off += ret;
  if (ret <= 0)
   goto out;
 }

 if (sc->sc_page_off - sizeof(struct o2net_msg) == be16_to_cpu(hdr->data_len)) {



  ret = o2net_process_message(sc, hdr);
  if (ret == 0)
   ret = 1;
  sc->sc_page_off = 0;
 }

out:
 sclog(sc, "ret = %d\n", ret);
 o2net_set_advance_stop_time(sc);
 return ret;
}
