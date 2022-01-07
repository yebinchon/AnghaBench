; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_get_task_policy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_get_task_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mempolicy = type { i64 }
%struct.task_struct = type { %struct.mempolicy* }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@preferred_node_policy = common dso_local global %struct.mempolicy* null, align 8
@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mempolicy* @get_task_policy(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.mempolicy*, align 8
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.mempolicy*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load %struct.mempolicy*, %struct.mempolicy** %7, align 8
  store %struct.mempolicy* %8, %struct.mempolicy** %4, align 8
  %9 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %10 = icmp ne %struct.mempolicy* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %12, %struct.mempolicy** %2, align 8
  br label %31

13:                                               ; preds = %1
  %14 = call i32 (...) @numa_node_id()
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @NUMA_NO_NODE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load %struct.mempolicy*, %struct.mempolicy** @preferred_node_policy, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %19, i64 %21
  store %struct.mempolicy* %22, %struct.mempolicy** %4, align 8
  %23 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  %24 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load %struct.mempolicy*, %struct.mempolicy** %4, align 8
  store %struct.mempolicy* %28, %struct.mempolicy** %2, align 8
  br label %31

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %13
  store %struct.mempolicy* @default_policy, %struct.mempolicy** %2, align 8
  br label %31

31:                                               ; preds = %30, %27, %11
  %32 = load %struct.mempolicy*, %struct.mempolicy** %2, align 8
  ret %struct.mempolicy* %32
}

declare dso_local i32 @numa_node_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
