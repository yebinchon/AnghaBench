; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_set_rx_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_set_rx_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i64 }

@THRSH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_mcbsp*, i64)* @omap_mcbsp_set_rx_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_mcbsp_set_rx_threshold(%struct.omap_mcbsp* %0, i64 %1) #0 {
  %3 = alloca %struct.omap_mcbsp*, align 8
  %4 = alloca i64, align 8
  store %struct.omap_mcbsp* %0, %struct.omap_mcbsp** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %10 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %3, align 8
  %15 = load i32, i32* @THRSH1, align 4
  %16 = load i64, i64* %4, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %14, i32 %15, i64 %17)
  br label %19

19:                                               ; preds = %13, %7, %2
  ret void
}

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
