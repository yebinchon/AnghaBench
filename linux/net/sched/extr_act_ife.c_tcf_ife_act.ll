; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_tcf_ife_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_ife_info = type { i32 }
%struct.tcf_ife_params = type { i32 }

@IFE_ENCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_ife_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_ife_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.tcf_ife_info*, align 8
  %9 = alloca %struct.tcf_ife_params*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %11 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %12 = call %struct.tcf_ife_info* @to_ife(%struct.tc_action* %11)
  store %struct.tcf_ife_info* %12, %struct.tcf_ife_info** %8, align 8
  %13 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %8, align 8
  %14 = getelementptr inbounds %struct.tcf_ife_info, %struct.tcf_ife_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tcf_ife_params* @rcu_dereference_bh(i32 %15)
  store %struct.tcf_ife_params* %16, %struct.tcf_ife_params** %9, align 8
  %17 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %9, align 8
  %18 = getelementptr inbounds %struct.tcf_ife_params, %struct.tcf_ife_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFE_ENCODE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %26 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %27 = load %struct.tcf_ife_params*, %struct.tcf_ife_params** %9, align 8
  %28 = call i32 @tcf_ife_encode(%struct.sk_buff* %24, %struct.tc_action* %25, %struct.tcf_result* %26, %struct.tcf_ife_params* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %35

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %33 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %34 = call i32 @tcf_ife_decode(%struct.sk_buff* %31, %struct.tc_action* %32, %struct.tcf_result* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.tcf_ife_info* @to_ife(%struct.tc_action*) #1

declare dso_local %struct.tcf_ife_params* @rcu_dereference_bh(i32) #1

declare dso_local i32 @tcf_ife_encode(%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*, %struct.tcf_ife_params*) #1

declare dso_local i32 @tcf_ife_decode(%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
