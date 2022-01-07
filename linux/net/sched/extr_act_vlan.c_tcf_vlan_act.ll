; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_vlan.c_tcf_vlan_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_vlan.c_tcf_vlan_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_vlan = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tcf_vlan_params = type { i32, i32, i32, i32 }

@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_vlan_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_vlan_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_vlan*, align 8
  %9 = alloca %struct.tcf_vlan_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %13 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %14 = call %struct.tcf_vlan* @to_vlan(%struct.tc_action* %13)
  store %struct.tcf_vlan* %14, %struct.tcf_vlan** %8, align 8
  %15 = load %struct.tcf_vlan*, %struct.tcf_vlan** %8, align 8
  %16 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %15, i32 0, i32 3
  %17 = call i32 @tcf_lastuse_update(i32* %16)
  %18 = load %struct.tcf_vlan*, %struct.tcf_vlan** %8, align 8
  %19 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @this_cpu_ptr(i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call i32 @bstats_cpu_update(i32 %22, %struct.sk_buff* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skb_push_rcsum(%struct.sk_buff* %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.tcf_vlan*, %struct.tcf_vlan** %8, align 8
  %36 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @READ_ONCE(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.tcf_vlan*, %struct.tcf_vlan** %8, align 8
  %40 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.tcf_vlan_params* @rcu_dereference_bh(i32 %41)
  store %struct.tcf_vlan_params* %42, %struct.tcf_vlan_params** %9, align 8
  %43 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %44 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %125 [
    i32 129, label %46
    i32 128, label %53
    i32 130, label %72
  ]

46:                                               ; preds = %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @skb_vlan_pop(%struct.sk_buff* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %140

52:                                               ; preds = %46
  br label %127

53:                                               ; preds = %34
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %56 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %59 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %62 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %60, %65
  %67 = call i32 @skb_vlan_push(%struct.sk_buff* %54, i32 %57, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %140

71:                                               ; preds = %53
  br label %127

72:                                               ; preds = %34
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @skb_vlan_tagged(%struct.sk_buff* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %128

77:                                               ; preds = %72
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff* %84)
  br label %93

86:                                               ; preds = %77
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @__skb_vlan_pop(%struct.sk_buff* %87, i32* %12)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %140

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %81
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @VLAN_VID_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %99 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  store i32 %101, i32* %12, align 4
  %102 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %103 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %93
  %107 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %12, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %112 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %106, %93
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %9, align 8
  %121 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %119, i32 %122, i32 %123)
  br label %127

125:                                              ; preds = %34
  %126 = call i32 (...) @BUG()
  br label %127

127:                                              ; preds = %125, %118, %71, %52
  br label %128

128:                                              ; preds = %127, %76
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i64 @skb_at_tc_ingress(%struct.sk_buff* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @skb_pull_rcsum(%struct.sk_buff* %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %128
  %139 = load i32, i32* %10, align 4
  store i32 %139, i32* %4, align 4
  br label %148

140:                                              ; preds = %91, %70, %51
  %141 = load %struct.tcf_vlan*, %struct.tcf_vlan** %8, align 8
  %142 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @this_cpu_ptr(i32 %144)
  %146 = call i32 @qstats_drop_inc(i32 %145)
  %147 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %140, %138
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.tcf_vlan* @to_vlan(%struct.tc_action*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_cpu_update(i32, %struct.sk_buff*) #1

declare dso_local i32 @this_cpu_ptr(i32) #1

declare dso_local i64 @skb_at_tc_ingress(%struct.sk_buff*) #1

declare dso_local i32 @skb_push_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.tcf_vlan_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @skb_vlan_pop(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_push(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_vlan_tagged(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_clear_tag(%struct.sk_buff*) #1

declare dso_local i32 @__skb_vlan_pop(%struct.sk_buff*, i32*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @qstats_drop_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
