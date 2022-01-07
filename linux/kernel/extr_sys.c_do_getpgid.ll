; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_do_getpgid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_do_getpgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.pid = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_getpgid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_getpgid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.pid*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %11 = call %struct.pid* @task_pgrp(%struct.task_struct* %10)
  store %struct.pid* %11, %struct.pid** %4, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* @ESRCH, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.task_struct* @find_task_by_vpid(i32 %15)
  store %struct.task_struct* %16, %struct.task_struct** %3, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = call %struct.pid* @task_pgrp(%struct.task_struct* %21)
  store %struct.pid* %22, %struct.pid** %4, align 8
  %23 = load %struct.pid*, %struct.pid** %4, align 8
  %24 = icmp ne %struct.pid* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @security_task_getpgid(%struct.task_struct* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %36

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %9
  %34 = load %struct.pid*, %struct.pid** %4, align 8
  %35 = call i32 @pid_vnr(%struct.pid* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %31, %25, %19
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pid* @task_pgrp(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @find_task_by_vpid(i32) #1

declare dso_local i32 @security_task_getpgid(%struct.task_struct*) #1

declare dso_local i32 @pid_vnr(%struct.pid*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
