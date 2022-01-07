; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_newreno_mark_lost.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_recovery.c_tcp_newreno_mark_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64 }
%struct.sk_buff = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TCP_CA_Recovery = common dso_local global i64 0, align 8
@TCPCB_LOST = common dso_local global i32 0, align 4
@TCP_FRAG_IN_RTX_QUEUE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_newreno_mark_lost(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_3__* @inet_csk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @TCP_CA_Recovery, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %20 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %18, %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @TCP_CA_Recovery, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %30, %18
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TCPCB_LOST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %68

44:                                               ; preds = %33
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i64 @tcp_skb_mss(%struct.sk_buff* %45)
  store i64 %46, i64* %8, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 @tcp_skb_pcount(%struct.sk_buff* %47)
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = load i32, i32* @TCP_FRAG_IN_RTX_QUEUE, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @GFP_ATOMIC, align 4
  %63 = call i32 @tcp_fragment(%struct.sock* %57, i32 %58, %struct.sk_buff* %59, i64 %60, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %50, %44
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = call i32 @tcp_skb_mark_lost_uncond_verify(%struct.tcp_sock* %65, %struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %43, %64, %30, %26
  ret void
}

declare dso_local %struct.TYPE_3__* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock*) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_mss(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_fragment(%struct.sock*, i32, %struct.sk_buff*, i64, i64, i32) #1

declare dso_local i32 @tcp_skb_mark_lost_uncond_verify(%struct.tcp_sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
