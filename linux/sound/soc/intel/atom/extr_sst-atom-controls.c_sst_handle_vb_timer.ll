; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_handle_vb_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_handle_vb_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32)* }
%struct.snd_soc_dai = type { i32 }
%struct.sst_cmd_generic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.sst_data = type { i32 }

@sst_handle_vb_timer.timer_usage = internal global i32 0, align 4
@SBA_VB_START = common dso_local global i32 0, align 4
@SBA_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"enable=%u, usage=%d\0A\00", align 1
@sst = common dso_local global %struct.TYPE_6__* null, align 8
@SST_IPC_IA_CMD = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@SST_TASK_SBA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_handle_vb_timer(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_cmd_generic, align 8
  %8 = alloca %struct.sst_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = call %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.sst_data* %10, %struct.sst_data** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @SBA_VB_START, align 4
  %15 = getelementptr inbounds %struct.sst_cmd_generic, %struct.sst_cmd_generic* %7, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @SBA_IDLE, align 4
  %19 = getelementptr inbounds %struct.sst_cmd_generic, %struct.sst_cmd_generic* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @sst_handle_vb_timer.timer_usage, align 4
  %27 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.sst_cmd_generic, %struct.sst_cmd_generic* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @SST_FILL_DEFAULT_DESTINATION(i32 %30)
  %32 = getelementptr inbounds %struct.sst_cmd_generic, %struct.sst_cmd_generic* %7, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %21
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %41(i32 %44, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %112

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %53 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %52, i32 0, i32 0
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @sst_handle_vb_timer.timer_usage, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @sst_handle_vb_timer.timer_usage, align 4
  br label %63

60:                                               ; preds = %51
  %61 = load i32, i32* @sst_handle_vb_timer.timer_usage, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* @sst_handle_vb_timer.timer_usage, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @sst_handle_vb_timer.timer_usage, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %75, label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @sst_handle_vb_timer.timer_usage, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %72, %66
  %76 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %77 = load i32, i32* @SST_IPC_IA_CMD, align 4
  %78 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %79 = load i32, i32* @SST_TASK_SBA, align 4
  %80 = getelementptr inbounds %struct.sst_cmd_generic, %struct.sst_cmd_generic* %7, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 16, %82
  %84 = call i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data* %76, i32 %77, i32 %78, i32 %79, i32 0, %struct.sst_cmd_generic* %7, i64 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %75
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* @sst_handle_vb_timer.timer_usage, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* @sst_handle_vb_timer.timer_usage, align 4
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %87, %75
  br label %94

94:                                               ; preds = %93, %72, %69
  %95 = load %struct.sst_data*, %struct.sst_data** %8, align 8
  %96 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (i32, i32)*, i32 (i32, i32)** %104, align 8
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %105(i32 %108, i32 0)
  br label %110

110:                                              ; preds = %100, %94
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %48
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.sst_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @SST_FILL_DEFAULT_DESTINATION(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data*, i32, i32, i32, i32, %struct.sst_cmd_generic*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
