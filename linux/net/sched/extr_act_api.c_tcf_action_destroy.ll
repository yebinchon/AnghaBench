; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.tc_action_ops* }
%struct.tc_action_ops = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@ACT_P_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_action_destroy(%struct.tc_action** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tc_action**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tc_action_ops*, align 8
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tc_action** %0, %struct.tc_action*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load %struct.tc_action**, %struct.tc_action*** %4, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %15, i64 %17
  %19 = load %struct.tc_action*, %struct.tc_action** %18, align 8
  %20 = icmp ne %struct.tc_action* %19, null
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %57

23:                                               ; preds = %21
  %24 = load %struct.tc_action**, %struct.tc_action*** %4, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %24, i64 %26
  %28 = load %struct.tc_action*, %struct.tc_action** %27, align 8
  store %struct.tc_action* %28, %struct.tc_action** %7, align 8
  %29 = load %struct.tc_action**, %struct.tc_action*** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %29, i64 %31
  store %struct.tc_action* null, %struct.tc_action** %32, align 8
  %33 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %34 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %33, i32 0, i32 0
  %35 = load %struct.tc_action_ops*, %struct.tc_action_ops** %34, align 8
  store %struct.tc_action_ops* %35, %struct.tc_action_ops** %6, align 8
  %36 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @__tcf_idr_release(%struct.tc_action* %36, i32 %37, i32 1)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ACT_P_DELETED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %23
  %43 = load %struct.tc_action_ops*, %struct.tc_action_ops** %6, align 8
  %44 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @module_put(i32 %45)
  br label %53

47:                                               ; preds = %23
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %10

57:                                               ; preds = %21
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @__tcf_idr_release(%struct.tc_action*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
