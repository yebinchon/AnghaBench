; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_fork.c_mm_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_fork.c_mm_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mm_struct* @mm_access(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock_killable(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.mm_struct* @ERR_PTR(i32 %16)
  store %struct.mm_struct* %17, %struct.mm_struct** %3, align 8
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %19)
  store %struct.mm_struct* %20, %struct.mm_struct** %6, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %22 = icmp ne %struct.mm_struct* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.mm_struct*, %struct.mm_struct** %26, align 8
  %28 = icmp ne %struct.mm_struct* %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ptrace_may_access(%struct.task_struct* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %36 = call i32 @mmput(%struct.mm_struct* %35)
  %37 = load i32, i32* @EACCES, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.mm_struct* @ERR_PTR(i32 %38)
  store %struct.mm_struct* %39, %struct.mm_struct** %6, align 8
  br label %40

40:                                               ; preds = %34, %29, %23, %18
  %41 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  store %struct.mm_struct* %46, %struct.mm_struct** %3, align 8
  br label %47

47:                                               ; preds = %40, %15
  %48 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  ret %struct.mm_struct* %48
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local %struct.mm_struct* @ERR_PTR(i32) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i32 @ptrace_may_access(%struct.task_struct*, i32) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
