; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_check_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_check_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i32, i32 (%struct.rfcomm_dlc*, i32)*, i32, i64 }

@RFCOMM_DEFER_SETUP = common dso_local global i32 0, align 4
@RFCOMM_AUTH_TIMEOUT = common dso_local global i32 0, align 4
@BT_CONNECT2 = common dso_local global i32 0, align 4
@RFCOMM_AUTH_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfcomm_dlc*)* @rfcomm_check_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfcomm_check_accept(%struct.rfcomm_dlc* %0) #0 {
  %2 = alloca %struct.rfcomm_dlc*, align 8
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %2, align 8
  %3 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %4 = call i64 @rfcomm_check_security(%struct.rfcomm_dlc* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %35

6:                                                ; preds = %1
  %7 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %8 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load i32, i32* @RFCOMM_DEFER_SETUP, align 4
  %13 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %14 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %13, i32 0, i32 0
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %17 = load i32, i32* @RFCOMM_AUTH_TIMEOUT, align 4
  %18 = call i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %16, i32 %17)
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %20 = call i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc* %19)
  %21 = load i32, i32* @BT_CONNECT2, align 4
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %23 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %25 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %24, i32 0, i32 1
  %26 = load i32 (%struct.rfcomm_dlc*, i32)*, i32 (%struct.rfcomm_dlc*, i32)** %25, align 8
  %27 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %28 = call i32 %26(%struct.rfcomm_dlc* %27, i32 0)
  %29 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %30 = call i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc* %29)
  br label %34

31:                                               ; preds = %6
  %32 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %33 = call i32 @rfcomm_dlc_accept(%struct.rfcomm_dlc* %32)
  br label %34

34:                                               ; preds = %31, %11
  br label %43

35:                                               ; preds = %1
  %36 = load i32, i32* @RFCOMM_AUTH_PENDING, align 4
  %37 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %38 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %37, i32 0, i32 0
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  %40 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %2, align 8
  %41 = load i32, i32* @RFCOMM_AUTH_TIMEOUT, align 4
  %42 = call i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc* %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %34
  ret void
}

declare dso_local i64 @rfcomm_check_security(%struct.rfcomm_dlc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_dlc_set_timer(%struct.rfcomm_dlc*, i32) #1

declare dso_local i32 @rfcomm_dlc_lock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_unlock(%struct.rfcomm_dlc*) #1

declare dso_local i32 @rfcomm_dlc_accept(%struct.rfcomm_dlc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
