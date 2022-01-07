; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_dump_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_dump_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_cookie = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TCA_KIND = common dso_local global i32 0, align 4
@TCA_ACT_COOKIE = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_dump_1(%struct.sk_buff* %0, %struct.tc_action* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.tc_cookie*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tc_action* %1, %struct.tc_action** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i8* @skb_tail_pointer(%struct.sk_buff* %16)
  store i8* %17, i8** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* @TCA_KIND, align 4
  %20 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %21 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @nla_put_string(%struct.sk_buff* %18, i32 %19, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %78

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %31 = call i64 @tcf_action_copy_stats(%struct.sk_buff* %29, %struct.tc_action* %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %78

34:                                               ; preds = %28
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %37 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.tc_cookie* @rcu_dereference(i32 %38)
  store %struct.tc_cookie* %39, %struct.tc_cookie** %13, align 8
  %40 = load %struct.tc_cookie*, %struct.tc_cookie** %13, align 8
  %41 = icmp ne %struct.tc_cookie* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* @TCA_ACT_COOKIE, align 4
  %45 = load %struct.tc_cookie*, %struct.tc_cookie** %13, align 8
  %46 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tc_cookie*, %struct.tc_cookie** %13, align 8
  %49 = getelementptr inbounds %struct.tc_cookie, %struct.tc_cookie* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put(%struct.sk_buff* %43, i32 %44, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call i32 (...) @rcu_read_unlock()
  br label %78

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %34
  %57 = call i32 (...) @rcu_read_unlock()
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @TCA_OPTIONS, align 4
  %60 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %58, i32 %59)
  store %struct.nlattr* %60, %struct.nlattr** %12, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %62 = icmp eq %struct.nlattr* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %78

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @tcf_action_dump_old(%struct.sk_buff* %65, %struct.tc_action* %66, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %64
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %75 = call i32 @nla_nest_end(%struct.sk_buff* %73, %struct.nlattr* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %82

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %63, %53, %33, %27
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @nlmsg_trim(%struct.sk_buff* %79, i8* %80)
  store i32 -1, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %72
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @tcf_action_copy_stats(%struct.sk_buff*, %struct.tc_action*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tc_cookie* @rcu_dereference(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_action_dump_old(%struct.sk_buff*, %struct.tc_action*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
