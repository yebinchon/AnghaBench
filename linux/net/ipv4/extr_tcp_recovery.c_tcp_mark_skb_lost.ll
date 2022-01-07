; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_mark_skb_lost.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_mark_skb_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4
@LINUX_MIB_TCPLOSTRETRANSMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_mark_skb_lost(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @tcp_skb_mark_lost_uncond_verify(%struct.tcp_sock* %8, %struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load i32, i32* @TCPCB_SACKED_RETRANS, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i64 @tcp_skb_pcount(%struct.sk_buff* %26)
  %28 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %29 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %31, %27
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 4
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @sock_net(%struct.sock* %34)
  %36 = load i32, i32* @LINUX_MIB_TCPLOSTRETRANSMIT, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i64 @tcp_skb_pcount(%struct.sk_buff* %37)
  %39 = call i32 @NET_ADD_STATS(i32 %35, i32 %36, i64 %38)
  br label %40

40:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_skb_mark_lost_uncond_verify(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @NET_ADD_STATS(i32, i32, i64) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
