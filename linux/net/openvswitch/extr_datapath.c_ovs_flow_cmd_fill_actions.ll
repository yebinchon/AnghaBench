; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_actions.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }
%struct.sw_flow_actions = type { i32, i32 }

@OVS_FLOW_ATTR_ACTIONS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow*, %struct.sk_buff*, i32)* @ovs_flow_cmd_fill_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_fill_actions(%struct.sw_flow* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sw_flow*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sw_flow_actions*, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* @OVS_FLOW_ATTR_ACTIONS, align 4
  %13 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %11, i32 %12)
  store %struct.nlattr* %13, %struct.nlattr** %8, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %45

16:                                               ; preds = %3
  %17 = load %struct.sw_flow*, %struct.sw_flow** %5, align 8
  %18 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sw_flow_actions* @rcu_dereference_ovsl(i32 %19)
  store %struct.sw_flow_actions* %20, %struct.sw_flow_actions** %10, align 8
  %21 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %10, align 8
  %22 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %10, align 8
  %25 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call i32 @ovs_nla_put_actions(i32 %23, i32 %26, %struct.sk_buff* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %16
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %34 = call i32 @nla_nest_end(%struct.sk_buff* %32, %struct.nlattr* %33)
  br label %44

35:                                               ; preds = %16
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %43 = call i32 @nla_nest_cancel(%struct.sk_buff* %41, %struct.nlattr* %42)
  br label %44

44:                                               ; preds = %40, %31
  br label %52

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %53

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %44
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %48, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local %struct.sw_flow_actions* @rcu_dereference_ovsl(i32) #1

declare dso_local i32 @ovs_nla_put_actions(i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
