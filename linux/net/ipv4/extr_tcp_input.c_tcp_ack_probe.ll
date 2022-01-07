; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ack_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_ack_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ICSK_TIME_PROBE0 = common dso_local global i32 0, align 4
@TCP_RTO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_ack_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_ack_probe(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_connection_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = call %struct.sk_buff* @tcp_send_head(%struct.sock* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sock*, %struct.sock** %2, align 8
  %12 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %11)
  store %struct.tcp_sock* %12, %struct.tcp_sock** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %40

16:                                               ; preds = %1
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %22 = call i32 @tcp_wnd_end(%struct.tcp_sock* %21)
  %23 = call i32 @after(i32 %20, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %3, align 8
  %27 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = load i32, i32* @ICSK_TIME_PROBE0, align 4
  %30 = call i32 @inet_csk_clear_xmit_timer(%struct.sock* %28, i32 %29)
  br label %40

31:                                               ; preds = %16
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = load i32, i32* @TCP_RTO_MAX, align 4
  %34 = call i64 @tcp_probe0_when(%struct.sock* %32, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load i32, i32* @ICSK_TIME_PROBE0, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @TCP_RTO_MAX, align 4
  %39 = call i32 @tcp_reset_xmit_timer(%struct.sock* %35, i32 %36, i64 %37, i32 %38, i32* null)
  br label %40

40:                                               ; preds = %15, %31, %25
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_send_head(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @after(i32, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

declare dso_local i32 @inet_csk_clear_xmit_timer(%struct.sock*, i32) #1

declare dso_local i64 @tcp_probe0_when(%struct.sock*, i32) #1

declare dso_local i32 @tcp_reset_xmit_timer(%struct.sock*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
