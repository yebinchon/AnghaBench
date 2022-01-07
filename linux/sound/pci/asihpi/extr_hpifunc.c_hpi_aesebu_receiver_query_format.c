
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_AESEBURX_FORMAT ;
 scalar_t__ hpi_control_query (scalar_t__ const,int ,scalar_t__ const,int ,scalar_t__*) ;

u16 hpi_aesebu_receiver_query_format(const u32 h_aes_rx, const u32 index,
 u16 *pw_format)
{
 u32 qr;
 u16 err;

 err = hpi_control_query(h_aes_rx, HPI_AESEBURX_FORMAT, index, 0, &qr);
 *pw_format = (u16)qr;
 return err;
}
