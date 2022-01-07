; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_create_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_create_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kthread_worker_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kthread_worker* @__kthread_create_worker(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.kthread_worker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kthread_worker*, align 8
  %11 = alloca %struct.task_struct*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.kthread_worker* @kzalloc(i32 16, i32 %14)
  store %struct.kthread_worker* %15, %struct.kthread_worker** %10, align 8
  %16 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  %17 = icmp ne %struct.kthread_worker* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.kthread_worker* @ERR_PTR(i32 %20)
  store %struct.kthread_worker* %21, %struct.kthread_worker** %5, align 8
  br label %63

22:                                               ; preds = %4
  %23 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  %24 = call i32 @kthread_init_worker(%struct.kthread_worker* %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @cpu_to_node(i32 %28)
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* @kthread_worker_fn, align 4
  %32 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  %33 = load i32, i32* %12, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.task_struct* @__kthread_create_on_node(i32 %31, %struct.kthread_worker* %32, i32 %33, i8* %34, i32 %35)
  store %struct.task_struct* %36, %struct.task_struct** %11, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %38 = call i64 @IS_ERR(%struct.task_struct* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %58

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @kthread_bind(%struct.task_struct* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  %51 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %53 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  %54 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %53, i32 0, i32 1
  store %struct.task_struct* %52, %struct.task_struct** %54, align 8
  %55 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %56 = call i32 @wake_up_process(%struct.task_struct* %55)
  %57 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  store %struct.kthread_worker* %57, %struct.kthread_worker** %5, align 8
  br label %63

58:                                               ; preds = %40
  %59 = load %struct.kthread_worker*, %struct.kthread_worker** %10, align 8
  %60 = call i32 @kfree(%struct.kthread_worker* %59)
  %61 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  %62 = call %struct.kthread_worker* @ERR_CAST(%struct.task_struct* %61)
  store %struct.kthread_worker* %62, %struct.kthread_worker** %5, align 8
  br label %63

63:                                               ; preds = %58, %48, %18
  %64 = load %struct.kthread_worker*, %struct.kthread_worker** %5, align 8
  ret %struct.kthread_worker* %64
}

declare dso_local %struct.kthread_worker* @kzalloc(i32, i32) #1

declare dso_local %struct.kthread_worker* @ERR_PTR(i32) #1

declare dso_local i32 @kthread_init_worker(%struct.kthread_worker*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.task_struct* @__kthread_create_on_node(i32, %struct.kthread_worker*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @kthread_bind(%struct.task_struct*, i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.kthread_worker*) #1

declare dso_local %struct.kthread_worker* @ERR_CAST(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
