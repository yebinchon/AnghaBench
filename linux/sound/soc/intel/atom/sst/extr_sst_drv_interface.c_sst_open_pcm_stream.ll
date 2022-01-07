; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_open_pcm_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_open_pcm_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sst_params = type { i32 }
%struct.intel_sst_drv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sst_get_stream returned err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_sst_params*)* @sst_open_pcm_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_open_pcm_stream(%struct.device* %0, %struct.snd_sst_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_sst_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_sst_params* %1, %struct.snd_sst_params** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %8)
  store %struct.intel_sst_drv* %9, %struct.intel_sst_drv** %7, align 8
  %10 = load %struct.snd_sst_params*, %struct.snd_sst_params** %5, align 8
  %11 = icmp ne %struct.snd_sst_params* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %17 = load %struct.snd_sst_params*, %struct.snd_sst_params** %5, align 8
  %18 = call i32 @sst_get_stream(%struct.intel_sst_drv* %16, %struct.snd_sst_params* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %23 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %32

26:                                               ; preds = %15
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %7, align 8
  %28 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sst_get_stream(%struct.intel_sst_drv*, %struct.snd_sst_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
