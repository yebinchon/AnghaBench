; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_pm_runtime_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_pm_runtime_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_pm_runtime_put(%struct.intel_sst_drv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_sst_drv*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %3, align 8
  %5 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %6 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pm_runtime_mark_last_busy(i32 %7)
  %9 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %3, align 8
  %10 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_put_autosuspend(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
