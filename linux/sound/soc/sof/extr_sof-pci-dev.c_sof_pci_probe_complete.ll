; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_sof-pci-dev.c_sof_pci_probe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_sof-pci-dev.c_sof_pci_probe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Completing SOF PCI probe\00", align 1
@SND_SOF_SUSPEND_DELAY_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @sof_pci_probe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_pci_probe_complete(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = call i32 @dev_dbg(%struct.device* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = load i32, i32* @SND_SOF_SUSPEND_DELAY_MS, align 4
  %7 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %5, i32 %6)
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call i32 @pm_runtime_use_autosuspend(%struct.device* %8)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = call i32 @pm_runtime_allow(%struct.device* %10)
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = call i32 @pm_runtime_mark_last_busy(%struct.device* %12)
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @pm_runtime_put_noidle(%struct.device* %14)
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_allow(%struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
