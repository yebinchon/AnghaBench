; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c___rfcomm_dlc_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"dlc %p state %ld\00", align 1
@RFCOMM_V24_FC = common dso_local global i32 0, align 4
@RFCOMM_MSC_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rfcomm_dlc_throttle(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %3 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %4 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %5 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %3, i32 %6)
  %8 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @RFCOMM_V24_FC, align 4
  %14 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %15 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @RFCOMM_MSC_PENDING, align 4
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %20 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %19, i32 0, i32 0
  %21 = call i32 @set_bit(i32 %18, i32* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = call i32 (...) @rfcomm_schedule()
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
