; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_init_rescuer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_init_rescuer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue_struct = type { i32, %struct.worker*, i32 }
%struct.worker = type { i32, %struct.workqueue_struct* }

@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rescuer_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@cpu_possible_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.workqueue_struct*)* @init_rescuer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_rescuer(%struct.workqueue_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.workqueue_struct*, align 8
  %4 = alloca %struct.worker*, align 8
  %5 = alloca i32, align 4
  store %struct.workqueue_struct* %0, %struct.workqueue_struct** %3, align 8
  %6 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %7 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

13:                                               ; preds = %1
  %14 = load i32, i32* @NUMA_NO_NODE, align 4
  %15 = call %struct.worker* @alloc_worker(i32 %14)
  store %struct.worker* %15, %struct.worker** %4, align 8
  %16 = load %struct.worker*, %struct.worker** %4, align 8
  %17 = icmp ne %struct.worker* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %56

21:                                               ; preds = %13
  %22 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %23 = load %struct.worker*, %struct.worker** %4, align 8
  %24 = getelementptr inbounds %struct.worker, %struct.worker* %23, i32 0, i32 1
  store %struct.workqueue_struct* %22, %struct.workqueue_struct** %24, align 8
  %25 = load i32, i32* @rescuer_thread, align 4
  %26 = load %struct.worker*, %struct.worker** %4, align 8
  %27 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %28 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @kthread_create(i32 %25, %struct.worker* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.worker*, %struct.worker** %4, align 8
  %32 = getelementptr inbounds %struct.worker, %struct.worker* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.worker*, %struct.worker** %4, align 8
  %34 = getelementptr inbounds %struct.worker, %struct.worker* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR_OR_ZERO(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %21
  %40 = load %struct.worker*, %struct.worker** %4, align 8
  %41 = call i32 @kfree(%struct.worker* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %56

43:                                               ; preds = %21
  %44 = load %struct.worker*, %struct.worker** %4, align 8
  %45 = load %struct.workqueue_struct*, %struct.workqueue_struct** %3, align 8
  %46 = getelementptr inbounds %struct.workqueue_struct, %struct.workqueue_struct* %45, i32 0, i32 1
  store %struct.worker* %44, %struct.worker** %46, align 8
  %47 = load %struct.worker*, %struct.worker** %4, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @cpu_possible_mask, align 4
  %51 = call i32 @kthread_bind_mask(i32 %49, i32 %50)
  %52 = load %struct.worker*, %struct.worker** %4, align 8
  %53 = getelementptr inbounds %struct.worker, %struct.worker* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wake_up_process(i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %43, %39, %18, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.worker* @alloc_worker(i32) #1

declare dso_local i32 @kthread_create(i32, %struct.worker*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @kfree(%struct.worker*) #1

declare dso_local i32 @kthread_bind_mask(i32, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
