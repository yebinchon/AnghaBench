; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_rx_packet_recv.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_rx_packet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ccid2_hc_rx_sock = type { i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @ccid2_hc_rx_packet_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_rx_packet_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ccid2_hc_rx_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.ccid2_hc_rx_sock* @ccid2_hc_rx_sk(%struct.sock* %6)
  store %struct.ccid2_hc_rx_sock* %7, %struct.ccid2_hc_rx_sock** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call i32 @dccp_data_packet(%struct.sk_buff* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.ccid2_hc_rx_sock*, %struct.ccid2_hc_rx_sock** %5, align 8
  %14 = getelementptr inbounds %struct.ccid2_hc_rx_sock, %struct.ccid2_hc_rx_sock* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call %struct.TYPE_2__* @dccp_sk(%struct.sock* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @dccp_send_ack(%struct.sock* %23)
  %25 = load %struct.ccid2_hc_rx_sock*, %struct.ccid2_hc_rx_sock** %5, align 8
  %26 = getelementptr inbounds %struct.ccid2_hc_rx_sock, %struct.ccid2_hc_rx_sock* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %11, %22, %12
  ret void
}

declare dso_local %struct.ccid2_hc_rx_sock* @ccid2_hc_rx_sk(%struct.sock*) #1

declare dso_local i32 @dccp_data_packet(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
