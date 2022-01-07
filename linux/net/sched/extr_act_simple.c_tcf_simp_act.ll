; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_tcf_simp_act.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_simple.c_tcf_simp_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_result = type { i32 }
%struct.tcf_defact = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"simple: %s_%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tc_action*, %struct.tcf_result*)* @tcf_simp_act to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_simp_act(%struct.sk_buff* %0, %struct.tc_action* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tc_action*, align 8
  %6 = alloca %struct.tcf_result*, align 8
  %7 = alloca %struct.tcf_defact*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tc_action* %1, %struct.tc_action** %5, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %6, align 8
  %8 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %9 = call %struct.tcf_defact* @to_defact(%struct.tc_action* %8)
  store %struct.tcf_defact* %9, %struct.tcf_defact** %7, align 8
  %10 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %11 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %14 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %13, i32 0, i32 4
  %15 = call i32 @tcf_lastuse_update(i32* %14)
  %16 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %16, i32 0, i32 2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @bstats_update(%struct.TYPE_2__* %17, %struct.sk_buff* %18)
  %20 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %21 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %27)
  %29 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %30 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.tcf_defact*, %struct.tcf_defact** %7, align 8
  %33 = getelementptr inbounds %struct.tcf_defact, %struct.tcf_defact* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  ret i32 %34
}

declare dso_local %struct.tcf_defact* @to_defact(%struct.tc_action*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @tcf_lastuse_update(i32*) #1

declare dso_local i32 @bstats_update(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
