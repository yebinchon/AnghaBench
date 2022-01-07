; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_load_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_sof_widget = type { %struct.TYPE_6__*, %struct.sof_ipc_buffer*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sof_ipc_buffer = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_soc_tplg_dapm_widget = type { %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, i32 }
%struct.sof_ipc_comp_reply = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOF_IPC_GLB_TPLG_MSG = common dso_local global i32 0, align 4
@SOF_IPC_TPLG_BUFFER_NEW = common dso_local global i32 0, align 4
@SOF_COMP_BUFFER = common dso_local global i32 0, align 4
@buffer_tokens = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error: parse buffer tokens failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"buffer %s: size %d caps 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"error: buffer %s load failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_sof_widget*, %struct.snd_soc_tplg_dapm_widget*, %struct.sof_ipc_comp_reply*)* @sof_widget_load_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_widget_load_buffer(%struct.snd_soc_component* %0, i32 %1, %struct.snd_sof_widget* %2, %struct.snd_soc_tplg_dapm_widget* %3, %struct.sof_ipc_comp_reply* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_sof_widget*, align 8
  %10 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %11 = alloca %struct.sof_ipc_comp_reply*, align 8
  %12 = alloca %struct.snd_sof_dev*, align 8
  %13 = alloca %struct.snd_soc_tplg_private*, align 8
  %14 = alloca %struct.sof_ipc_buffer*, align 8
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
  %21 = call %struct.sof_ipc_buffer* @kzalloc(i32 28, i32 %20)
  store %struct.sof_ipc_buffer* %21, %struct.sof_ipc_buffer** %14, align 8
  %22 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %23 = icmp ne %struct.sof_ipc_buffer* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %125

27:                                               ; preds = %5
  %28 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %29 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 28, i32* %31, align 4
  %32 = load i32, i32* @SOF_IPC_GLB_TPLG_MSG, align 4
  %33 = load i32, i32* @SOF_IPC_TPLG_BUFFER_NEW, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %36 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  %39 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %40 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %43 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @SOF_COMP_BUFFER, align 4
  %46 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %47 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %51 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %54 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %55 = load i32, i32* @buffer_tokens, align 4
  %56 = load i32, i32* @buffer_tokens, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %59 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %62 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = call i32 @sof_parse_tokens(%struct.snd_soc_component* %53, %struct.sof_ipc_buffer* %54, i32 %55, i32 %57, i32 %60, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %27
  %69 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %70 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %73 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %77 = call i32 @kfree(%struct.sof_ipc_buffer* %76)
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %6, align 4
  br label %125

79:                                               ; preds = %27
  %80 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %81 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %84 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %89 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %92 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i32 %93)
  %95 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %96 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %97 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %96, i32 0, i32 1
  store %struct.sof_ipc_buffer* %95, %struct.sof_ipc_buffer** %97, align 8
  %98 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %99 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %102 = getelementptr inbounds %struct.sof_ipc_buffer, %struct.sof_ipc_buffer* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %107 = load %struct.sof_ipc_comp_reply*, %struct.sof_ipc_comp_reply** %11, align 8
  %108 = call i32 @sof_ipc_tx_message(i32 %100, i32 %105, %struct.sof_ipc_buffer* %106, i32 28, %struct.sof_ipc_comp_reply* %107, i32 4)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %79
  %112 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %113 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %116 = getelementptr inbounds %struct.snd_sof_widget, %struct.snd_sof_widget* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.sof_ipc_buffer*, %struct.sof_ipc_buffer** %14, align 8
  %122 = call i32 @kfree(%struct.sof_ipc_buffer* %121)
  br label %123

123:                                              ; preds = %111, %79
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %68, %24
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local %struct.sof_ipc_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @sof_parse_tokens(%struct.snd_soc_component*, %struct.sof_ipc_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.sof_ipc_buffer*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sof_ipc_tx_message(i32, i32, %struct.sof_ipc_buffer*, i32, %struct.sof_ipc_comp_reply*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
