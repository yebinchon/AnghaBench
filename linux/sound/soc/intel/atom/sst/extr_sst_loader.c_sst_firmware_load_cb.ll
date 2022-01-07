; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_firmware_load_cb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_firmware_load_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.intel_sst_drv = type { i64, i32, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"request fw failed\0A\00", align 1
@SST_RESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Request Fw completed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_firmware_load_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.intel_sst_drv*, align 8
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.intel_sst_drv*
  store %struct.intel_sst_drv* %7, %struct.intel_sst_drv** %5, align 8
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.firmware*, %struct.firmware** %3, align 8
  %13 = icmp eq %struct.firmware* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %16 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %21 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %24 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SST_RESET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %30 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28, %19
  %34 = load %struct.firmware*, %struct.firmware** %3, align 8
  %35 = call i32 @release_firmware(%struct.firmware* %34)
  %36 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %37 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %50

39:                                               ; preds = %28
  %40 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %41 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %45 = load %struct.firmware*, %struct.firmware** %3, align 8
  %46 = call i32 @sst_cache_and_parse_fw(%struct.intel_sst_drv* %44, %struct.firmware* %45)
  %47 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %48 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %47, i32 0, i32 1
  %49 = call i32 @mutex_unlock(i32* %48)
  br label %50

50:                                               ; preds = %39, %33, %14
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sst_cache_and_parse_fw(%struct.intel_sst_drv*, %struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
