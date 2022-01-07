; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_task_work.c_task_work_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_task_work.c_task_work_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_head = type { i64, %struct.callback_head* }
%struct.task_struct = type { i32, %struct.callback_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.callback_head* @task_work_cancel(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.callback_head*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.callback_head**, align 8
  %7 = alloca %struct.callback_head*, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  store %struct.callback_head** %10, %struct.callback_head*** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  %13 = load %struct.callback_head*, %struct.callback_head** %12, align 8
  %14 = icmp ne %struct.callback_head* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store %struct.callback_head* null, %struct.callback_head** %3, align 8
  br label %57

20:                                               ; preds = %2
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @raw_spin_lock_irqsave(i32* %22, i64 %23)
  br label %25

25:                                               ; preds = %50, %20
  %26 = load %struct.callback_head**, %struct.callback_head*** %6, align 8
  %27 = load %struct.callback_head*, %struct.callback_head** %26, align 8
  %28 = call %struct.callback_head* @READ_ONCE(%struct.callback_head* %27)
  store %struct.callback_head* %28, %struct.callback_head** %7, align 8
  %29 = icmp ne %struct.callback_head* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.callback_head*, %struct.callback_head** %7, align 8
  %32 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.callback_head*, %struct.callback_head** %7, align 8
  %38 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %37, i32 0, i32 1
  store %struct.callback_head** %38, %struct.callback_head*** %6, align 8
  br label %50

39:                                               ; preds = %30
  %40 = load %struct.callback_head**, %struct.callback_head*** %6, align 8
  %41 = load %struct.callback_head*, %struct.callback_head** %7, align 8
  %42 = load %struct.callback_head*, %struct.callback_head** %7, align 8
  %43 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %42, i32 0, i32 1
  %44 = load %struct.callback_head*, %struct.callback_head** %43, align 8
  %45 = call %struct.callback_head* @cmpxchg(%struct.callback_head** %40, %struct.callback_head* %41, %struct.callback_head* %44)
  %46 = load %struct.callback_head*, %struct.callback_head** %7, align 8
  %47 = icmp eq %struct.callback_head* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %51

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %36
  br label %25

51:                                               ; preds = %48, %25
  %52 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 0
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @raw_spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.callback_head*, %struct.callback_head** %7, align 8
  store %struct.callback_head* %56, %struct.callback_head** %3, align 8
  br label %57

57:                                               ; preds = %51, %19
  %58 = load %struct.callback_head*, %struct.callback_head** %3, align 8
  ret %struct.callback_head* %58
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.callback_head* @READ_ONCE(%struct.callback_head*) #1

declare dso_local %struct.callback_head* @cmpxchg(%struct.callback_head**, %struct.callback_head*, %struct.callback_head*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
