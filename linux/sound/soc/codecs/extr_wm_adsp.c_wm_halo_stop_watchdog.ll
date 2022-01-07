; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_stop_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_halo_stop_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i64, i32 }

@HALO_WDT_CONTROL = common dso_local global i64 0, align 8
@HALO_WDT_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm_adsp*)* @wm_halo_stop_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_halo_stop_watchdog(%struct.wm_adsp* %0) #0 {
  %2 = alloca %struct.wm_adsp*, align 8
  store %struct.wm_adsp* %0, %struct.wm_adsp** %2, align 8
  %3 = load %struct.wm_adsp*, %struct.wm_adsp** %2, align 8
  %4 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.wm_adsp*, %struct.wm_adsp** %2, align 8
  %7 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HALO_WDT_CONTROL, align 8
  %10 = add nsw i64 %8, %9
  %11 = load i32, i32* @HALO_WDT_EN_MASK, align 4
  %12 = call i32 @regmap_update_bits(i32 %5, i64 %10, i32 %11, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
