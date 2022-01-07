; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_osq_lock.c_osq_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_osq_lock.c_osq_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optimistic_spin_queue = type { i32 }
%struct.optimistic_spin_node = type { i32, i32 }

@OSQ_UNLOCKED_VAL = common dso_local global i32 0, align 4
@osq_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @osq_unlock(%struct.optimistic_spin_queue* %0) #0 {
  %2 = alloca %struct.optimistic_spin_queue*, align 8
  %3 = alloca %struct.optimistic_spin_node*, align 8
  %4 = alloca %struct.optimistic_spin_node*, align 8
  %5 = alloca i32, align 4
  store %struct.optimistic_spin_queue* %0, %struct.optimistic_spin_queue** %2, align 8
  %6 = call i32 (...) @smp_processor_id()
  %7 = call i32 @encode_cpu(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.optimistic_spin_queue*, %struct.optimistic_spin_queue** %2, align 8
  %9 = getelementptr inbounds %struct.optimistic_spin_queue, %struct.optimistic_spin_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @OSQ_UNLOCKED_VAL, align 4
  %12 = call i32 @atomic_cmpxchg_release(i32* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %42

19:                                               ; preds = %1
  %20 = call %struct.optimistic_spin_node* @this_cpu_ptr(i32* @osq_node)
  store %struct.optimistic_spin_node* %20, %struct.optimistic_spin_node** %3, align 8
  %21 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %3, align 8
  %22 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %21, i32 0, i32 1
  %23 = call %struct.optimistic_spin_node* @xchg(i32* %22, i32* null)
  store %struct.optimistic_spin_node* %23, %struct.optimistic_spin_node** %4, align 8
  %24 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %25 = icmp ne %struct.optimistic_spin_node* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %28 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @WRITE_ONCE(i32 %29, i32 1)
  br label %42

31:                                               ; preds = %19
  %32 = load %struct.optimistic_spin_queue*, %struct.optimistic_spin_queue** %2, align 8
  %33 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %3, align 8
  %34 = call %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue* %32, %struct.optimistic_spin_node* %33, i32* null)
  store %struct.optimistic_spin_node* %34, %struct.optimistic_spin_node** %4, align 8
  %35 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %36 = icmp ne %struct.optimistic_spin_node* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.optimistic_spin_node*, %struct.optimistic_spin_node** %4, align 8
  %39 = getelementptr inbounds %struct.optimistic_spin_node, %struct.optimistic_spin_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WRITE_ONCE(i32 %40, i32 1)
  br label %42

42:                                               ; preds = %18, %26, %37, %31
  ret void
}

declare dso_local i32 @encode_cpu(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_cmpxchg_release(i32*, i32, i32) #1

declare dso_local %struct.optimistic_spin_node* @this_cpu_ptr(i32*) #1

declare dso_local %struct.optimistic_spin_node* @xchg(i32*, i32*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local %struct.optimistic_spin_node* @osq_wait_next(%struct.optimistic_spin_queue*, %struct.optimistic_spin_node*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
