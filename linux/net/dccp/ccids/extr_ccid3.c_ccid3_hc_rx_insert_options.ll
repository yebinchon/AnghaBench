; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_insert_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_insert_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ccid3_hc_rx_sock = type { i32, i32 }

@DCCP_OPEN = common dso_local global i64 0, align 8
@DCCP_PARTOPEN = common dso_local global i64 0, align 8
@TFRC_OPT_LOSS_EVENT_RATE = common dso_local global i32 0, align 4
@TFRC_OPT_RECEIVE_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @ccid3_hc_rx_insert_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_hc_rx_insert_options(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %9)
  store %struct.ccid3_hc_rx_sock* %10, %struct.ccid3_hc_rx_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @DCCP_OPEN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DCCP_PARTOPEN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %48

23:                                               ; preds = %16, %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @dccp_packet_without_ack(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %48

28:                                               ; preds = %23
  %29 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %6, align 8
  %30 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @htonl(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %6, align 8
  %34 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @htonl(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @TFRC_OPT_LOSS_EVENT_RATE, align 4
  %39 = call i64 @dccp_insert_option(%struct.sk_buff* %37, i32 %38, i32* %8, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %28
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @TFRC_OPT_RECEIVE_RATE, align 4
  %44 = call i64 @dccp_insert_option(%struct.sk_buff* %42, i32 %43, i32* %7, i32 4)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %28
  store i32 -1, i32* %3, align 4
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %27, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local i64 @dccp_packet_without_ack(%struct.sk_buff*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @dccp_insert_option(%struct.sk_buff*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
