; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_starttimer.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_bcm.c_bcm_rx_starttimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_op = type { i32, i64, i32 }

@RX_NO_AUTOTIMER = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL_SOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_op*)* @bcm_rx_starttimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_rx_starttimer(%struct.bcm_op* %0) #0 {
  %2 = alloca %struct.bcm_op*, align 8
  store %struct.bcm_op* %0, %struct.bcm_op** %2, align 8
  %3 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %4 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RX_NO_AUTOTIMER, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %12 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %17 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %16, i32 0, i32 2
  %18 = load %struct.bcm_op*, %struct.bcm_op** %2, align 8
  %19 = getelementptr inbounds %struct.bcm_op, %struct.bcm_op* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @HRTIMER_MODE_REL_SOFT, align 4
  %22 = call i32 @hrtimer_start(i32* %17, i64 %20, i32 %21)
  br label %23

23:                                               ; preds = %9, %15, %10
  ret void
}

declare dso_local i32 @hrtimer_start(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
