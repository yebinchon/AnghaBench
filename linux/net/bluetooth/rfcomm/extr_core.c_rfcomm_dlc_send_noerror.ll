; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_send_noerror.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_core.c_rfcomm_dlc_send_noerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dlc = type { i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"dlc %p mtu %d len %d\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@RFCOMM_TX_THROTTLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rfcomm_dlc_send_noerror(%struct.rfcomm_dlc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rfcomm_dlc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.rfcomm_dlc* %0, %struct.rfcomm_dlc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %10 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %11 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.rfcomm_dlc* %9, i32 %12, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %17 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rfcomm_make_uih(%struct.sk_buff* %15, i32 %18)
  %20 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %21 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %20, i32 0, i32 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @skb_queue_tail(i32* %21, %struct.sk_buff* %22)
  %24 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %25 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BT_CONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32, i32* @RFCOMM_TX_THROTTLED, align 4
  %31 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %3, align 8
  %32 = getelementptr inbounds %struct.rfcomm_dlc, %struct.rfcomm_dlc* %31, i32 0, i32 1
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = call i32 (...) @rfcomm_schedule()
  br label %37

37:                                               ; preds = %35, %29, %2
  ret void
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
