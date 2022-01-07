; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_reset_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_reset_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_defact = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tcf_chain = type { i32 }
%struct.tcf_defact = type { i32, i32 }

@SIMP_MAX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_action*, %struct.nlattr*, %struct.tc_defact*, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @reset_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_policy(%struct.tc_action* %0, %struct.nlattr* %1, %struct.tc_defact* %2, %struct.tcf_proto* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.tc_defact*, align 8
  %10 = alloca %struct.tcf_proto*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.tcf_chain*, align 8
  %13 = alloca %struct.tcf_defact*, align 8
  %14 = alloca i32, align 4
  store %struct.tc_action* %0, %struct.tc_action** %7, align 8
  store %struct.nlattr* %1, %struct.nlattr** %8, align 8
  store %struct.tc_defact* %2, %struct.tc_defact** %9, align 8
  store %struct.tcf_proto* %3, %struct.tcf_proto** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  store %struct.tcf_chain* null, %struct.tcf_chain** %12, align 8
  %15 = load %struct.tc_defact*, %struct.tc_defact** %9, align 8
  %16 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %10, align 8
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %20 = call i32 @tcf_action_check_ctrlact(i32 %17, %struct.tcf_proto* %18, %struct.tcf_chain** %12, %struct.netlink_ext_ack* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %57

25:                                               ; preds = %5
  %26 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %27 = call %struct.tcf_defact* @to_defact(%struct.tc_action* %26)
  store %struct.tcf_defact* %27, %struct.tcf_defact** %13, align 8
  %28 = load %struct.tcf_defact*, %struct.tcf_defact** %13, align 8
  %29 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %28, i32 0, i32 0
  %30 = call i32 @spin_lock_bh(i32* %29)
  %31 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %32 = load %struct.tc_defact*, %struct.tc_defact** %9, align 8
  %33 = getelementptr inbounds %struct.tc_defact, %struct.tc_defact* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tcf_chain*, %struct.tcf_chain** %12, align 8
  %36 = call %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action* %31, i32 %34, %struct.tcf_chain* %35)
  store %struct.tcf_chain* %36, %struct.tcf_chain** %12, align 8
  %37 = load %struct.tcf_defact*, %struct.tcf_defact** %13, align 8
  %38 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SIMP_MAX_DATA, align 4
  %41 = call i32 @memset(i32 %39, i32 0, i32 %40)
  %42 = load %struct.tcf_defact*, %struct.tcf_defact** %13, align 8
  %43 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %46 = load i32, i32* @SIMP_MAX_DATA, align 4
  %47 = call i32 @nla_strlcpy(i32 %44, %struct.nlattr* %45, i32 %46)
  %48 = load %struct.tcf_defact*, %struct.tcf_defact** %13, align 8
  %49 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.tcf_chain*, %struct.tcf_chain** %12, align 8
  %52 = icmp ne %struct.tcf_chain* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %25
  %54 = load %struct.tcf_chain*, %struct.tcf_chain** %12, align 8
  %55 = call i32 @tcf_chain_put_by_act(%struct.tcf_chain* %54)
  br label %56

56:                                               ; preds = %53, %25
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @tcf_action_check_ctrlact(i32, %struct.tcf_proto*, %struct.tcf_chain**, %struct.netlink_ext_ack*) #1

declare dso_local %struct.tcf_defact* @to_defact(%struct.tc_action*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.tcf_chain* @tcf_action_set_ctrlact(%struct.tc_action*, i32, %struct.tcf_chain*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @tcf_chain_put_by_act(%struct.tcf_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
