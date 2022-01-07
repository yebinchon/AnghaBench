; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_add_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_fastopen.c_tcp_fastopen_add_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.tcp_sock = type { i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@TCPHDR_SYN = common dso_local global i32 0, align 4
@TCPHDR_FIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_fastopen_add_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %13 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %83

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %83

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @skb_dst_drop(%struct.sk_buff* %25)
  %27 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %28 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @tcp_segs_in(%struct.tcp_sock* %29, %struct.sk_buff* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @tcp_hdrlen(%struct.sk_buff* %33)
  %35 = call i32 @__skb_pull(%struct.sk_buff* %32, i32 %34)
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sk_forced_mem_schedule(%struct.sock* %36, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = load %struct.sock*, %struct.sock** %3, align 8
  %43 = call i32 @skb_set_owner_r(%struct.sk_buff* %41, %struct.sock* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @TCPHDR_SYN, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %50
  store i32 %55, i32* %53, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.sock*, %struct.sock** %3, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i32 @__skb_queue_tail(i32* %63, %struct.sk_buff* %64)
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TCPHDR_FIN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %24
  %81 = load %struct.sock*, %struct.sock** %3, align 8
  %82 = call i32 @tcp_fin(%struct.sock* %81)
  br label %83

83:                                               ; preds = %16, %23, %80, %24
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @tcp_segs_in(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @sk_forced_mem_schedule(%struct.sock*, i32) #1

declare dso_local i32 @skb_set_owner_r(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tcp_fin(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
