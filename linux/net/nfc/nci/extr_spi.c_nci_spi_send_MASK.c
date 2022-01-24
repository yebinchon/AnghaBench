#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct sk_buff {unsigned int len; int /*<<< orphan*/  data; } ;
struct nci_spi {unsigned char acknowledge_mode; scalar_t__ req_result; int /*<<< orphan*/  req_completion; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACKNOWLEDGE_NACK ; 
 int /*<<< orphan*/  CRC_INIT ; 
 int EIO ; 
 int ETIME ; 
 unsigned char NCI_SPI_CRC_DISABLED ; 
 unsigned char NCI_SPI_CRC_ENABLED ; 
 unsigned char NCI_SPI_DIRECT_WRITE ; 
 int /*<<< orphan*/  NCI_SPI_HDR_LEN ; 
 int /*<<< orphan*/  NCI_SPI_SEND_TIMEOUT ; 
 int FUNC0 (struct nci_spi*,struct sk_buff*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct completion*,int /*<<< orphan*/ ) ; 

int FUNC9(struct nci_spi *nspi,
		 struct completion *write_handshake_completion,
		 struct sk_buff *skb)
{
	unsigned int payload_len = skb->len;
	unsigned char *hdr;
	int ret;
	long completion_rc;

	/* add the NCI SPI header to the start of the buffer */
	hdr = FUNC5(skb, NCI_SPI_HDR_LEN);
	hdr[0] = NCI_SPI_DIRECT_WRITE;
	hdr[1] = nspi->acknowledge_mode;
	hdr[2] = payload_len >> 8;
	hdr[3] = payload_len & 0xFF;

	if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED) {
		u16 crc;

		crc = FUNC1(CRC_INIT, skb->data, skb->len);
		FUNC6(skb, crc >> 8);
		FUNC6(skb, crc & 0xFF);
	}

	if (write_handshake_completion)	{
		/* Trick SPI driver to raise chip select */
		ret = FUNC0(nspi, NULL, 1);
		if (ret)
			goto done;

		/* wait for NFC chip hardware handshake to complete */
		if (FUNC8(write_handshake_completion,
						FUNC3(1000)) == 0) {
			ret = -ETIME;
			goto done;
		}
	}

	ret = FUNC0(nspi, skb, 0);
	if (ret != 0 || nspi->acknowledge_mode == NCI_SPI_CRC_DISABLED)
		goto done;

	FUNC4(&nspi->req_completion);
	completion_rc =	FUNC7(
							&nspi->req_completion,
							NCI_SPI_SEND_TIMEOUT);

	if (completion_rc <= 0 || nspi->req_result == ACKNOWLEDGE_NACK)
		ret = -EIO;

done:
	FUNC2(skb);

	return ret;
}