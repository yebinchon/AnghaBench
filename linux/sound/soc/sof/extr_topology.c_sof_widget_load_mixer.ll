; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_load_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_load_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_sof_widget = type { %struct.sof_ipc_comp_mixer*, i32 }
%struct.sof_ipc_comp_mixer = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.snd_soc_tplg_dapm_widget = type { %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, i32 }
%struct.sof_ipc_comp_reply = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOF_IPC_GLB_TPLG_MSG = common dso_local global i32 0, align 4
@SOF_IPC_TPLG_COMP_NEW = common dso_local global i32 0, align 4
@SOF_COMP_MIXER = common dso_local global i32 0, align 4
@comp_tokens = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: parse mixer.cfg tokens failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_sof_widget*, %struct.snd_soc_tplg_dapm_widget*, %struct.sof_ipc_comp_reply*)* @sof_widget_load_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_widget_load_mixer(%struct.snd_soc_component* %0, i32 %1, %struct.snd_sof_widget* %2, %struct.snd_soc_tplg_dapm_widget* %3, %struct.sof_ipc_comp_reply* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_sof_widget*, align 8
  %10 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %11 = alloca %struct.sof_ipc_comp_reply*, align 8
  %12 = alloca %struct.snd_sof_dev*, align 8
  %13 = alloca %struct.snd_soc_tplg_private*, align 8
  %14 = alloca %struct.sof_ipc_comp_mixer*, align 8
  %15 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.snd_sof_widget* %2, %struct.snd_sof_widget** %9, align 8
  store %struct.snd_soc_tplg_dapm_widget* %3, %struct.snd_soc_tplg_dapm_widget** %10, align 8
  store %struct.sof_ipc_comp_reply* %4, %struct.sof_ipc_comp_reply** %11, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %17 = call %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.snd_sof_dev* %17, %struct.snd_sof_dev** %12, align 8
  %18 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %10, align 8
  %19 = getelementptr inbounds %struct.snd_soc_tplg_dapm_widget, %struct.snd_soc_tplg_dapm_widget* %18, i32 0, i32 0
  store %struct.snd_soc_tplg_private* %19, %struct.snd_soc_tplg_private** %13, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sof_ipc_comp_mixer* @kzalloc(i32 24, i32 %20)
  store %struct.sof_ipc_comp_mixer* %21, %struct.sof_ipc_comp_mixer** %14, align 8
  %22 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %23 = icmp ne %struct.sof_ipc_comp_mixer* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %110

27:                                               ; preds = %5
  %28 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %29 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 24, i32* %31, align 4
  %32 = load i32, i32* @SOF_IPC_GLB_TPLG_MSG, align 4
  %33 = load i32, i32* @SOF_IPC_TPLG_COMP_NEW, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %36 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %40 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %43 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SOF_COMP_MIXER, align 4
  %46 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %47 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %51 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %54 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %58 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %59 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %58, i32 0, i32 1
  %60 = load i32, i32* @comp_tokens, align 4
  %61 = load i32, i32* @comp_tokens, align 4
  %62 = call i32 @ARRAY_SIZE(i32 %61)
  %63 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %64 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %67 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = call i32 @sof_parse_tokens(%struct.snd_soc_component* %57, %struct.TYPE_9__* %59, i32 %60, i32 %62, i32 %65, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %27
  %74 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %75 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %78 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %82 = call i32 @kfree(%struct.sof_ipc_comp_mixer* %81)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %110

84:                                               ; preds = %27
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %86 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %87 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %86, i32 0, i32 1
  %88 = call i32 @sof_dbg_comp_config(%struct.snd_soc_component* %85, %struct.TYPE_9__* %87)
  %89 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %90 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %91 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %90, i32 0, i32 0
  store %struct.sof_ipc_comp_mixer* %89, %struct.sof_ipc_comp_mixer** %91, align 8
  %92 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %93 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %96 = getelementptr inbounds %struct.sof_ipc_comp_mixer, %struct.sof_ipc_comp_mixer* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %101 = load %struct.sof_ipc_comp_reply*, %struct.sof_ipc_comp_reply** %11, align 8
  %102 = call i32 @sof_ipc_tx_message(i32 %94, i32 %99, %struct.sof_ipc_comp_mixer* %100, i32 24, %struct.sof_ipc_comp_reply* %101, i32 4)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %84
  %106 = load %struct.sof_ipc_comp_mixer*, %struct.sof_ipc_comp_mixer** %14, align 8
  %107 = call i32 @kfree(%struct.sof_ipc_comp_mixer* %106)
  br label %108

108:                                              ; preds = %105, %84
  %109 = load i32, i32* %15, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %108, %73, %24
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.sof_ipc_comp_mixer* @kzalloc(i32, i32) #1

declare dso_local i32 @sof_parse_tokens(%struct.snd_soc_component*, %struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.sof_ipc_comp_mixer*) #1

declare dso_local i32 @sof_dbg_comp_config(%struct.snd_soc_component*, %struct.TYPE_9__*) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_comp_mixer*, i32, %struct.sof_ipc_comp_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
