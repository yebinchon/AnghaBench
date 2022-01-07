; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_netdev_port_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_netdev_port_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.vport = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @netdev_port_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_port_receive(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.vport*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call %struct.vport* @ovs_netdev_get_vport(%struct.TYPE_2__* %6)
  store %struct.vport* %7, %struct.vport** %3, align 8
  %8 = load %struct.vport*, %struct.vport** %3, align 8
  %9 = icmp ne %struct.vport* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %56

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %17 = call i32 @skb_warn_if_lro(%struct.sk_buff* %16)
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %56

21:                                               ; preds = %15
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %2, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %59

32:                                               ; preds = %21
  %33 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ARPHRD_ETHER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = load i32, i32* @ETH_HLEN, align 4
  %43 = call i32 @skb_push(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ETH_HLEN, align 4
  %49 = call i32 @skb_postpush_rcsum(%struct.sk_buff* %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %40, %32
  %51 = load %struct.vport*, %struct.vport** %3, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %54 = call i32 @skb_tunnel_info(%struct.sk_buff* %53)
  %55 = call i32 @ovs_vport_receive(%struct.vport* %51, %struct.sk_buff* %52, i32 %54)
  br label %59

56:                                               ; preds = %20, %14
  %57 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %58 = call i32 @kfree_skb(%struct.sk_buff* %57)
  br label %59

59:                                               ; preds = %56, %50, %31
  ret void
}

declare dso_local %struct.vport* @ovs_netdev_get_vport(%struct.TYPE_2__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_postpush_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ovs_vport_receive(%struct.vport*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
