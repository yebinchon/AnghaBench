; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mempolicy_nodemask_intersects.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempolicy.c_mempolicy_nodemask_intersects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mempolicy* }
%struct.mempolicy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mempolicy_nodemask_intersects(%struct.task_struct* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mempolicy*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call i32 @task_lock(%struct.task_struct* %13)
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load %struct.mempolicy*, %struct.mempolicy** %16, align 8
  store %struct.mempolicy* %17, %struct.mempolicy** %6, align 8
  %18 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %19 = icmp ne %struct.mempolicy* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %37

21:                                               ; preds = %12
  %22 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %34 [
    i32 128, label %25
    i32 130, label %26
    i32 129, label %26
  ]

25:                                               ; preds = %21
  br label %36

26:                                               ; preds = %21, %21
  %27 = load %struct.mempolicy*, %struct.mempolicy** %6, align 8
  %28 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nodes_intersects(i32 %30, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %21
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %26, %25
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = call i32 @task_unlock(%struct.task_struct* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local i32 @nodes_intersects(i32, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
