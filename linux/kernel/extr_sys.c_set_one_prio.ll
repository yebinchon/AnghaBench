; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_set_one_prio.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_set_one_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32, i32)* @set_one_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_one_prio(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = call i32 @set_one_prio_perm(%struct.task_struct* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %6, align 4
  br label %45

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = call i32 @task_nice(%struct.task_struct* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @can_nice(%struct.task_struct* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %45

27:                                               ; preds = %19, %14
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @security_task_setnice(%struct.task_struct* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %6, align 4
  br label %45

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ESRCH, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @set_user_nice(%struct.task_struct* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %33, %24, %11
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @set_one_prio_perm(%struct.task_struct*) #1

declare dso_local i32 @task_nice(%struct.task_struct*) #1

declare dso_local i32 @can_nice(%struct.task_struct*, i32) #1

declare dso_local i32 @security_task_setnice(%struct.task_struct*, i32) #1

declare dso_local i32 @set_user_nice(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
