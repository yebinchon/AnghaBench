; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_task_work.c_task_work_add.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_task_work.c_task_work_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_head = type { %struct.callback_head* }
%struct.task_struct = type { i32 }

@work_exited = common dso_local global %struct.callback_head zeroinitializer, align 8
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_work_add(%struct.task_struct* %0, %struct.callback_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.callback_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.callback_head*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %5, align 8
  store %struct.callback_head* %1, %struct.callback_head** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %9

9:                                                ; preds = %26, %3
  %10 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.callback_head* @READ_ONCE(i32 %12)
  store %struct.callback_head* %13, %struct.callback_head** %8, align 8
  %14 = load %struct.callback_head*, %struct.callback_head** %8, align 8
  %15 = icmp eq %struct.callback_head* %14, @work_exited
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @ESRCH, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %9
  %23 = load %struct.callback_head*, %struct.callback_head** %8, align 8
  %24 = load %struct.callback_head*, %struct.callback_head** %6, align 8
  %25 = getelementptr inbounds %struct.callback_head, %struct.callback_head* %24, i32 0, i32 0
  store %struct.callback_head* %23, %struct.callback_head** %25, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load %struct.callback_head*, %struct.callback_head** %8, align 8
  %30 = load %struct.callback_head*, %struct.callback_head** %6, align 8
  %31 = call %struct.callback_head* @cmpxchg(i32* %28, %struct.callback_head* %29, %struct.callback_head* %30)
  %32 = load %struct.callback_head*, %struct.callback_head** %8, align 8
  %33 = icmp ne %struct.callback_head* %31, %32
  br i1 %33, label %9, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %39 = call i32 @set_notify_resume(%struct.task_struct* %38)
  br label %40

40:                                               ; preds = %37, %34
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.callback_head* @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.callback_head* @cmpxchg(i32*, %struct.callback_head*, %struct.callback_head*) #1

declare dso_local i32 @set_notify_resume(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
