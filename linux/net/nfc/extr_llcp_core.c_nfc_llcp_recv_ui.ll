; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_ui.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfc_llcp_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nfc_llcp_ui_cb = type { i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@LLCP_SAP_SDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@LLCP_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Receive queue is full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_local*, %struct.sk_buff*)* @nfc_llcp_recv_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_recv_ui(%struct.nfc_llcp_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_llcp_sock*, align 8
  %6 = alloca %struct.nfc_llcp_ui_cb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i8* @nfc_llcp_dsap(%struct.sk_buff* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i8* @nfc_llcp_ssap(%struct.sk_buff* %11)
  store i8* %12, i8** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call %struct.nfc_llcp_ui_cb* @nfc_llcp_ui_skb_cb(%struct.sk_buff* %13)
  store %struct.nfc_llcp_ui_cb* %14, %struct.nfc_llcp_ui_cb** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.nfc_llcp_ui_cb*, %struct.nfc_llcp_ui_cb** %6, align 8
  %17 = getelementptr inbounds %struct.nfc_llcp_ui_cb, %struct.nfc_llcp_ui_cb* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.nfc_llcp_ui_cb*, %struct.nfc_llcp_ui_cb** %6, align 8
  %20 = getelementptr inbounds %struct.nfc_llcp_ui_cb, %struct.nfc_llcp_ui_cb* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22)
  %24 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* @LLCP_SAP_SDP, align 4
  %27 = call %struct.nfc_llcp_sock* @nfc_llcp_sock_get(%struct.nfc_llcp_local* %24, i8* %25, i32 %26)
  store %struct.nfc_llcp_sock* %27, %struct.nfc_llcp_sock** %5, align 8
  %28 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %29 = icmp eq %struct.nfc_llcp_sock* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %32 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SOCK_DGRAM, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %2
  br label %55

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @LLCP_HEADER_SIZE, align 4
  %41 = call i32 @skb_pull(%struct.sk_buff* %39, i32 %40)
  %42 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %43 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %42, i32 0, i32 0
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @sock_queue_rcv_skb(%struct.TYPE_2__* %43, %struct.sk_buff* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call i32 @skb_get(%struct.sk_buff* %48)
  br label %52

50:                                               ; preds = %38
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %54 = call i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock* %53)
  br label %55

55:                                               ; preds = %52, %37
  ret void
}

declare dso_local i8* @nfc_llcp_dsap(%struct.sk_buff*) #1

declare dso_local i8* @nfc_llcp_ssap(%struct.sk_buff*) #1

declare dso_local %struct.nfc_llcp_ui_cb* @nfc_llcp_ui_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_sock_get(%struct.nfc_llcp_local*, i8*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
