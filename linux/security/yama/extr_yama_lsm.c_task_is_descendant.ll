; ModuleID = '/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_task_is_descendant.c'
source_filename = "/home/carl/AnghaBench/linux/security/yama/extr_yama_lsm.c_task_is_descendant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, %struct.task_struct*)* @task_is_descendant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_is_descendant(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  store %struct.task_struct* %8, %struct.task_struct** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = icmp ne %struct.task_struct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %13 = icmp ne %struct.task_struct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %53

15:                                               ; preds = %11
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i32 @thread_group_leader(%struct.task_struct* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.task_struct* @rcu_dereference(i32 %23)
  store %struct.task_struct* %24, %struct.task_struct** %4, align 8
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %45, %25
  %27 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %33 = call i32 @thread_group_leader(%struct.task_struct* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.task_struct* @rcu_dereference(i32 %38)
  store %struct.task_struct* %39, %struct.task_struct** %7, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = icmp eq %struct.task_struct* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %50

45:                                               ; preds = %40
  %46 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %47 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.task_struct* @rcu_dereference(i32 %48)
  store %struct.task_struct* %49, %struct.task_struct** %7, align 8
  br label %26

50:                                               ; preds = %44, %26
  %51 = call i32 (...) @rcu_read_unlock()
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @thread_group_leader(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
