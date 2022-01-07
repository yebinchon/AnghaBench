; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c_call_srcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutiny.c_call_srcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { %struct.TYPE_2__, i32, %struct.rcu_head** }
%struct.TYPE_2__ = type { i32 }
%struct.rcu_head = type { %struct.rcu_head*, i32 }

@srcu_init_done = common dso_local global i32 0, align 4
@srcu_boot_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @call_srcu(%struct.srcu_struct* %0, %struct.rcu_head* %1, i32 %2) #0 {
  %4 = alloca %struct.srcu_struct*, align 8
  %5 = alloca %struct.rcu_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %4, align 8
  store %struct.rcu_head* %1, %struct.rcu_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %10 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %12 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %11, i32 0, i32 0
  store %struct.rcu_head* null, %struct.rcu_head** %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @local_irq_save(i64 %13)
  %15 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %16 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %17 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %16, i32 0, i32 2
  %18 = load %struct.rcu_head**, %struct.rcu_head*** %17, align 8
  store %struct.rcu_head* %15, %struct.rcu_head** %18, align 8
  %19 = load %struct.rcu_head*, %struct.rcu_head** %5, align 8
  %20 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %19, i32 0, i32 0
  %21 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %22 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %21, i32 0, i32 2
  store %struct.rcu_head** %20, %struct.rcu_head*** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @local_irq_restore(i64 %23)
  %25 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %26 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @READ_ONCE(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @srcu_init_done, align 4
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %36 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %35, i32 0, i32 0
  %37 = call i32 @schedule_work(%struct.TYPE_2__* %36)
  br label %50

38:                                               ; preds = %30
  %39 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %40 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i64 @list_empty(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.srcu_struct*, %struct.srcu_struct** %4, align 8
  %46 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @list_add(i32* %47, i32* @srcu_boot_list)
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %3
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @schedule_work(%struct.TYPE_2__*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
