; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_tcf_action_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tc_action = type { i32, %struct.tcf_idrinfo*, %struct.tc_action_ops* }
%struct.tcf_idrinfo = type { i32 }
%struct.tc_action_ops = type { i32 }

@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.tc_action**)* @tcf_action_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_action_delete(%struct.net* %0, %struct.tc_action** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.tc_action**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_action*, align 8
  %8 = alloca %struct.tc_action_ops*, align 8
  %9 = alloca %struct.tcf_idrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.tc_action** %1, %struct.tc_action*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %62, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.tc_action**, %struct.tc_action*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %17, i64 %19
  %21 = load %struct.tc_action*, %struct.tc_action** %20, align 8
  %22 = icmp ne %struct.tc_action* %21, null
  br label %23

23:                                               ; preds = %16, %12
  %24 = phi i1 [ false, %12 ], [ %22, %16 ]
  br i1 %24, label %25, label %65

25:                                               ; preds = %23
  %26 = load %struct.tc_action**, %struct.tc_action*** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %26, i64 %28
  %30 = load %struct.tc_action*, %struct.tc_action** %29, align 8
  store %struct.tc_action* %30, %struct.tc_action** %7, align 8
  %31 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %32 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %31, i32 0, i32 2
  %33 = load %struct.tc_action_ops*, %struct.tc_action_ops** %32, align 8
  store %struct.tc_action_ops* %33, %struct.tc_action_ops** %8, align 8
  %34 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %35 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %34, i32 0, i32 1
  %36 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %35, align 8
  store %struct.tcf_idrinfo* %36, %struct.tcf_idrinfo** %9, align 8
  %37 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %38 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.tc_action**, %struct.tc_action*** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.tc_action*, %struct.tc_action** %40, i64 %42
  store %struct.tc_action* null, %struct.tc_action** %43, align 8
  %44 = load %struct.tc_action*, %struct.tc_action** %7, align 8
  %45 = call i64 @tcf_action_put(%struct.tc_action* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %25
  %48 = load %struct.tc_action_ops*, %struct.tc_action_ops** %8, align 8
  %49 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @module_put(i32 %50)
  br label %61

52:                                               ; preds = %25
  %53 = load %struct.tcf_idrinfo*, %struct.tcf_idrinfo** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @tcf_idr_delete_index(%struct.tcf_idrinfo* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %12

65:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @tcf_action_put(%struct.tc_action*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @tcf_idr_delete_index(%struct.tcf_idrinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
