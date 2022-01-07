; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_skb_entail.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp.c_skb_entail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.tcp_sock = type { i32, i32 }
%struct.tcp_skb_cb = type { i64, i32, i32, i32 }

@TCPHDR_ACK = common dso_local global i32 0, align 4
@TCP_NAGLE_PUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @skb_entail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_entail(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.tcp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %9)
  store %struct.tcp_skb_cb* %10, %struct.tcp_skb_cb** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %14 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %6, align 8
  %17 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %6, align 8
  %19 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %18, i32 0, i32 3
  store i32 %15, i32* %19, align 8
  %20 = load i32, i32* @TCPHDR_ACK, align 4
  %21 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %6, align 8
  %22 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %6, align 8
  %24 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @__skb_header_release(%struct.sk_buff* %25)
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @tcp_add_write_queue_tail(%struct.sock* %27, %struct.sk_buff* %28)
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @sk_wmem_queued_add(%struct.sock* %30, i32 %33)
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @sk_mem_charge(%struct.sock* %35, i32 %38)
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TCP_NAGLE_PUSH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = load i32, i32* @TCP_NAGLE_PUSH, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %2
  %54 = load %struct.sock*, %struct.sock** %3, align 8
  %55 = call i32 @tcp_slow_start_after_idle_check(%struct.sock* %54)
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_header_release(%struct.sk_buff*) #1

declare dso_local i32 @tcp_add_write_queue_tail(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_wmem_queued_add(%struct.sock*, i32) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

declare dso_local i32 @tcp_slow_start_after_idle_check(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
