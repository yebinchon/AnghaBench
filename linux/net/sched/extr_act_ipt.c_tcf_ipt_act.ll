; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_ipt_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_ipt_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_ipt = type { i32, %struct.TYPE_10__, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.sk_buff*, %struct.xt_action_param*)* }
%struct.xt_action_param = type { %struct.TYPE_9__*, i32, %struct.nf_hook_state* }
%struct.nf_hook_state = type { i32, i32, i32, i32 }

@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@TC_ACT_UNSPEC = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_PIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"tc filter: Bogus netfilter code %d assume ACCEPT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_ipt_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ipt_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tcf_ipt*, align 8
  %11 = alloca %struct.xt_action_param, align 8
  %12 = alloca %struct.nf_hook_state, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %14 = call %struct.tcf_ipt* @to_ipt(%struct.tc_action* %13)
  store %struct.tcf_ipt* %14, %struct.tcf_ipt** %10, align 8
  %15 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %12, i32 0, i32 0
  %16 = load i32, i32* @NFPROTO_IPV4, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %12, i32 0, i32 1
  %18 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %19 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %12, i32 0, i32 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %12, i32 0, i32 3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_net(i32 %28)
  store i32 %29, i32* %25, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i64 @skb_unclone(%struct.sk_buff* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @TC_ACT_UNSPEC, align 4
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %3
  %37 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %38 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %41 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %40, i32 0, i32 4
  %42 = call i32 @tcf_lastuse_update(i32* %41)
  %43 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %44 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %43, i32 0, i32 3
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @bstats_update(i32* %44, %struct.sk_buff* %45)
  %47 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 2
  store %struct.nf_hook_state* %12, %struct.nf_hook_state** %47, align 8
  %48 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %49 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %48, i32 0, i32 2
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 0
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %57 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %56, i32 0, i32 2
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32 (%struct.sk_buff*, %struct.xt_action_param*)*, i32 (%struct.sk_buff*, %struct.xt_action_param*)** %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 %65(%struct.sk_buff* %66, %struct.xt_action_param* %11)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  switch i32 %68, label %80 [
    i32 130, label %69
    i32 129, label %71
    i32 128, label %78
  ]

69:                                               ; preds = %36
  %70 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %70, i32* %9, align 4
  br label %84

71:                                               ; preds = %36
  %72 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %72, i32* %9, align 4
  %73 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %74 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %84

78:                                               ; preds = %36
  %79 = load i32, i32* @TC_ACT_PIPE, align 4
  store i32 %79, i32* %9, align 4
  br label %84

80:                                               ; preds = %36
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @net_notice_ratelimited(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %78, %71, %69
  %85 = load %struct.tcf_ipt*, %struct.tcf_ipt** %10, align 8
  %86 = getelementptr inbounds %struct.tcf_ipt, %struct.tcf_ipt* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %84, %34
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.tcf_ipt* @to_ipt(%struct.tc_action*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i64 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i32 @net_notice_ratelimited(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
