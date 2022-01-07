; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_set_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_cdev_set_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_compr_metadata = type { i32 }
%struct.stream_info = type { i32, i32 }
%struct.intel_sst_drv = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"set metadata for stream %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"pipe id = %d\0A\00", align 1
@IPC_CMD = common dso_local global i32 0, align 4
@IPC_IA_SET_STREAM_PARAMS_MRFLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, %struct.snd_compr_metadata*)* @sst_cdev_set_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_cdev_set_metadata(%struct.device* %0, i32 %1, %struct.snd_compr_metadata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_compr_metadata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stream_info*, align 8
  %10 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_compr_metadata* %2, %struct.snd_compr_metadata** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %11)
  store %struct.intel_sst_drv* %12, %struct.intel_sst_drv** %10, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %16, i32 %17)
  store %struct.stream_info* %18, %struct.stream_info** %9, align 8
  %19 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %20 = icmp ne %struct.stream_info* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %27 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %10, align 8
  %31 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %32 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IPC_CMD, align 4
  %35 = load i32, i32* @IPC_IA_SET_STREAM_PARAMS_MRFLD, align 4
  %36 = load %struct.stream_info*, %struct.stream_info** %9, align 8
  %37 = getelementptr inbounds %struct.stream_info, %struct.stream_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_compr_metadata*, %struct.snd_compr_metadata** %7, align 8
  %40 = call i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv* %30, i32 %33, i32 %34, i32 %35, i32 %38, i32 4, %struct.snd_compr_metadata* %39, i32* null, i32 1, i32 1, i32 1, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %24, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_prepare_and_post_msg(%struct.intel_sst_drv*, i32, i32, i32, i32, i32, %struct.snd_compr_metadata*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
