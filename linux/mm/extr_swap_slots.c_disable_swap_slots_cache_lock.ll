; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_disable_swap_slots_cache_lock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swap_slots.c_disable_swap_slots_cache_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@swap_slots_cache_enable_mutex = common dso_local global i32 0, align 4
@swap_slot_cache_enabled = common dso_local global i32 0, align 4
@swap_slot_cache_initialized = common dso_local global i64 0, align 8
@SLOTS_CACHE = common dso_local global i32 0, align 4
@SLOTS_CACHE_RET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_swap_slots_cache_lock() #0 {
  %1 = call i32 @mutex_lock(i32* @swap_slots_cache_enable_mutex)
  store i32 0, i32* @swap_slot_cache_enabled, align 4
  %2 = load i64, i64* @swap_slot_cache_initialized, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = call i32 (...) @get_online_cpus()
  %6 = load i32, i32* @SLOTS_CACHE, align 4
  %7 = load i32, i32* @SLOTS_CACHE_RET, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @__drain_swap_slots_cache(i32 %8)
  %10 = call i32 (...) @put_online_cpus()
  br label %11

11:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @__drain_swap_slots_cache(i32) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
