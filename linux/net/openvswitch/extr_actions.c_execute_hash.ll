; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_execute_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_execute_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.nlattr = type { i32 }
%struct.ovs_action_hash = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*)* @execute_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_hash(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.nlattr* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.ovs_action_hash*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %5, align 8
  store %struct.nlattr* %2, %struct.nlattr** %6, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %10 = call %struct.ovs_action_hash* @nla_data(%struct.nlattr* %9)
  store %struct.ovs_action_hash* %10, %struct.ovs_action_hash** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_get_hash(%struct.sk_buff* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.ovs_action_hash*, %struct.ovs_action_hash** %7, align 8
  %15 = getelementptr inbounds %struct.ovs_action_hash, %struct.ovs_action_hash* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jhash_1word(i32 %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %24 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local %struct.ovs_action_hash* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @skb_get_hash(%struct.sk_buff*) #1

declare dso_local i32 @jhash_1word(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
