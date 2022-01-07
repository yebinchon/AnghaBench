; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_worker_comm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_wq_worker_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.worker = type { i8*, i64, %struct.worker_pool* }
%struct.worker_pool = type { i32 }

@wq_pool_attach_mutex = common dso_local global i32 0, align 4
@PF_WQ_WORKER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wq_worker_comm(i8* %0, i64 %1, %struct.task_struct* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.worker*, align 8
  %9 = alloca %struct.worker_pool*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @strscpy(i8* %10, i32 %13, i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %85

19:                                               ; preds = %3
  %20 = call i32 @mutex_lock(i32* @wq_pool_attach_mutex)
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PF_WQ_WORKER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %83

27:                                               ; preds = %19
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = call %struct.worker* @kthread_data(%struct.task_struct* %28)
  store %struct.worker* %29, %struct.worker** %8, align 8
  %30 = load %struct.worker*, %struct.worker** %8, align 8
  %31 = getelementptr inbounds %struct.worker, %struct.worker* %30, i32 0, i32 2
  %32 = load %struct.worker_pool*, %struct.worker_pool** %31, align 8
  store %struct.worker_pool* %32, %struct.worker_pool** %9, align 8
  %33 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %34 = icmp ne %struct.worker_pool* %33, null
  br i1 %34, label %35, label %82

35:                                               ; preds = %27
  %36 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %37 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %36, i32 0, i32 0
  %38 = call i32 @spin_lock_irq(i32* %37)
  %39 = load %struct.worker*, %struct.worker** %8, align 8
  %40 = getelementptr inbounds %struct.worker, %struct.worker* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %35
  %47 = load %struct.worker*, %struct.worker** %8, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i64, i64* %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %56, %58
  %60 = load %struct.worker*, %struct.worker** %8, align 8
  %61 = getelementptr inbounds %struct.worker, %struct.worker* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @scnprintf(i8* %55, i64 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %62)
  br label %77

64:                                               ; preds = %46
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = sub i64 %69, %71
  %73 = load %struct.worker*, %struct.worker** %8, align 8
  %74 = getelementptr inbounds %struct.worker, %struct.worker* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @scnprintf(i8* %68, i64 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %64, %51
  br label %78

78:                                               ; preds = %77, %35
  %79 = load %struct.worker_pool*, %struct.worker_pool** %9, align 8
  %80 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  br label %82

82:                                               ; preds = %78, %27
  br label %83

83:                                               ; preds = %82, %19
  %84 = call i32 @mutex_unlock(i32* @wq_pool_attach_mutex)
  br label %85

85:                                               ; preds = %83, %18
  ret void
}

declare dso_local i32 @strscpy(i8*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.worker* @kthread_data(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
