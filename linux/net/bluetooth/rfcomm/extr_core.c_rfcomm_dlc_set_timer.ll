; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_set_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"dlc %p state %ld timeout %ld\00", align 1
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*, i64)* @rfcomm_dlc_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %0, i64 %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca i64, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %6 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %7 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %5, i32 %8, i64 %9)
  %11 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %12 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %11, i32 0, i32 0
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @mod_timer(i32* %12, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %20 = call i32 @rfcomm_dlc_hold(%struct.rfcomm_dlc* %19)
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @rfcomm_dlc_hold(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
