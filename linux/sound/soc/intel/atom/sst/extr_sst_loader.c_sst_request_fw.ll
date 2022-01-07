; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_request_fw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"request fw failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"fw is returning as null\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sst_drv*)* @sst_request_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_request_fw(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.firmware*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %7 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %10 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @request_firmware(%struct.firmware** %5, i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %17 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.firmware*, %struct.firmware** %5, align 8
  %24 = icmp eq %struct.firmware* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %27 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_err(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %34 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = call i32 @sst_cache_and_parse_fw(%struct.intel_sst_drv* %36, %struct.firmware* %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %40 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %32, %25, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @request_firmware(%struct.firmware**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sst_cache_and_parse_fw(%struct.intel_sst_drv*, %struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
