; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_vlan.c_tcf_vlan_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_vlan.c_tcf_vlan_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_vlan = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tcf_vlan_params = type { i64, i32, i32, i32 }
%struct.tc_vlan = type { i64, i32, i32, i32, i32 }
%struct.tcf_t = type { i32 }

@TCA_VLAN_PARMS = common dso_local global i32 0, align 4
@TCA_VLAN_ACT_PUSH = common dso_local global i64 0, align 8
@TCA_VLAN_ACT_MODIFY = common dso_local global i64 0, align 8
@TCA_VLAN_PUSH_VLAN_ID = common dso_local global i32 0, align 4
@TCA_VLAN_PUSH_VLAN_PROTOCOL = common dso_local global i32 0, align 4
@TCA_VLAN_PUSH_VLAN_PRIORITY = common dso_local global i32 0, align 4
@TCA_VLAN_TM = common dso_local global i32 0, align 4
@TCA_VLAN_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, i32, i32)* @tcf_vlan_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_vlan_dump(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tcf_vlan*, align 8
  %12 = alloca %struct.tcf_vlan_params*, align 8
  %13 = alloca %struct.tc_vlan, align 8
  %14 = alloca %struct.tcf_t, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call i8* @skb_tail_pointer(%struct.sk_buff* %15)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %18 = call %struct.tcf_vlan* @to_vlan(%struct.tc_action* %17)
  store %struct.tcf_vlan* %18, %struct.tcf_vlan** %11, align 8
  %19 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 2
  %22 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %23 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %22, i32 0, i32 4
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %21, align 4
  %27 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 3
  %28 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %29 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %28, i32 0, i32 5
  %30 = call i32 @refcount_read(i32* %29)
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %27, align 8
  %33 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 4
  %34 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %35 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 4
  %37 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %38 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %41 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %45 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %48 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %47, i32 0, i32 0
  %49 = call i32 @lockdep_is_held(i32* %48)
  %50 = call %struct.tcf_vlan_params* @rcu_dereference_protected(i32 %46, i32 %49)
  store %struct.tcf_vlan_params* %50, %struct.tcf_vlan_params** %12, align 8
  %51 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %12, align 8
  %52 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.tc_vlan, %struct.tc_vlan* %13, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @TCA_VLAN_PARMS, align 4
  %57 = call i64 @nla_put(%struct.sk_buff* %55, i32 %56, i32 24, %struct.tc_vlan* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %4
  br label %114

60:                                               ; preds = %4
  %61 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %12, align 8
  %62 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TCA_VLAN_ACT_PUSH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %12, align 8
  %68 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @TCA_VLAN_ACT_MODIFY, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %66, %60
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load i32, i32* @TCA_VLAN_PUSH_VLAN_ID, align 4
  %75 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %12, align 8
  %76 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @nla_put_u16(%struct.sk_buff* %73, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %72
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i32, i32* @TCA_VLAN_PUSH_VLAN_PROTOCOL, align 4
  %83 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %12, align 8
  %84 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @nla_put_be16(%struct.sk_buff* %81, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = load i32, i32* @TCA_VLAN_PUSH_VLAN_PRIORITY, align 4
  %91 = load %struct.tcf_vlan_params*, %struct.tcf_vlan_params** %12, align 8
  %92 = getelementptr inbounds %struct.tcf_vlan_params, %struct.tcf_vlan_params* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @nla_put_u8(%struct.sk_buff* %89, i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %88, %80, %72
  br label %114

97:                                               ; preds = %88, %66
  %98 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %99 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %98, i32 0, i32 1
  %100 = call i32 @tcf_tm_dump(%struct.tcf_t* %14, i32* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i32, i32* @TCA_VLAN_TM, align 4
  %103 = load i32, i32* @TCA_VLAN_PAD, align 4
  %104 = call i64 @nla_put_64bit(%struct.sk_buff* %101, i32 %102, i32 4, %struct.tcf_t* %14, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %114

107:                                              ; preds = %97
  %108 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %109 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_bh(i32* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %5, align 4
  br label %121

114:                                              ; preds = %106, %96, %59
  %115 = load %struct.tcf_vlan*, %struct.tcf_vlan** %11, align 8
  %116 = getelementptr inbounds %struct.tcf_vlan, %struct.tcf_vlan* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock_bh(i32* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @nlmsg_trim(%struct.sk_buff* %118, i8* %119)
  store i32 -1, i32* %5, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.tcf_vlan* @to_vlan(%struct.tc_action*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_vlan_params* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_vlan*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @tcf_tm_dump(%struct.tcf_t*, i32*) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.tcf_t*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
