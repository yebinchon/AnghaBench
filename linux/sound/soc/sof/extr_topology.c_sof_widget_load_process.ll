; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_load_process.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_widget_load_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_sof_widget = type { i32 }
%struct.snd_soc_tplg_dapm_widget = type { %struct.snd_soc_tplg_private }
%struct.snd_soc_tplg_private = type { i32, i32 }
%struct.sof_ipc_comp_reply = type { i32 }
%struct.snd_sof_dev = type { i32 }
%struct.sof_ipc_comp_process = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"error: process tokens not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@process_tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"error: parse process tokens failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error: process loading failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, %struct.snd_sof_widget*, %struct.snd_soc_tplg_dapm_widget*, %struct.sof_ipc_comp_reply*)* @sof_widget_load_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_widget_load_process(%struct.snd_soc_component* %0, i32 %1, %struct.snd_sof_widget* %2, %struct.snd_soc_tplg_dapm_widget* %3, %struct.sof_ipc_comp_reply* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_sof_widget*, align 8
  %10 = alloca %struct.snd_soc_tplg_dapm_widget*, align 8
  %11 = alloca %struct.sof_ipc_comp_reply*, align 8
  %12 = alloca %struct.snd_sof_dev*, align 8
  %13 = alloca %struct.snd_soc_tplg_private*, align 8
  %14 = alloca %struct.sof_ipc_comp_process, align 4
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
  %20 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %21 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %27 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %77

32:                                               ; preds = %5
  %33 = call i32 @memset(%struct.sof_ipc_comp_process* %14, i32 0, i32 4)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %35 = load i32, i32* @process_tokens, align 4
  %36 = load i32, i32* @process_tokens, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %39 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %42 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = call i32 @sof_parse_tokens(%struct.snd_soc_component* %34, %struct.sof_ipc_comp_process* %14, i32 %35, i32 %37, i32 %40, i64 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %32
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %50 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_soc_tplg_private*, %struct.snd_soc_tplg_private** %13, align 8
  %53 = getelementptr inbounds %struct.snd_soc_tplg_private, %struct.snd_soc_tplg_private* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @le32_to_cpu(i32 %54)
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %77

58:                                               ; preds = %32
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.snd_sof_widget*, %struct.snd_sof_widget** %9, align 8
  %62 = load %struct.snd_soc_tplg_dapm_widget*, %struct.snd_soc_tplg_dapm_widget** %10, align 8
  %63 = load %struct.sof_ipc_comp_reply*, %struct.sof_ipc_comp_reply** %11, align 8
  %64 = getelementptr inbounds %struct.sof_ipc_comp_process, %struct.sof_ipc_comp_process* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @find_process_comp_type(i32 %65)
  %67 = call i32 @sof_process_load(%struct.snd_soc_component* %59, i32 %60, %struct.snd_sof_widget* %61, %struct.snd_soc_tplg_dapm_widget* %62, %struct.sof_ipc_comp_reply* %63, i32 %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %12, align 8
  %72 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @dev_err(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %70, %48, %25
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local %struct.snd_sof_dev* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.sof_ipc_comp_process*, i32, i32) #1

declare dso_local i32 @sof_parse_tokens(%struct.snd_soc_component*, %struct.sof_ipc_comp_process*, i32, i32, i32, i64) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sof_process_load(%struct.snd_soc_component*, i32, %struct.snd_sof_widget*, %struct.snd_soc_tplg_dapm_widget*, %struct.sof_ipc_comp_reply*, i32) #1

declare dso_local i32 @find_process_comp_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
