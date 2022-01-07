; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file_table.c_fput_many.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file_table.c_fput_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.file = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@PF_KTHREAD = common dso_local global i32 0, align 4
@____fput = common dso_local global i32 0, align 4
@delayed_fput_list = common dso_local global i32 0, align 4
@delayed_fput_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fput_many(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 1
  %9 = call i64 @atomic_long_sub_and_test(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %12, %struct.task_struct** %5, align 8
  %13 = call i32 (...) @in_interrupt()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PF_KTHREAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi i1 [ false, %11 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.file*, %struct.file** %3, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* @____fput, align 4
  %33 = call i32 @init_task_work(i32* %31, i32 %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %35 = load %struct.file*, %struct.file** %3, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @task_work_add(%struct.task_struct* %34, i32* %37, i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %51

41:                                               ; preds = %28
  br label %42

42:                                               ; preds = %41, %23
  %43 = load %struct.file*, %struct.file** %3, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i64 @llist_add(i32* %45, i32* @delayed_fput_list)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @schedule_delayed_work(i32* @delayed_fput_work, i32 1)
  br label %50

50:                                               ; preds = %48, %42
  br label %51

51:                                               ; preds = %40, %50, %2
  ret void
}

declare dso_local i64 @atomic_long_sub_and_test(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @init_task_work(i32*, i32) #1

declare dso_local i32 @task_work_add(%struct.task_struct*, i32*, i32) #1

declare dso_local i64 @llist_add(i32*, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
