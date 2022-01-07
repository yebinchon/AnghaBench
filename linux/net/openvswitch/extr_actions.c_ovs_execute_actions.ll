; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_ovs_execute_actions.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_ovs_execute_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_actions = type { i32, i32, i32 }
%struct.sw_flow_key = type { i32 }
%struct.TYPE_2__ = type { i32 }

@exec_actions_level = common dso_local global i32 0, align 4
@OVS_RECURSION_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"ovs: recursion limit reached on datapath %s, probable configuration error\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_execute_actions(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_actions* %2, %struct.sw_flow_key* %3) #0 {
  %5 = alloca %struct.datapath*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_actions*, align 8
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sw_flow_actions* %2, %struct.sw_flow_actions** %7, align 8
  store %struct.sw_flow_key* %3, %struct.sw_flow_key** %8, align 8
  %11 = load i32, i32* @exec_actions_level, align 4
  %12 = call i32 @__this_cpu_inc_return(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @OVS_RECURSION_LIMIT, align 4
  %15 = icmp sgt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load %struct.datapath*, %struct.datapath** %5, align 8
  %21 = call i32 @ovs_dp_name(%struct.datapath* %20)
  %22 = call i32 @net_crit_ratelimited(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @kfree_skb(%struct.sk_buff* %23)
  %25 = load i32, i32* @ENETDOWN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  br label %50

27:                                               ; preds = %4
  %28 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %7, align 8
  %29 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.datapath*, %struct.datapath** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = load %struct.sw_flow_key*, %struct.sw_flow_key** %8, align 8
  %37 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %7, align 8
  %38 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %7, align 8
  %41 = getelementptr inbounds %struct.sw_flow_actions, %struct.sw_flow_actions* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @do_execute_actions(%struct.datapath* %34, %struct.sk_buff* %35, %struct.sw_flow_key* %36, i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.datapath*, %struct.datapath** %5, align 8
  %48 = call i32 @process_deferred_actions(%struct.datapath* %47)
  br label %49

49:                                               ; preds = %46, %27
  br label %50

50:                                               ; preds = %49, %19
  %51 = load i32, i32* @exec_actions_level, align 4
  %52 = call i32 @__this_cpu_dec(i32 %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @__this_cpu_inc_return(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_crit_ratelimited(i8*, i32) #1

declare dso_local i32 @ovs_dp_name(%struct.datapath*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @do_execute_actions(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, i32, i32) #1

declare dso_local i32 @process_deferred_actions(%struct.datapath*) #1

declare dso_local i32 @__this_cpu_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
