; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_lively_task_by_vpid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_find_lively_task_by_vpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (i32)* @find_lively_task_by_vpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @find_lively_task_by_vpid(i32 %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %4, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.task_struct* @find_task_by_vpid(i32 %11)
  store %struct.task_struct* %12, %struct.task_struct** %4, align 8
  br label %13

13:                                               ; preds = %10, %8
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = icmp ne %struct.task_struct* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = call i32 @get_task_struct(%struct.task_struct* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = icmp ne %struct.task_struct* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ESRCH, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.task_struct* @ERR_PTR(i32 %25)
  store %struct.task_struct* %26, %struct.task_struct** %2, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  store %struct.task_struct* %28, %struct.task_struct** %2, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  ret %struct.task_struct* %30
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.task_struct* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
