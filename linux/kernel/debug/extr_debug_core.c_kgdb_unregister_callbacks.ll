; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_unregister_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_unregister_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kgdb_io_module_registered = common dso_local global i64 0, align 8
@dbg_reboot_notifier = common dso_local global i32 0, align 4
@dbg_module_load_nb = common dso_local global i32 0, align 4
@kgdb_con_registered = common dso_local global i64 0, align 8
@kgdbcons = common dso_local global i32 0, align 4
@sysrq_dbg_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdb_unregister_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_unregister_callbacks() #0 {
  %1 = load i64, i64* @kgdb_io_module_registered, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  store i64 0, i64* @kgdb_io_module_registered, align 8
  %4 = call i32 @unregister_reboot_notifier(i32* @dbg_reboot_notifier)
  %5 = call i32 @unregister_module_notifier(i32* @dbg_module_load_nb)
  %6 = call i32 (...) @kgdb_arch_exit()
  %7 = load i64, i64* @kgdb_con_registered, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = call i32 @unregister_console(i32* @kgdbcons)
  store i64 0, i64* @kgdb_con_registered, align 8
  br label %11

11:                                               ; preds = %9, %3
  br label %12

12:                                               ; preds = %11, %0
  ret void
}

declare dso_local i32 @unregister_reboot_notifier(i32*) #1

declare dso_local i32 @unregister_module_notifier(i32*) #1

declare dso_local i32 @kgdb_arch_exit(...) #1

declare dso_local i32 @unregister_console(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
