; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_get_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_get_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { %struct.stream_info*, %struct.TYPE_2__* }
%struct.stream_info = type { i32 }
%struct.TYPE_2__ = type { {}* }
%struct.snd_sst_params = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_get_stream(%struct.intel_sst_drv* %0, %struct.snd_sst_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca %struct.snd_sst_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stream_info*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store %struct.snd_sst_params* %1, %struct.snd_sst_params** %5, align 8
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.intel_sst_drv*, %struct.snd_sst_params*)**
  %13 = load i32 (%struct.intel_sst_drv*, %struct.snd_sst_params*)*, i32 (%struct.intel_sst_drv*, %struct.snd_sst_params*)** %12, align 8
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %15 = load %struct.snd_sst_params*, %struct.snd_sst_params** %5, align 8
  %16 = call i32 %13(%struct.intel_sst_drv* %14, %struct.snd_sst_params* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %24 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %23, i32 0, i32 0
  %25 = load %struct.stream_info*, %struct.stream_info** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %25, i64 %27
  store %struct.stream_info* %28, %struct.stream_info** %7, align 8
  %29 = load %struct.snd_sst_params*, %struct.snd_sst_params** %5, align 8
  %30 = call i32 @sst_get_sfreq(%struct.snd_sst_params* %29)
  %31 = load %struct.stream_info*, %struct.stream_info** %7, align 8
  %32 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @sst_get_sfreq(%struct.snd_sst_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
