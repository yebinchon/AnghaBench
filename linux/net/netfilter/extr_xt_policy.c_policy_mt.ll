; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_policy_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_policy.c_policy_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_policy_info* }
%struct.xt_policy_info = type { i32 }

@XT_POLICY_MATCH_IN = common dso_local global i32 0, align 4
@XT_POLICY_MATCH_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @policy_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @policy_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_policy_info*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_policy_info*, %struct.xt_policy_info** %8, align 8
  store %struct.xt_policy_info* %9, %struct.xt_policy_info** %5, align 8
  %10 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %11 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XT_POLICY_MATCH_IN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %19 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %20 = call i32 @xt_family(%struct.xt_action_param* %19)
  %21 = call i32 @match_policy_in(%struct.sk_buff* %17, %struct.xt_policy_info* %18, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %25 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %26 = call i32 @xt_family(%struct.xt_action_param* %25)
  %27 = call i32 @match_policy_out(%struct.sk_buff* %23, %struct.xt_policy_info* %24, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %33 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @XT_POLICY_MATCH_NONE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %28
  %41 = load %struct.xt_policy_info*, %struct.xt_policy_info** %5, align 8
  %42 = getelementptr inbounds %struct.xt_policy_info, %struct.xt_policy_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XT_POLICY_MATCH_NONE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %40
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @match_policy_in(%struct.sk_buff*, %struct.xt_policy_info*, i32) #1

declare dso_local i32 @xt_family(%struct.xt_action_param*) #1

declare dso_local i32 @match_policy_out(%struct.sk_buff*, %struct.xt_policy_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
