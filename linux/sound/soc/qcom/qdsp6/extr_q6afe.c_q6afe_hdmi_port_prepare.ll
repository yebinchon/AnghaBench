; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_hdmi_port_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_hdmi_port_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6afe_port = type { %union.afe_port_config }
%union.afe_port_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.q6afe_hdmi_cfg = type { i32, i32, i32, i32 }

@AFE_API_VERSION_HDMI_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @q6afe_hdmi_port_prepare(%struct.q6afe_port* %0, %struct.q6afe_hdmi_cfg* %1) #0 {
  %3 = alloca %struct.q6afe_port*, align 8
  %4 = alloca %struct.q6afe_hdmi_cfg*, align 8
  %5 = alloca %union.afe_port_config*, align 8
  store %struct.q6afe_port* %0, %struct.q6afe_port** %3, align 8
  store %struct.q6afe_hdmi_cfg* %1, %struct.q6afe_hdmi_cfg** %4, align 8
  %6 = load %struct.q6afe_port*, %struct.q6afe_port** %3, align 8
  %7 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %6, i32 0, i32 0
  store %union.afe_port_config* %7, %union.afe_port_config** %5, align 8
  %8 = load i32, i32* @AFE_API_VERSION_HDMI_CONFIG, align 4
  %9 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %10 = bitcast %union.afe_port_config* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 4
  store i32 %8, i32* %11, align 4
  %12 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %16 = bitcast %union.afe_port_config* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store i32 %14, i32* %17, align 4
  %18 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %4, align 8
  %19 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %22 = bitcast %union.afe_port_config* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %4, align 8
  %25 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %28 = bitcast %union.afe_port_config* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.q6afe_hdmi_cfg*, %struct.q6afe_hdmi_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.q6afe_hdmi_cfg, %struct.q6afe_hdmi_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %union.afe_port_config*, %union.afe_port_config** %5, align 8
  %34 = bitcast %union.afe_port_config* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
