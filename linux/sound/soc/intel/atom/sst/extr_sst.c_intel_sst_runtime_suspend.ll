; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_intel_sst_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_sst_drv = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_sst_drv*)*, i64 (%struct.intel_sst_drv*)* }

@SST_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"LPE is already in RESET state, No action\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @intel_sst_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sst_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sst_drv*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.intel_sst_drv* @dev_get_drvdata(%struct.device* %6)
  store %struct.intel_sst_drv* %7, %struct.intel_sst_drv** %5, align 8
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SST_RESET, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i32 @dev_dbg(%struct.device* %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

16:                                               ; preds = %1
  %17 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %18 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64 (%struct.intel_sst_drv*)*, i64 (%struct.intel_sst_drv*)** %20, align 8
  %22 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %23 = call i64 %21(%struct.intel_sst_drv* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %48

28:                                               ; preds = %16
  %29 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %30 = load i64, i64* @SST_RESET, align 8
  %31 = call i32 @sst_set_fw_state_locked(%struct.intel_sst_drv* %29, i64 %30)
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %33 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @synchronize_irq(i32 %34)
  %36 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %37 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @flush_workqueue(i32 %38)
  %40 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %41 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.intel_sst_drv*)*, i32 (%struct.intel_sst_drv*)** %43, align 8
  %45 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %5, align 8
  %46 = call i32 %44(%struct.intel_sst_drv* %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %28, %25, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.intel_sst_drv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @sst_set_fw_state_locked(%struct.intel_sst_drv*, i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
