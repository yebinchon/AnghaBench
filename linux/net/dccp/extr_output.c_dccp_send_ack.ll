; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_output.c_dccp_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DCCP_CLOSED = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCP_ATO_MIN = common dso_local global i32 0, align 4
@ICSK_TIME_DACK = common dso_local global i32 0, align 4
@TCP_DELACK_MAX = common dso_local global i32 0, align 4
@DCCP_RTO_MAX = common dso_local global i32 0, align 4
@DCCP_PKT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_send_ack(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = getelementptr inbounds %struct.sock, %struct.sock* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DCCP_CLOSED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %1
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @alloc_skb(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = icmp eq %struct.sk_buff* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = call i32 @inet_csk_schedule_ack(%struct.sock* %20)
  %22 = load i32, i32* @TCP_ATO_MIN, align 4
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call %struct.TYPE_7__* @inet_csk(%struct.sock* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = load i32, i32* @ICSK_TIME_DACK, align 4
  %29 = load i32, i32* @TCP_DELACK_MAX, align 4
  %30 = load i32, i32* @DCCP_RTO_MAX, align 4
  %31 = call i32 @inet_csk_reset_xmit_timer(%struct.sock* %27, i32 %28, i32 %29, i32 %30)
  br label %47

32:                                               ; preds = %9
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @skb_reserve(%struct.sk_buff* %33, i32 %38)
  %40 = load i32, i32* @DCCP_PKT_ACK, align 4
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call %struct.TYPE_8__* @DCCP_SKB_CB(%struct.sk_buff* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.sock*, %struct.sock** %2, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call i32 @dccp_transmit_skb(%struct.sock* %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %19, %32, %1
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local %struct.TYPE_7__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @inet_csk_reset_xmit_timer(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_8__* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_transmit_skb(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
