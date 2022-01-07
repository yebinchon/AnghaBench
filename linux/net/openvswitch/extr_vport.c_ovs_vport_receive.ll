; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ip_tunnel_info = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.TYPE_2__ = type { i64, i64, %struct.vport* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_vport_receive(%struct.vport* %0, %struct.sk_buff* %1, %struct.ip_tunnel_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vport*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_tunnel_info*, align 8
  %8 = alloca %struct.sw_flow_key, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ip_tunnel_info* %2, %struct.ip_tunnel_info** %7, align 8
  %11 = load %struct.vport*, %struct.vport** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store %struct.vport* %11, %struct.vport** %14, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dev_net(i32 %23)
  %25 = load %struct.vport*, %struct.vport** %5, align 8
  %26 = getelementptr inbounds %struct.vport, %struct.vport* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ovs_dp_get_net(i32 %27)
  %29 = icmp ne i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_scrub_packet(%struct.sk_buff* %37, i32 1)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store %struct.ip_tunnel_info* null, %struct.ip_tunnel_info** %7, align 8
  br label %42

42:                                               ; preds = %33, %3
  %43 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = call i32 @ovs_flow_key_extract(%struct.ip_tunnel_info* %43, %struct.sk_buff* %44, %struct.sw_flow_key* %8)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @ovs_dp_process_packet(%struct.sk_buff* %54, %struct.sw_flow_key* %8)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @dev_net(i32) #1

declare dso_local i64 @ovs_dp_get_net(i32) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_flow_key_extract(%struct.ip_tunnel_info*, %struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ovs_dp_process_packet(%struct.sk_buff*, %struct.sw_flow_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
