; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_retransmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_retransmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@TCPCB_RETRANS = common dso_local global i32 0, align 4
@TCPCB_SACKED_RETRANS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_retransmit_skb(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @__tcp_retransmit_skb(%struct.sock* %11, %struct.sk_buff* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %3
  %18 = load i32, i32* @TCPCB_RETRANS, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @tcp_skb_pcount(%struct.sk_buff* %24)
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  br label %32

32:                                               ; preds = %17, %3
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i64 @tcp_skb_timestamp(%struct.sk_buff* %38)
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %49 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i64 @tcp_skb_pcount(%struct.sk_buff* %51)
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @__tcp_retransmit_skb(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_timestamp(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
