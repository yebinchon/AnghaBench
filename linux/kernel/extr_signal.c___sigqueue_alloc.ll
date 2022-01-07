; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_signal.c___sigqueue_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_signal.c___sigqueue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigqueue = type { %struct.user_struct*, i64, i32 }
%struct.user_struct = type { i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RLIMIT_SIGPENDING = common dso_local global i32 0, align 4
@sigqueue_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sigqueue* (i32, %struct.task_struct*, i32, i32)* @__sigqueue_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sigqueue* @__sigqueue_alloc(i32 %0, %struct.task_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sigqueue*, align 8
  %10 = alloca %struct.user_struct*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.sigqueue* null, %struct.sigqueue** %9, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %13 = call %struct.TYPE_2__* @__task_cred(%struct.task_struct* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.user_struct* @get_uid(i32 %15)
  store %struct.user_struct* %16, %struct.user_struct** %10, align 8
  %17 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %18 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %25 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %24, i32 0, i32 0
  %26 = call i64 @atomic_read(i32* %25)
  %27 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %28 = load i32, i32* @RLIMIT_SIGPENDING, align 4
  %29 = call i64 @task_rlimit(%struct.task_struct* %27, i32 %28)
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23, %4
  %32 = load i32, i32* @sigqueue_cachep, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.sigqueue* @kmem_cache_alloc(i32 %32, i32 %33)
  store %struct.sigqueue* %34, %struct.sigqueue** %9, align 8
  br label %38

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @print_dropped_signal(i32 %36)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.sigqueue*, %struct.sigqueue** %9, align 8
  %40 = icmp eq %struct.sigqueue* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %46 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %45, i32 0, i32 0
  %47 = call i32 @atomic_dec(i32* %46)
  %48 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %49 = call i32 @free_uid(%struct.user_struct* %48)
  br label %59

50:                                               ; preds = %38
  %51 = load %struct.sigqueue*, %struct.sigqueue** %9, align 8
  %52 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %51, i32 0, i32 2
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.sigqueue*, %struct.sigqueue** %9, align 8
  %55 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.user_struct*, %struct.user_struct** %10, align 8
  %57 = load %struct.sigqueue*, %struct.sigqueue** %9, align 8
  %58 = getelementptr inbounds %struct.sigqueue, %struct.sigqueue* %57, i32 0, i32 0
  store %struct.user_struct* %56, %struct.user_struct** %58, align 8
  br label %59

59:                                               ; preds = %50, %44
  %60 = load %struct.sigqueue*, %struct.sigqueue** %9, align 8
  ret %struct.sigqueue* %60
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.user_struct* @get_uid(i32) #1

declare dso_local %struct.TYPE_2__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @task_rlimit(%struct.task_struct*, i32) #1

declare dso_local %struct.sigqueue* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @print_dropped_signal(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
