; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@BT_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dlc %p mtu %d len %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rfcomm_dlc_send(%struct.rfcomm_dlc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_dlc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BT_CONNECTED, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTCONN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %2
  %19 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %20 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %19, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %27 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %18
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %36 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rfcomm_make_uih(%struct.sk_buff* %34, i32 %37)
  %39 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %40 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %39, i32 0, i32 3
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_queue_tail(i32* %40, %struct.sk_buff* %41)
  %43 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %44 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %4, align 8
  %45 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %44, i32 0, i32 2
  %46 = call i32 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %33
  %49 = call i32 (...) @rfcomm_schedule()
  br label %50

50:                                               ; preds = %48, %33
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %30, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @BT_DBG(i8*, %struct.rfcomm_dlc*, i32, i32) #1

declare dso_local i32 @rfcomm_make_uih(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rfcomm_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
