; ModuleID = '/home/carl/AnghaBench/linux/kernel/printk/extr_printk_safe.c_printk_safe_flush_on_panic.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/printk/extr_printk_safe.c_printk_safe_flush_on_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logbuf_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printk_safe_flush_on_panic() #0 {
  %1 = call i64 @raw_spin_is_locked(i32* @logbuf_lock)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = call i32 (...) @num_online_cpus()
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %12

7:                                                ; preds = %3
  %8 = call i32 (...) @debug_locks_off()
  %9 = call i32 @raw_spin_lock_init(i32* @logbuf_lock)
  br label %10

10:                                               ; preds = %7, %0
  %11 = call i32 (...) @printk_safe_flush()
  br label %12

12:                                               ; preds = %10, %6
  ret void
}

declare dso_local i64 @raw_spin_is_locked(i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @debug_locks_off(...) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @printk_safe_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
