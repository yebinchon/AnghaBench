; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp.c___udp_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@UDP_MIB_RCVBUFERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @__udp_queue_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udp_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.TYPE_2__* @inet_sk(%struct.sock* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i32 @sock_rps_save_rxhash(%struct.sock* %14, %struct.sk_buff* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @sk_mark_napi_id(%struct.sock* %17, %struct.sk_buff* %18)
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = call i32 @sk_incoming_cpu_update(%struct.sock* %20)
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @sk_mark_napi_id_once(%struct.sock* %23, %struct.sk_buff* %24)
  br label %26

26:                                               ; preds = %22, %13
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @__udp_enqueue_schedule_skb(%struct.sock* %27, %struct.sk_buff* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call i32 @IS_UDPLITE(%struct.sock* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @sock_net(%struct.sock* %40)
  %42 = load i32, i32* @UDP_MIB_RCVBUFERRORS, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @UDP_INC_STATS(i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = call i32 @sock_net(%struct.sock* %46)
  %48 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @UDP_INC_STATS(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call i32 @trace_udp_fail_queue_rcv_skb(i32 %53, %struct.sock* %54)
  store i32 -1, i32* %3, align 4
  br label %57

56:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_2__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_incoming_cpu_update(%struct.sock*) #1

declare dso_local i32 @sk_mark_napi_id_once(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__udp_enqueue_schedule_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @UDP_INC_STATS(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @trace_udp_fail_queue_rcv_skb(i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
