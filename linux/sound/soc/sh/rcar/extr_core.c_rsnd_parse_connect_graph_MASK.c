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
struct rsnd_priv {int dummy; } ;
struct rsnd_dai_stream {int /*<<< orphan*/  name; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RSND_STREAM_HDMI0 ; 
 int /*<<< orphan*/  RSND_STREAM_HDMI1 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct rsnd_dai_stream*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rsnd_dai_stream*) ; 
 int /*<<< orphan*/  FUNC4 (struct rsnd_priv*,struct rsnd_dai_stream*,struct device_node*) ; 
 struct device* FUNC5 (struct rsnd_priv*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC7(struct rsnd_priv *priv,
				     struct rsnd_dai_stream *io,
				     struct device_node *endpoint)
{
	struct device *dev = FUNC5(priv);
	struct device_node *remote_node = FUNC1(endpoint);

	if (!FUNC3(io))
		return;

	/* HDMI0 */
	if (FUNC6(remote_node->full_name, "hdmi@fead0000")) {
		FUNC2(io, RSND_STREAM_HDMI0);
		FUNC0(dev, "%s connected to HDMI0\n", io->name);
	}

	/* HDMI1 */
	if (FUNC6(remote_node->full_name, "hdmi@feae0000")) {
		FUNC2(io, RSND_STREAM_HDMI1);
		FUNC0(dev, "%s connected to HDMI1\n", io->name);
	}

	FUNC4(priv, io, endpoint);
}