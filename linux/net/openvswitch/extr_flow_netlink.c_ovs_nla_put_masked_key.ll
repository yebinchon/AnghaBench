; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_masked_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_flow_netlink.c_ovs_nla_put_masked_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32 }
%struct.sk_buff = type { i32 }

@OVS_FLOW_ATTR_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_nla_put_masked_key(%struct.sw_flow* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sw_flow*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %6 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %5, i32 0, i32 0
  %7 = load %struct.sw_flow*, %struct.sw_flow** %3, align 8
  %8 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %7, i32 0, i32 0
  %9 = load i32, i32* @OVS_FLOW_ATTR_KEY, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @ovs_nla_put_key(i32* %6, i32* %8, i32 %9, i32 0, %struct.sk_buff* %10)
  ret i32 %11
}

declare dso_local i32 @ovs_nla_put_key(i32*, i32*, i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
