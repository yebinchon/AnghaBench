; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_ecn_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_ecn.c_ecn_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_ecn_info* }
%struct.xt_ecn_info = type { i32 }

@XT_ECN_OP_MATCH_IP = common dso_local global i32 0, align 4
@XT_ECN_OP_MATCH_ECE = common dso_local global i32 0, align 4
@XT_ECN_OP_MATCH_CWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ecn_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecn_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_ecn_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %8, align 8
  store %struct.xt_ecn_info* %9, %struct.xt_ecn_info** %6, align 8
  %10 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %11 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XT_ECN_OP_MATCH_IP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %19 = call i32 @match_ipv6(%struct.sk_buff* %17, %struct.xt_ecn_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %16, %2
  %23 = load %struct.xt_ecn_info*, %struct.xt_ecn_info** %6, align 8
  %24 = getelementptr inbounds %struct.xt_ecn_info, %struct.xt_ecn_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @XT_ECN_OP_MATCH_ECE, align 4
  %27 = load i32, i32* @XT_ECN_OP_MATCH_CWR, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %34 = call i32 @match_tcp(%struct.sk_buff* %32, %struct.xt_action_param* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

37:                                               ; preds = %31, %22
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @match_ipv6(%struct.sk_buff*, %struct.xt_ecn_info*) #1

declare dso_local i32 @match_tcp(%struct.sk_buff*, %struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
