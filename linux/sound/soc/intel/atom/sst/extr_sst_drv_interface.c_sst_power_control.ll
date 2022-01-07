; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_sst_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_sst_drv = type { i64, %struct.device* }

@.str = private unnamed_addr constant [28 x i8] c"Enable: pm usage count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Runtime get failed with err: %d\0A\00", align 1
@SST_RESET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"FW download fail %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Disable: pm usage count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sst_power_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_power_control(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_sst_drv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %9)
  store %struct.intel_sst_drv* %10, %struct.intel_sst_drv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @pm_runtime_get_sync(%struct.device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @GET_USAGE_COUNT(%struct.device* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %19 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %18, i32 0, i32 1
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_dbg(%struct.device* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @pm_runtime_put_sync(%struct.device* %26)
  %28 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %29 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %28, i32 0, i32 1
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %71

34:                                               ; preds = %13
  %35 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %36 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SST_RESET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %45 = call i32 @sst_load_fw(%struct.intel_sst_drv* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %53 = load i64, i64* @SST_RESET, align 8
  %54 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %52, i64 %53)
  %55 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %56 = call i32 @sst_pm_runtime_put(%struct.intel_sst_drv* %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %48, %43
  br label %58

58:                                               ; preds = %57, %40, %34
  br label %69

59:                                               ; preds = %2
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i32 @GET_USAGE_COUNT(%struct.device* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %63 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %62, i32 0, i32 1
  %64 = load %struct.device*, %struct.device** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %6, align 8
  %68 = call i32 @sst_pm_runtime_put(%struct.intel_sst_drv* %67)
  store i32 %68, i32* %3, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %59, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @GET_USAGE_COUNT(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sst_load_fw(%struct.intel_sst_drv*) #1

declare dso_local i32 @sst_set_fw_state_locked(%struct.intel_sst_drv*, i64) #1

declare dso_local i32 @sst_pm_runtime_put(%struct.intel_sst_drv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
