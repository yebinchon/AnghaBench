; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_configure_runtime_pm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst.c_sst_configure_runtime_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }

@SST_SUSPEND_DELAY = common dso_local global i32 0, align 4
@acpi_disabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_configure_runtime_pm(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca %struct.intel_sst_drv*, align 8
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %2, align 8
  %3 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %4 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SST_SUSPEND_DELAY, align 4
  %7 = call i32 @pm_runtime_set_autosuspend_delay(i32 %5, i32 %6)
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %9 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pm_runtime_use_autosuspend(i32 %10)
  %12 = load i64, i64* @acpi_disabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %16 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_set_active(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %21 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pm_runtime_enable(i32 %22)
  %24 = load i64, i64* @acpi_disabled, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %28 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pm_runtime_set_active(i32 %29)
  br label %36

31:                                               ; preds = %19
  %32 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %2, align 8
  %33 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_put_noidle(i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @pm_runtime_enable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
