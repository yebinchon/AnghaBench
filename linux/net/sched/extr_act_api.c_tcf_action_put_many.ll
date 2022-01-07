; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_put_many.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_put_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.tc_action_ops* }
%struct.tc_action_ops = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tc_action**)* @tcf_action_put_many to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_action_put_many(%struct.tc_action** %0) #0 {
  %2 = alloca %struct.tc_action**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_action*, align 8
  %5 = alloca %struct.tc_action_ops*, align 8
  store %struct.tc_action** %0, %struct.tc_action*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.tc_action**, %struct.tc_action*** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %11, i64 %13
  %15 = load %struct.tc_action*, %struct.tc_action** %14, align 8
  store %struct.tc_action* %15, %struct.tc_action** %4, align 8
  %16 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %17 = icmp ne %struct.tc_action* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10
  br label %32

19:                                               ; preds = %10
  %20 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %21 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %20, i32 0, i32 0
  %22 = load %struct.tc_action_ops*, %struct.tc_action_ops** %21, align 8
  store %struct.tc_action_ops* %22, %struct.tc_action_ops** %5, align 8
  %23 = load %struct.tc_action*, %struct.tc_action** %4, align 8
  %24 = call i64 @tcf_action_put(%struct.tc_action* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.tc_action_ops*, %struct.tc_action_ops** %5, align 8
  %28 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @module_put(i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local i64 @tcf_action_put(%struct.tc_action*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
