; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_set_media_loop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_set_media_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, %struct.sst_ids*, i32 }
%struct.sst_ids = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.sst_cmd_sba_set_media_loop_map = type { %struct.TYPE_8__, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }
%struct.sst_data = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Enter:widget=%s\0A\00", align 1
@SST_SWITCH_ON = common dso_local global i32 0, align 4
@SST_SWITCH_OFF = common dso_local global i32 0, align 4
@SST_DEFAULT_MODULE_ID = common dso_local global i32 0, align 4
@SBA_SET_MEDIA_LOOP_MAP = common dso_local global i32 0, align 4
@SST_IPC_IA_CMD = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@SST_TASK_SBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @sst_set_media_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_set_media_loop(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sst_cmd_sba_set_media_loop_map, align 8
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
  %28 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @SST_SWITCH_ON, align 4
  %34 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @SST_SWITCH_OFF, align 4
  %37 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.sst_ids*, %struct.sst_ids** %12, align 8
  %43 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SST_DEFAULT_MODULE_ID, align 4
  %46 = call i32 @SST_FILL_DESTINATION(i32 2, i32 %41, i32 %44, i32 %45)
  %47 = load i32, i32* @SBA_SET_MEDIA_LOOP_MAP, align 4
  %48 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 36, i32* %51, align 8
  %52 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 2, i32* %55, align 8
  %56 = load %struct.sst_ids*, %struct.sst_ids** %12, align 8
  %57 = getelementptr inbounds %struct.sst_ids, %struct.sst_ids* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.sst_data*, %struct.sst_data** %11, align 8
  %69 = load i32, i32* @SST_IPC_IA_CMD, align 4
  %70 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %71 = load i32, i32* @SST_TASK_SBA, align 4
  %72 = getelementptr inbounds %struct.sst_cmd_sba_set_media_loop_map, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = add i64 12, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @sst_fill_and_send_cmd(%struct.sst_data* %68, i32 %69, i32 %70, i32 %71, i32 0, %struct.sst_cmd_sba_set_media_loop_map* %9, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %38
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %93

83:                                               ; preds = %38
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %89 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %6, align 8
  %90 = call i32 @sst_send_pipe_module_params(%struct.snd_soc_dapm_widget* %88, %struct.snd_kcontrol* %89)
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.sst_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @SST_FILL_DESTINATION(i32, i32, i32, i32) #1

declare dso_local i32 @sst_fill_and_send_cmd(%struct.sst_data*, i32, i32, i32, i32, %struct.sst_cmd_sba_set_media_loop_map*, i32) #1

declare dso_local i32 @sst_send_pipe_module_params(%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
