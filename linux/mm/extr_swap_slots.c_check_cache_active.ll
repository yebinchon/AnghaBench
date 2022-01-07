; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_check_cache_active.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_check_cache_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@swap_slot_cache_enabled = common dso_local global i32 0, align 4
@swap_slot_cache_initialized = common dso_local global i32 0, align 4
@swap_slot_cache_active = common dso_local global i32 0, align 4
@THRESHOLD_ACTIVATE_SWAP_SLOTS_CACHE = common dso_local global i64 0, align 8
@THRESHOLD_DEACTIVATE_SWAP_SLOTS_CACHE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_cache_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_cache_active() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @swap_slot_cache_enabled, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @swap_slot_cache_initialized, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %33

9:                                                ; preds = %5
  %10 = call i64 (...) @get_nr_swap_pages()
  store i64 %10, i64* %2, align 8
  %11 = load i32, i32* @swap_slot_cache_active, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = call i64 (...) @num_online_cpus()
  %16 = load i64, i64* @THRESHOLD_ACTIVATE_SWAP_SLOTS_CACHE, align 8
  %17 = mul nsw i64 %15, %16
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 (...) @reactivate_swap_slots_cache()
  br label %21

21:                                               ; preds = %19, %13
  br label %31

22:                                               ; preds = %9
  %23 = load i64, i64* %2, align 8
  %24 = call i64 (...) @num_online_cpus()
  %25 = load i64, i64* @THRESHOLD_DEACTIVATE_SWAP_SLOTS_CACHE, align 8
  %26 = mul nsw i64 %24, %25
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 (...) @deactivate_swap_slots_cache()
  br label %30

30:                                               ; preds = %28, %22
  br label %31

31:                                               ; preds = %30, %21
  %32 = load i32, i32* @swap_slot_cache_active, align 4
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %31, %8
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i64 @get_nr_swap_pages(...) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @reactivate_swap_slots_cache(...) #1

declare dso_local i32 @deactivate_swap_slots_cache(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
