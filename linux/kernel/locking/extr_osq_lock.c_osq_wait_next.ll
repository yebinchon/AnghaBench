; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_osq_lock.c_osq_wait_next.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_osq_lock.c_osq_wait_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimistic_spin_queue = type { i32 }
%struct.optimistic_spin_node = type { i32, i64 }

@OSQ_UNLOCKED_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.optimistic_spin_node* (%struct.optimistic_spin_queue*, %struct.optimistic_spin_node*, %struct.optimistic_spin_node*)* @osq_wait_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue* %0, %struct.optimistic_spin_node* %1, %struct.optimistic_spin_node* %2) #0 {
  %4 = alloca %struct.optimistic_spin_queue*, align 8
  %5 = alloca %struct.optimistic_spin_node*, align 8
  %6 = alloca %struct.optimistic_spin_node*, align 8
  %7 = alloca %struct.optimistic_spin_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.optimistic_spin_queue* %0, %struct.optimistic_spin_queue** %4, align 8
  store %struct.optimistic_spin_node* %1, %struct.optimistic_spin_node** %5, align 8
  store %struct.optimistic_spin_node* %2, %struct.optimistic_spin_node** %6, align 8
  store %struct.optimistic_spin_node* null, %struct.optimistic_spin_node** %7, align 8
  %10 = call i32 (...) @smp_processor_id()
  %11 = call i32 @encode_cpu(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %6, align 8
  %13 = icmp ne %struct.optimistic_spin_node* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %6, align 8
  %16 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @OSQ_UNLOCKED_VAL, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %17, %14 ], [ %19, %18 ]
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %50, %20
  %23 = load %struct.optimistic_spin_queue*, %struct.optimistic_spin_queue** %4, align 8
  %24 = getelementptr inbounds %struct.optimistic_spin_queue, %struct.optimistic_spin_queue* %23, i32 0, i32 0
  %25 = call i32 @atomic_read(i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.optimistic_spin_queue*, %struct.optimistic_spin_queue** %4, align 8
  %30 = getelementptr inbounds %struct.optimistic_spin_queue, %struct.optimistic_spin_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @atomic_cmpxchg_acquire(i32* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %52

37:                                               ; preds = %28, %22
  %38 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %39 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %5, align 8
  %44 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %43, i32 0, i32 1
  %45 = call %struct.optimistic_spin_node* @xchg(i64* %44, i32* null)
  store %struct.optimistic_spin_node* %45, %struct.optimistic_spin_node** %7, align 8
  %46 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %7, align 8
  %47 = icmp ne %struct.optimistic_spin_node* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %52

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %37
  %51 = call i32 (...) @cpu_relax()
  br label %22

52:                                               ; preds = %48, %36
  %53 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %7, align 8
  ret %struct.optimistic_spin_node* %53
}

declare dso_local i32 @encode_cpu(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_cmpxchg_acquire(i32*, i32, i32) #1

declare dso_local %struct.optimistic_spin_node* @xchg(i64*, i32*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
