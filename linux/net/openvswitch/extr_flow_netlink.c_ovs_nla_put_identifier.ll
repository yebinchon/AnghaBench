; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_identifier.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@OVS_FLOW_ATTR_UFID = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_nla_put_identifier(%struct.sw_flow* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw_flow*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %7 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %6, i32 0, i32 0
  %8 = call i64 @ovs_identifier_is_ufid(%struct.TYPE_2__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load i32, i32* @OVS_FLOW_ATTR_UFID, align 4
  %13 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %14 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %18 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @nla_put(%struct.sk_buff* %11, i32 %12, i32 %16, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %24 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %28 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OVS_FLOW_ATTR_KEY, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @ovs_nla_put_key(i32 %26, i32 %30, i32 %31, i32 0, %struct.sk_buff* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @ovs_identifier_is_ufid(%struct.TYPE_2__*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ovs_nla_put_key(i32, i32, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
