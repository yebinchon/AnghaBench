; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_set_media_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_set_media_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.sst_ids*, i32 }
%struct.sst_ids = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.sst_cmd_set_media_path = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"widget=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"task=%u, location=%#x\0A\00", align 1
@SST_PATH_ON = common dso_local global i32 0, align 4
@SST_PATH_OFF = common dso_local global i32 0, align 4
@SST_DEFAULT_MODULE_ID = common dso_local global i32 0, align 4
@MMX_SET_MEDIA_PATH = common dso_local global i32 0, align 4
@SST_IPC_IA_CMD = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @sst_set_media_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_set_media_path(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sst_cmd_set_media_path, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.sst_data*, align 8
  %12 = alloca %struct.sst_ids*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %15)
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %10, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %18 = call %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.sst_data* %18, %struct.sst_data** %11, align 8
  %19 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %19, i32 0, i32 1
  %21 = load %struct.sst_ids*, %struct.sst_ids** %20, align 8
  store %struct.sst_ids* %21, %struct.sst_ids** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %30 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sst_ids*, %struct.sst_ids** %12, align 8
  %33 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sst_ids*, %struct.sst_ids** %12, align 8
  %36 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @SST_PATH_ON, align 4
  %44 = getelementptr inbounds %struct.sst_cmd_set_media_path, %struct.sst_cmd_set_media_path* %9, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  br label %48

45:                                               ; preds = %3
  %46 = load i32, i32* @SST_PATH_OFF, align 4
  %47 = getelementptr inbounds %struct.sst_cmd_set_media_path, %struct.sst_cmd_set_media_path* %9, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = getelementptr inbounds %struct.sst_cmd_set_media_path, %struct.sst_cmd_set_media_path* %9, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sst_ids*, %struct.sst_ids** %12, align 8
  %53 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SST_DEFAULT_MODULE_ID, align 4
  %56 = call i32 @SST_FILL_DESTINATION(i32 2, i32 %51, i32 %54, i32 %55)
  %57 = load i32, i32* @MMX_SET_MEDIA_PATH, align 4
  %58 = getelementptr inbounds %struct.sst_cmd_set_media_path, %struct.sst_cmd_set_media_path* %9, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.sst_cmd_set_media_path, %struct.sst_cmd_set_media_path* %9, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 12, i32* %61, align 4
  %62 = load %struct.sst_data*, %struct.sst_data** %11, align 8
  %63 = load i32, i32* @SST_IPC_IA_CMD, align 4
  %64 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %65 = load %struct.sst_ids*, %struct.sst_ids** %12, align 8
  %66 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.sst_cmd_set_media_path, %struct.sst_cmd_set_media_path* %9, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 12, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @sst_fill_and_send_cmd(%struct.sst_data* %62, i32 %63, i32 %64, i32 %67, i32 0, %struct.sst_cmd_set_media_path* %9, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %48
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %4, align 4
  br label %89

79:                                               ; preds = %48
  %80 = load i32, i32* %7, align 4
  %81 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %85 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %86 = call i32 @sst_send_pipe_module_params(%struct.snd_soc_dapm_widget* %84, %struct.snd_kcontrol* %85)
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @SST_FILL_DESTINATION(i32, i32, i32, i32) #1

declare dso_local i32 @sst_fill_and_send_cmd(%struct.sst_data*, i32, i32, i32, i32, %struct.sst_cmd_set_media_path*, i32) #1

declare dso_local i32 @sst_send_pipe_module_params(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
