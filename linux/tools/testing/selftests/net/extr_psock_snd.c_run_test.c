
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_hdr {int dummy; } ;


 int DATA_LEN ;
 int cfg_payload_len ;
 int cfg_use_vlan ;
 scalar_t__ close (int) ;
 int do_rx (int,int,scalar_t__) ;
 int do_tx () ;
 int errno ;
 int error (int,int ,char*) ;
 int setup_rx () ;
 int setup_sniffer () ;
 scalar_t__ tbuf ;

__attribute__((used)) static void run_test(void)
{
 int fdr, fds, total_len;

 fdr = setup_rx();
 fds = setup_sniffer();

 total_len = do_tx();


 if (cfg_payload_len == DATA_LEN && !cfg_use_vlan)
  do_rx(fds, total_len - sizeof(struct virtio_net_hdr),
        tbuf + sizeof(struct virtio_net_hdr));

 do_rx(fdr, cfg_payload_len, tbuf + total_len - cfg_payload_len);

 if (close(fds))
  error(1, errno, "close s");
 if (close(fdr))
  error(1, errno, "close r");
}
