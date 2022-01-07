; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_l2_rcv_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bearer.c_tipc_l2_rcv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.tipc_bearer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PACKET_MULTICAST = common dso_local global i64 0, align 8
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @tipc_l2_rcv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_l2_rcv_msg(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.tipc_bearer*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.tipc_bearer* @rcu_dereference(i32 %14)
  %16 = icmp ne %struct.tipc_bearer* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tipc_bearer* @rcu_dereference(i32 %21)
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi %struct.tipc_bearer* [ %15, %17 ], [ %22, %18 ]
  store %struct.tipc_bearer* %24, %struct.tipc_bearer** %10, align 8
  %25 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %26 = icmp ne %struct.tipc_bearer* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %29 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 0, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PACKET_MULTICAST, align 8
  %37 = icmp sle i64 %35, %36
  br label %38

38:                                               ; preds = %32, %27, %23
  %39 = phi i1 [ false, %27 ], [ false, %23 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @skb_mark_not_on_list(%struct.sk_buff* %44)
  %46 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %47 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_net(i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load %struct.tipc_bearer*, %struct.tipc_bearer** %10, align 8
  %53 = call i32 @tipc_rcv(i32 %50, %struct.sk_buff* %51, %struct.tipc_bearer* %52)
  %54 = call i32 (...) @rcu_read_unlock()
  %55 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %55, i32* %5, align 4
  br label %61

56:                                               ; preds = %38
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  %60 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %43
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tipc_bearer* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_mark_not_on_list(%struct.sk_buff*) #1

declare dso_local i32 @tipc_rcv(i32, %struct.sk_buff*, %struct.tipc_bearer*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
