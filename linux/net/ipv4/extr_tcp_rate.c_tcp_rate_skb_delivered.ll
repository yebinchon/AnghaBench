; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_skb_delivered.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_skb_delivered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rate_sample = type { i32, i32, i32, i64, i32 }
%struct.tcp_sock = type { i32 }
%struct.tcp_skb_cb = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@TCPCB_RETRANS = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rate_skb_delivered(%struct.sock* %0, %struct.sk_buff* %1, %struct.rate_sample* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rate_sample*, align 8
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.tcp_skb_cb*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rate_sample* %2, %struct.rate_sample** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff* %11)
  store %struct.tcp_skb_cb* %12, %struct.tcp_skb_cb** %8, align 8
  %13 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %14 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %85

19:                                               ; preds = %3
  %20 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %21 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %26 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %30 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @after(i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %74

34:                                               ; preds = %24, %19
  %35 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %36 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %40 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %42 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %46 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  %47 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %48 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %52 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %54 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TCPCB_RETRANS, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %59 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @tcp_skb_timestamp_us(%struct.sk_buff* %60)
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %63 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %68 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @tcp_stamp_us_delta(i32 %66, i32 %70)
  %72 = load %struct.rate_sample*, %struct.rate_sample** %6, align 8
  %73 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %34, %24
  %75 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %76 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.tcp_skb_cb*, %struct.tcp_skb_cb** %8, align 8
  %83 = getelementptr inbounds %struct.tcp_skb_cb, %struct.tcp_skb_cb* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %18, %81, %74
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.tcp_skb_cb* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @tcp_skb_timestamp_us(%struct.sk_buff*) #1

declare dso_local i32 @tcp_stamp_us_delta(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
