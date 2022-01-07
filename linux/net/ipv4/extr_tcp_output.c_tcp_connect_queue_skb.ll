; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_connect_queue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_connect_queue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.tcp_sock = type { i32, i32 }
%struct.tcp_skb_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_connect_queue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_connect_queue_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
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
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %6, align 8
  %15 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @__skb_header_release(%struct.sk_buff* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sk_wmem_queued_add(%struct.sock* %22, i32 %25)
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sk_mem_charge(%struct.sock* %27, i32 %30)
  %32 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %33 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %6, align 8
  %36 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WRITE_ONCE(i32 %34, i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i64 @tcp_skb_pcount(%struct.sk_buff* %39)
  %41 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %42 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_header_release(%struct.sk_buff*) #1

declare dso_local i32 @sk_wmem_queued_add(%struct.sock*, i32) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
