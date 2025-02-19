; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_free_swap_slot.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_free_swap_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_slots_cache = type { i64, i32, i32* }

@swp_slots = common dso_local global i32 0, align 4
@use_swap_slot_cache = common dso_local global i64 0, align 8
@SWAP_SLOTS_CACHE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_swap_slot(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.swap_slots_cache*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.swap_slots_cache* @raw_cpu_ptr(i32* @swp_slots)
  store %struct.swap_slots_cache* %4, %struct.swap_slots_cache** %3, align 8
  %5 = load i64, i64* @use_swap_slot_cache, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %9 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %12
  %18 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %19 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %18, i32 0, i32 1
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load i64, i64* @use_swap_slot_cache, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %25 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %30 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %63

32:                                               ; preds = %23
  %33 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %34 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SWAP_SLOTS_CACHE_SIZE, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %40 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %43 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @swapcache_free_entries(i32* %41, i32 %45)
  %47 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %48 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %38, %32
  %50 = load i32, i32* %2, align 4
  %51 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %52 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %55 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 %50, i32* %58, align 4
  %59 = load %struct.swap_slots_cache*, %struct.swap_slots_cache** %3, align 8
  %60 = getelementptr inbounds %struct.swap_slots_cache, %struct.swap_slots_cache* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_irq(i32* %60)
  br label %65

62:                                               ; preds = %12
  br label %63

63:                                               ; preds = %62, %28
  %64 = call i32 @swapcache_free_entries(i32* %2, i32 1)
  br label %65

65:                                               ; preds = %63, %49
  ret i32 0
}

declare dso_local %struct.swap_slots_cache* @raw_cpu_ptr(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @swapcache_free_entries(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
