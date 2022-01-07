; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_insert_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_insert_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kthread_worker = type { i32, i32 }
%struct.kthread_work = type { %struct.kthread_worker*, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kthread_worker*, %struct.kthread_work*, %struct.list_head*)* @kthread_insert_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kthread_insert_work(%struct.kthread_worker* %0, %struct.kthread_work* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.kthread_worker*, align 8
  %5 = alloca %struct.kthread_work*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.kthread_worker* %0, %struct.kthread_worker** %4, align 8
  store %struct.kthread_work* %1, %struct.kthread_work** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %8 = load %struct.kthread_work*, %struct.kthread_work** %5, align 8
  %9 = call i32 @kthread_insert_work_sanity_check(%struct.kthread_worker* %7, %struct.kthread_work* %8)
  %10 = load %struct.kthread_work*, %struct.kthread_work** %5, align 8
  %11 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %10, i32 0, i32 1
  %12 = load %struct.list_head*, %struct.list_head** %6, align 8
  %13 = call i32 @list_add_tail(i32* %11, %struct.list_head* %12)
  %14 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %15 = load %struct.kthread_work*, %struct.kthread_work** %5, align 8
  %16 = getelementptr inbounds %struct.kthread_work, %struct.kthread_work* %15, i32 0, i32 0
  store %struct.kthread_worker* %14, %struct.kthread_worker** %16, align 8
  %17 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %18 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %23 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.kthread_worker*, %struct.kthread_worker** %4, align 8
  %29 = getelementptr inbounds %struct.kthread_worker, %struct.kthread_worker* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wake_up_process(i32 %30)
  br label %32

32:                                               ; preds = %27, %21, %3
  ret void
}

declare dso_local i32 @kthread_insert_work_sanity_check(%struct.kthread_worker*, %struct.kthread_work*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
