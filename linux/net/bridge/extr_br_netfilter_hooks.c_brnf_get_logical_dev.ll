; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_brnf_get_logical_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_brnf_get_logical_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.brnf_net = type { i64 }

@brnf_net_id = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.sk_buff*, %struct.net_device*, %struct.net*)* @brnf_get_logical_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @brnf_get_logical_dev(%struct.sk_buff* %0, %struct.net_device* %1, %struct.net* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.brnf_net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.net* %2, %struct.net** %7, align 8
  %11 = load %struct.net*, %struct.net** %7, align 8
  %12 = load i32, i32* @brnf_net_id, align 4
  %13 = call %struct.brnf_net* @net_generic(%struct.net* %11, i32 %12)
  store %struct.brnf_net* %13, %struct.brnf_net** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.net_device* @bridge_parent(%struct.net_device* %14)
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.brnf_net*, %struct.brnf_net** %10, align 8
  %17 = getelementptr inbounds %struct.brnf_net, %struct.brnf_net* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %25, %struct.net_device** %4, align 8
  br label %44

26:                                               ; preds = %20
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %31)
  %33 = load i32, i32* @VLAN_VID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = call %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device* %27, i32 %30, i32 %34)
  store %struct.net_device* %35, %struct.net_device** %8, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  br label %42

40:                                               ; preds = %26
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi %struct.net_device* [ %39, %38 ], [ %41, %40 ]
  store %struct.net_device* %43, %struct.net_device** %4, align 8
  br label %44

44:                                               ; preds = %42, %24
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %45
}

declare dso_local %struct.brnf_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.net_device* @bridge_parent(%struct.net_device*) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device*, i32, i32) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
