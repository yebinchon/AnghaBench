; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dlc %p state %ld\00", align 1
@RFCOMM_TIMED_OUT = common dso_local global i32 0, align 4
@d = common dso_local global %struct.rfcomm_dlc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rfcomm_dlc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_dlc_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %5 = ptrtoint %struct.rfcomm_dlc* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.rfcomm_dlc* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.rfcomm_dlc* %8, %struct.rfcomm_dlc** %3, align 8
  %9 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %10 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %9, i32 %12)
  %14 = load i32, i32* @RFCOMM_TIMED_OUT, align 4
  %15 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %16 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %19 = call i32 @rfcomm_dlc_put(%struct.rfcomm_dlc* %18)
  %20 = call i32 (...) @rfcomm_schedule()
  ret void
}

declare dso_local %struct.rfcomm_dlc* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_put(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
