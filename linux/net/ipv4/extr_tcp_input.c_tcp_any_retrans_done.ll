; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_any_retrans_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_any_retrans_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TCPCB_EVER_RETRANS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_any_retrans_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_any_retrans_done(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %4, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %9 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TCPCB_EVER_RETRANS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %18, %13
  %27 = phi i1 [ false, %13 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tcp_rtx_queue_head(%struct.sock*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
