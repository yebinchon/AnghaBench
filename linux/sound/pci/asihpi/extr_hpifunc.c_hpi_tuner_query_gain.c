
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;


 int HPI_TUNER_BAND ;
 scalar_t__ hpi_control_query (scalar_t__ const,int ,scalar_t__ const,int ,scalar_t__*) ;

u16 hpi_tuner_query_gain(const u32 h_tuner, const u32 index, u16 *pw_gain)
{
 u32 qr;
 u16 err;

 err = hpi_control_query(h_tuner, HPI_TUNER_BAND, index, 0, &qr);
 *pw_gain = (u16)qr;
 return err;
}
