; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_init_worker.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_init_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32, i32, i32 }
%struct.lock_class_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__kthread_init_worker(%struct.kthread_worker* %0, i8* %1, %struct.lock_class_key* %2) #0 {
  %4 = alloca %struct.kthread_worker*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lock_class_key*, align 8
  store %struct.kthread_worker* %0, %struct.kthread_worker** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %6, align 8
  %7 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %8 = call i32 @memset(%struct.kthread_worker* %7, i32 0, i32 12)
  %9 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %10 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %9, i32 0, i32 2
  %11 = call i32 @raw_spin_lock_init(i32* %10)
  %12 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %13 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %12, i32 0, i32 2
  %14 = load %struct.lock_class_key*, %struct.lock_class_key** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @lockdep_set_class_and_name(i32* %13, %struct.lock_class_key* %14, i8* %15)
  %17 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %18 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %21 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %20, i32 0, i32 0
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  ret void
}

declare dso_local i32 @memset(%struct.kthread_worker*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, %struct.lock_class_key*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
