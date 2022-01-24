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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nci_spi {scalar_t__ acknowledge_mode; int /*<<< orphan*/  req_completion; int /*<<< orphan*/  req_result; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACKNOWLEDGE_ACK ; 
 int /*<<< orphan*/  ACKNOWLEDGE_NACK ; 
 scalar_t__ NCI_SPI_CRC_ENABLED ; 
 struct sk_buff* FUNC0 (struct nci_spi*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_spi*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC6(struct nci_spi *nspi)
{
	struct sk_buff *skb;

	/* Retrieve frame from SPI */
	skb = FUNC0(nspi);
	if (!skb)
		goto done;

	if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED) {
		if (!FUNC3(skb)) {
			FUNC5(nspi, ACKNOWLEDGE_NACK);
			goto done;
		}

		/* In case of acknowledged mode: if ACK or NACK received,
		 * unblock completion of latest frame sent.
		 */
		nspi->req_result = FUNC4(skb);
		if (nspi->req_result)
			FUNC1(&nspi->req_completion);
	}

	/* If there is no payload (ACK/NACK only frame),
	 * free the socket buffer
	 */
	if (!skb->len) {
		FUNC2(skb);
		skb = NULL;
		goto done;
	}

	if (nspi->acknowledge_mode == NCI_SPI_CRC_ENABLED)
		FUNC5(nspi, ACKNOWLEDGE_ACK);

done:

	return skb;
}