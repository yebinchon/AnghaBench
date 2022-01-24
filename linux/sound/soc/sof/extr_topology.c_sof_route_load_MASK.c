#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sof_ipc_reply {int error; } ;
struct TYPE_2__ {int size; int cmd; } ;
struct sof_ipc_pipe_comp_connect {int /*<<< orphan*/  list; struct sof_ipc_pipe_comp_connect* private; struct snd_soc_dapm_route* route; TYPE_1__ hdr; int /*<<< orphan*/  sink_id; int /*<<< orphan*/  source_id; struct snd_sof_dev* sdev; } ;
struct snd_sof_widget {scalar_t__ id; int /*<<< orphan*/  comp_id; } ;
struct snd_sof_route {int /*<<< orphan*/  list; struct snd_sof_route* private; struct snd_soc_dapm_route* route; TYPE_1__ hdr; int /*<<< orphan*/  sink_id; int /*<<< orphan*/  source_id; struct snd_sof_dev* sdev; } ;
struct snd_sof_dev {int /*<<< orphan*/  route_list; int /*<<< orphan*/  dev; int /*<<< orphan*/  ipc; } ;
struct snd_soc_dobj {struct sof_ipc_pipe_comp_connect* private; } ;
struct snd_soc_dapm_route {char* control; scalar_t__ source; scalar_t__ sink; struct snd_soc_dobj dobj; } ;
struct snd_soc_component {int dummy; } ;
typedef  int /*<<< orphan*/  reply ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SOF_IPC_GLB_TPLG_MSG ; 
 int SOF_IPC_TPLG_COMP_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (struct sof_ipc_pipe_comp_connect*) ; 
 struct sof_ipc_pipe_comp_connect* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct snd_sof_dev* FUNC5 (struct snd_soc_component*) ; 
 scalar_t__ snd_soc_dapm_buffer ; 
 scalar_t__ snd_soc_dapm_out_drv ; 
 scalar_t__ snd_soc_dapm_output ; 
 struct snd_sof_widget* FUNC6 (struct snd_sof_dev*,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,struct sof_ipc_pipe_comp_connect*,int,struct sof_ipc_reply*,int) ; 

__attribute__((used)) static int FUNC8(struct snd_soc_component *scomp, int index,
			  struct snd_soc_dapm_route *route)
{
	struct snd_sof_dev *sdev = FUNC5(scomp);
	struct sof_ipc_pipe_comp_connect *connect;
	struct snd_sof_widget *source_swidget, *sink_swidget;
	struct snd_soc_dobj *dobj = &route->dobj;
	struct snd_sof_route *sroute;
	struct sof_ipc_reply reply;
	int ret = 0;

	/* allocate memory for sroute and connect */
	sroute = FUNC3(sizeof(*sroute), GFP_KERNEL);
	if (!sroute)
		return -ENOMEM;

	sroute->sdev = sdev;

	connect = FUNC3(sizeof(*connect), GFP_KERNEL);
	if (!connect) {
		FUNC2(sroute);
		return -ENOMEM;
	}

	connect->hdr.size = sizeof(*connect);
	connect->hdr.cmd = SOF_IPC_GLB_TPLG_MSG | SOF_IPC_TPLG_COMP_CONNECT;

	FUNC0(sdev->dev, "sink %s control %s source %s\n",
		route->sink, route->control ? route->control : "none",
		route->source);

	/* source component */
	source_swidget = FUNC6(sdev, (char *)route->source);
	if (!source_swidget) {
		FUNC1(sdev->dev, "error: source %s not found\n",
			route->source);
		ret = -EINVAL;
		goto err;
	}

	/*
	 * Virtual widgets of type output/out_drv may be added in topology
	 * for compatibility. These are not handled by the FW.
	 * So, don't send routes whose source/sink widget is of such types
	 * to the DSP.
	 */
	if (source_swidget->id == snd_soc_dapm_out_drv ||
	    source_swidget->id == snd_soc_dapm_output)
		goto err;

	connect->source_id = source_swidget->comp_id;

	/* sink component */
	sink_swidget = FUNC6(sdev, (char *)route->sink);
	if (!sink_swidget) {
		FUNC1(sdev->dev, "error: sink %s not found\n",
			route->sink);
		ret = -EINVAL;
		goto err;
	}

	/*
	 * Don't send routes whose sink widget is of type
	 * output or out_drv to the DSP
	 */
	if (sink_swidget->id == snd_soc_dapm_out_drv ||
	    sink_swidget->id == snd_soc_dapm_output)
		goto err;

	connect->sink_id = sink_swidget->comp_id;

	/*
	 * For virtual routes, both sink and source are not
	 * buffer. Since only buffer linked to component is supported by
	 * FW, others are reported as error, add check in route function,
	 * do not send it to FW when both source and sink are not buffer
	 */
	if (source_swidget->id != snd_soc_dapm_buffer &&
	    sink_swidget->id != snd_soc_dapm_buffer) {
		FUNC0(sdev->dev, "warning: neither Linked source component %s nor sink component %s is of buffer type, ignoring link\n",
			route->source, route->sink);
		ret = 0;
		goto err;
	} else {
		ret = FUNC7(sdev->ipc,
					 connect->hdr.cmd,
					 connect, sizeof(*connect),
					 &reply, sizeof(reply));

		/* check IPC return value */
		if (ret < 0) {
			FUNC1(sdev->dev, "error: failed to add route sink %s control %s source %s\n",
				route->sink,
				route->control ? route->control : "none",
				route->source);
			goto err;
		}

		/* check IPC reply */
		if (reply.error < 0) {
			FUNC1(sdev->dev, "error: DSP failed to add route sink %s control %s source %s result %d\n",
				route->sink,
				route->control ? route->control : "none",
				route->source, reply.error);
			ret = reply.error;
			goto err;
		}

		sroute->route = route;
		dobj->private = sroute;
		sroute->private = connect;

		/* add route to route list */
		FUNC4(&sroute->list, &sdev->route_list);

		return ret;
	}

err:
	FUNC2(connect);
	FUNC2(sroute);
	return ret;
}