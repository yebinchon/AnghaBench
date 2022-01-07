; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___flush_work.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_workqueue.c___flush_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32, i32 }
%struct.wq_barrier = type { i32, i32 }

@wq_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.work_struct*, i32)* @__flush_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__flush_work(%struct.work_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.work_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wq_barrier, align 4
  store %struct.work_struct* %0, %struct.work_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @wq_online, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %16 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %45

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %29 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %28, i32 0, i32 0
  %30 = call i32 @lock_map_acquire(i32* %29)
  %31 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %32 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %31, i32 0, i32 0
  %33 = call i32 @lock_map_release(i32* %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.work_struct*, %struct.work_struct** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @start_flush_work(%struct.work_struct* %35, %struct.wq_barrier* %6, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %6, i32 0, i32 1
  %41 = call i32 @wait_for_completion(i32* %40)
  %42 = getelementptr inbounds %struct.wq_barrier, %struct.wq_barrier* %6, i32 0, i32 0
  %43 = call i32 @destroy_work_on_stack(i32* %42)
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %39, %23, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @lock_map_acquire(i32*) #1

declare dso_local i32 @lock_map_release(i32*) #1

declare dso_local i64 @start_flush_work(%struct.work_struct*, %struct.wq_barrier*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @destroy_work_on_stack(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
