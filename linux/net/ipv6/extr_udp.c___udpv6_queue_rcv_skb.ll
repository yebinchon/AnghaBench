; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udpv6_queue_rcv_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_udp.c___udpv6_queue_rcv_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UDP_MIB_RCVBUFERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @__udpv6_queue_rcv_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__udpv6_queue_rcv_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = call i32 @ipv6_addr_any(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @sock_rps_save_rxhash(%struct.sock* %13, %struct.sk_buff* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call i32 @sk_mark_napi_id(%struct.sock* %16, %struct.sk_buff* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @sk_incoming_cpu_update(%struct.sock* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @sk_mark_napi_id_once(%struct.sock* %22, %struct.sk_buff* %23)
  br label %25

25:                                               ; preds = %21, %12
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i32 @__udp_enqueue_schedule_skb(%struct.sock* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @IS_UDPLITE(%struct.sock* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @sock_net(%struct.sock* %39)
  %41 = load i32, i32* @UDP_MIB_RCVBUFERRORS, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @UDP6_INC_STATS(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @sock_net(%struct.sock* %45)
  %47 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @UDP6_INC_STATS(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  store i32 -1, i32* %3, align 4
  br label %53

52:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %44
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local i32 @sock_rps_save_rxhash(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_mark_napi_id(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @sk_incoming_cpu_update(%struct.sock*) #1

declare dso_local i32 @sk_mark_napi_id_once(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__udp_enqueue_schedule_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @IS_UDPLITE(%struct.sock*) #1

declare dso_local i32 @UDP6_INC_STATS(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
