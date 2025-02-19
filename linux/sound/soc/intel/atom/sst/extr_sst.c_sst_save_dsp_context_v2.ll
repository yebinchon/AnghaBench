; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_save_dsp_context_v2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_save_dsp_context_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }

@SST_TASK_ID_MEDIA = common dso_local global i32 0, align 4
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_PREP_D3 = common dso_local global i32 0, align 4
@PIPE_RSVD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"not suspending FW!!, Err: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*)* @sst_save_dsp_context_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_save_dsp_context_v2(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %6 = load i32, i32* @SST_TASK_ID_MEDIA, align 4
  %7 = load i32, i32* @IPC_CMD, align 4
  %8 = load i32, i32* @IPC_PREP_D3, align 4
  %9 = load i32, i32* @PIPE_RSVD, align 4
  %10 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 0, i32* null, i32* null, i32 1, i32 1, i32 0, i32 1)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %15 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
