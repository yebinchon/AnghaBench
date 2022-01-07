; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_task_work.c_task_work_run.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_task_work.c_task_work_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, i32 }
%struct.callback_head = type { i32 (%struct.callback_head*)*, %struct.callback_head* }

@current = common dso_local global %struct.task_struct* null, align 8
@PF_EXITING = common dso_local global i32 0, align 4
@work_exited = common dso_local global %struct.callback_head zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_work_run() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca %struct.callback_head*, align 8
  %3 = alloca %struct.callback_head*, align 8
  %4 = alloca %struct.callback_head*, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %5, %struct.task_struct** %1, align 8
  br label %6

6:                                                ; preds = %58, %0
  %7 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 1
  %9 = call i32 @raw_spin_lock_irq(i32* %8)
  br label %10

10:                                               ; preds = %28, %6
  %11 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.callback_head* @READ_ONCE(i32 %13)
  store %struct.callback_head* %14, %struct.callback_head** %2, align 8
  %15 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %16 = icmp ne %struct.callback_head* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PF_EXITING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %17, %10
  %25 = phi i1 [ false, %10 ], [ %23, %17 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, %struct.callback_head* @work_exited, %struct.callback_head* null
  store %struct.callback_head* %27, %struct.callback_head** %3, align 8
  br label %28

28:                                               ; preds = %24
  %29 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 2
  %31 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %32 = load %struct.callback_head*, %struct.callback_head** %3, align 8
  %33 = call %struct.callback_head* @cmpxchg(i32* %30, %struct.callback_head* %31, %struct.callback_head* %32)
  %34 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %35 = icmp ne %struct.callback_head* %33, %34
  br i1 %35, label %10, label %36

36:                                               ; preds = %28
  %37 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 1
  %39 = call i32 @raw_spin_unlock_irq(i32* %38)
  %40 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %41 = icmp ne %struct.callback_head* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %59

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %55, %43
  %45 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %46 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %45, i32 0, i32 1
  %47 = load %struct.callback_head*, %struct.callback_head** %46, align 8
  store %struct.callback_head* %47, %struct.callback_head** %4, align 8
  %48 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %49 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %48, i32 0, i32 0
  %50 = load i32 (%struct.callback_head*)*, i32 (%struct.callback_head*)** %49, align 8
  %51 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %52 = call i32 %50(%struct.callback_head* %51)
  %53 = load %struct.callback_head*, %struct.callback_head** %4, align 8
  store %struct.callback_head* %53, %struct.callback_head** %2, align 8
  %54 = call i32 (...) @cond_resched()
  br label %55

55:                                               ; preds = %44
  %56 = load %struct.callback_head*, %struct.callback_head** %2, align 8
  %57 = icmp ne %struct.callback_head* %56, null
  br i1 %57, label %44, label %58

58:                                               ; preds = %55
  br label %6

59:                                               ; preds = %42
  ret void
}

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local %struct.callback_head* @READ_ONCE(i32) #1

declare dso_local %struct.callback_head* @cmpxchg(i32*, %struct.callback_head*, %struct.callback_head*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
