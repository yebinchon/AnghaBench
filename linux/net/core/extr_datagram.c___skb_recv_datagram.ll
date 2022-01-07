; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_recv_datagram.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c___skb_recv_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__skb_recv_datagram(%struct.sock* %0, i32 %1, void (%struct.sock*, %struct.sk_buff*)* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.sock*, %struct.sk_buff*)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (%struct.sock*, %struct.sk_buff*)* %2, void (%struct.sock*, %struct.sk_buff*)** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.sock*, %struct.sock** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MSG_DONTWAIT, align 4
  %18 = and i32 %16, %17
  %19 = call i64 @sock_rcvtimeo(%struct.sock* %15, i32 %18)
  store i64 %19, i64* %14, align 8
  br label %20

20:                                               ; preds = %49, %5
  %21 = load %struct.sock*, %struct.sock** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load void (%struct.sock*, %struct.sk_buff*)*, void (%struct.sock*, %struct.sk_buff*)** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call %struct.sk_buff* @__skb_try_recv_datagram(%struct.sock* %21, i32 %22, void (%struct.sock*, %struct.sk_buff*)* %23, i32* %24, i32* %25, %struct.sk_buff** %13)
  store %struct.sk_buff* %26, %struct.sk_buff** %12, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %6, align 8
  br label %52

31:                                               ; preds = %20
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp ne i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %51

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %46 = call i32 @__skb_wait_for_more_packets(%struct.sock* %43, i32* %44, i64* %14, %struct.sk_buff* %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %42, %39
  %50 = phi i1 [ false, %39 ], [ %48, %42 ]
  br i1 %50, label %20, label %51

51:                                               ; preds = %49, %37
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %53
}

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local %struct.sk_buff* @__skb_try_recv_datagram(%struct.sock*, i32, void (%struct.sock*, %struct.sk_buff*)*, i32*, i32*, %struct.sk_buff**) #1

declare dso_local i32 @__skb_wait_for_more_packets(%struct.sock*, i32*, i64*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
