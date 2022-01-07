; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sst_params = type { i32 }
%struct.sst_compress_cb = type { i32, i32, i32, i32 }
%struct.stream_info = type { i32, i32, i32, i32 }
%struct.intel_sst_drv = type { %struct.stream_info*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"stream allocated in sst_cdev_open %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"stream encountered error during alloc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.snd_sst_params*, %struct.sst_compress_cb*)* @sst_cdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_cdev_open(%struct.device* %0, %struct.snd_sst_params* %1, %struct.sst_compress_cb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_sst_params*, align 8
  %7 = alloca %struct.sst_compress_cb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stream_info*, align 8
  %11 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.snd_sst_params* %1, %struct.snd_sst_params** %6, align 8
  store %struct.sst_compress_cb* %2, %struct.sst_compress_cb** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %12)
  store %struct.intel_sst_drv* %13, %struct.intel_sst_drv** %11, align 8
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %15 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %22 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pm_runtime_put_sync(i32 %23)
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %3
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %28 = load %struct.snd_sst_params*, %struct.snd_sst_params** %6, align 8
  %29 = call i32 @sst_get_stream(%struct.intel_sst_drv* %27, %struct.snd_sst_params* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %37 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %36, i32 0, i32 0
  %38 = load %struct.stream_info*, %struct.stream_info** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %38, i64 %40
  store %struct.stream_info* %41, %struct.stream_info** %10, align 8
  %42 = load %struct.sst_compress_cb*, %struct.sst_compress_cb** %7, align 8
  %43 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %46 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sst_compress_cb*, %struct.sst_compress_cb** %7, align 8
  %48 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %51 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.sst_compress_cb*, %struct.sst_compress_cb** %7, align 8
  %53 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %56 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sst_compress_cb*, %struct.sst_compress_cb** %7, align 8
  %58 = getelementptr inbounds %struct.sst_compress_cb, %struct.sst_compress_cb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.stream_info*, %struct.stream_info** %10, align 8
  %61 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  br label %70

62:                                               ; preds = %26
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %11, align 8
  %69 = call i32 @sst_pm_runtime_put(%struct.intel_sst_drv* %68)
  br label %70

70:                                               ; preds = %62, %32
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %20
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @sst_get_stream(%struct.intel_sst_drv*, %struct.snd_sst_params*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sst_pm_runtime_put(%struct.intel_sst_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
