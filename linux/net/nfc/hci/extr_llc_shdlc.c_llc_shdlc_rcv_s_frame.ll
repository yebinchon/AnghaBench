; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_s_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_rcv_s_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@SHDLC_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*, i32, i32)* @llc_shdlc_rcv_s_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_rcv_s_frame(%struct.llc_shdlc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.llc_shdlc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %9 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SHDLC_CONNECTED, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %56

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %55 [
    i32 128, label %16
    i32 130, label %45
    i32 129, label %49
  ]

16:                                               ; preds = %14
  %17 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @llc_shdlc_rcv_ack(%struct.llc_shdlc* %17, i32 %18)
  %20 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %21 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %44

24:                                               ; preds = %16
  %25 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %26 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %28 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %34 = call %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc* %33, i32 0)
  store %struct.sk_buff* %34, %struct.sk_buff** %7, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %39 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %38, i32 0, i32 2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @skb_queue_tail(%struct.TYPE_2__* %39, %struct.sk_buff* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %16
  br label %56

45:                                               ; preds = %14
  %46 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @llc_shdlc_rcv_rej(%struct.llc_shdlc* %46, i32 %47)
  br label %56

49:                                               ; preds = %14
  %50 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @llc_shdlc_rcv_ack(%struct.llc_shdlc* %50, i32 %51)
  %53 = load %struct.llc_shdlc*, %struct.llc_shdlc** %4, align 8
  %54 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %56

55:                                               ; preds = %14
  br label %56

56:                                               ; preds = %13, %55, %49, %45, %44
  ret void
}

declare dso_local i32 @llc_shdlc_rcv_ack(%struct.llc_shdlc*, i32) #1

declare dso_local %struct.sk_buff* @llc_shdlc_alloc_skb(%struct.llc_shdlc*, i32) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @llc_shdlc_rcv_rej(%struct.llc_shdlc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
