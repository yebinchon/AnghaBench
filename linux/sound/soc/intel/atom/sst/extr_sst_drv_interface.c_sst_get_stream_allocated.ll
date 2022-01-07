; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_get_stream_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_get_stream_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.intel_sst_drv*, %struct.snd_sst_params*)* }
%struct.snd_sst_params = type { i32 }
%struct.snd_sst_lib_download = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Stream allocated %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_get_stream_allocated(%struct.intel_sst_drv* %0, %struct.snd_sst_params* %1, %struct.snd_sst_lib_download** %2) #0 {
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca %struct.snd_sst_params*, align 8
  %6 = alloca %struct.snd_sst_lib_download**, align 8
  %7 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store %struct.snd_sst_params* %1, %struct.snd_sst_params** %5, align 8
  store %struct.snd_sst_lib_download** %2, %struct.snd_sst_lib_download*** %6, align 8
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.intel_sst_drv*, %struct.snd_sst_params*)*, i32 (%struct.intel_sst_drv*, %struct.snd_sst_params*)** %11, align 8
  %13 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %14 = load %struct.snd_sst_params*, %struct.snd_sst_params** %5, align 8
  %15 = call i32 %12(%struct.intel_sst_drv* %13, %struct.snd_sst_params* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %20 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
