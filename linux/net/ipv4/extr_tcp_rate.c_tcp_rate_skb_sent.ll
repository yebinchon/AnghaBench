; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_skb_sent.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_rate.c_tcp_rate_skb_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i64, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_rate_skb_sent(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %7)
  store %struct.tcp_sock* %8, %struct.tcp_sock** %5, align 8
  %9 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %10 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i8* @tcp_skb_timestamp_us(%struct.sk_buff* %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %13, %2
  %23 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %24 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %23, i32 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i8* %25, i8** %29, align 8
  %30 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i8* %32, i8** %36, align 8
  %37 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %38 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %45 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i8* @tcp_skb_timestamp_us(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
