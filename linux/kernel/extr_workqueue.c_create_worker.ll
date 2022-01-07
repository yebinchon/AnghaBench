; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_create_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c_create_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.worker_pool = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%d:%d%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"u%d:%d\00", align 1
@worker_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"kworker/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.worker* (%struct.worker_pool*)* @create_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.worker* @create_worker(%struct.worker_pool* %0) #0 {
  %2 = alloca %struct.worker*, align 8
  %3 = alloca %struct.worker_pool*, align 8
  %4 = alloca %struct.worker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8], align 16
  store %struct.worker_pool* %0, %struct.worker_pool** %3, align 8
  store %struct.worker* null, %struct.worker** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %8 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %7, i32 0, i32 2
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @ida_simple_get(i32* %8, i32 0, i32 0, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %109

14:                                               ; preds = %1
  %15 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %16 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.worker* @alloc_worker(i32 %17)
  store %struct.worker* %18, %struct.worker** %4, align 8
  %19 = load %struct.worker*, %struct.worker** %4, align 8
  %20 = icmp ne %struct.worker* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %109

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.worker*, %struct.worker** %4, align 8
  %25 = getelementptr inbounds %struct.worker, %struct.worker* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %27 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %22
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %32 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %33 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %37 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %36, i32 0, i32 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %31, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i8* %43)
  br label %52

45:                                               ; preds = %22
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %47 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %48 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, i32, i8*, i32, i32, ...) @snprintf(i8* %46, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %30
  %53 = load i32, i32* @worker_thread, align 4
  %54 = load %struct.worker*, %struct.worker** %4, align 8
  %55 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %56 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %59 = call i32 @kthread_create_on_node(i32 %53, %struct.worker* %54, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load %struct.worker*, %struct.worker** %4, align 8
  %61 = getelementptr inbounds %struct.worker, %struct.worker* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.worker*, %struct.worker** %4, align 8
  %63 = getelementptr inbounds %struct.worker, %struct.worker* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %109

68:                                               ; preds = %52
  %69 = load %struct.worker*, %struct.worker** %4, align 8
  %70 = getelementptr inbounds %struct.worker, %struct.worker* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %73 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @set_user_nice(i32 %71, i64 %76)
  %78 = load %struct.worker*, %struct.worker** %4, align 8
  %79 = getelementptr inbounds %struct.worker, %struct.worker* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %82 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %81, i32 0, i32 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @kthread_bind_mask(i32 %80, i32 %85)
  %87 = load %struct.worker*, %struct.worker** %4, align 8
  %88 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %89 = call i32 @worker_attach_to_pool(%struct.worker* %87, %struct.worker_pool* %88)
  %90 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %91 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %90, i32 0, i32 3
  %92 = call i32 @spin_lock_irq(i32* %91)
  %93 = load %struct.worker*, %struct.worker** %4, align 8
  %94 = getelementptr inbounds %struct.worker, %struct.worker* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.worker*, %struct.worker** %4, align 8
  %100 = call i32 @worker_enter_idle(%struct.worker* %99)
  %101 = load %struct.worker*, %struct.worker** %4, align 8
  %102 = getelementptr inbounds %struct.worker, %struct.worker* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @wake_up_process(i32 %103)
  %105 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %106 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %105, i32 0, i32 3
  %107 = call i32 @spin_unlock_irq(i32* %106)
  %108 = load %struct.worker*, %struct.worker** %4, align 8
  store %struct.worker* %108, %struct.worker** %2, align 8
  br label %120

109:                                              ; preds = %67, %21, %13
  %110 = load i32, i32* %5, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.worker_pool*, %struct.worker_pool** %3, align 8
  %114 = getelementptr inbounds %struct.worker_pool, %struct.worker_pool* %113, i32 0, i32 2
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @ida_simple_remove(i32* %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %109
  %118 = load %struct.worker*, %struct.worker** %4, align 8
  %119 = call i32 @kfree(%struct.worker* %118)
  store %struct.worker* null, %struct.worker** %2, align 8
  br label %120

120:                                              ; preds = %117, %68
  %121 = load %struct.worker*, %struct.worker** %2, align 8
  ret %struct.worker* %121
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local %struct.worker* @alloc_worker(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @kthread_create_on_node(i32, %struct.worker*, i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @set_user_nice(i32, i64) #1

declare dso_local i32 @kthread_bind_mask(i32, i32) #1

declare dso_local i32 @worker_attach_to_pool(%struct.worker*, %struct.worker_pool*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @worker_enter_idle(%struct.worker*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
