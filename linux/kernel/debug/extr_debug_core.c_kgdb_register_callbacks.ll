; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_register_callbacks.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_debug_core.c_kgdb_register_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kgdb_io_module_registered = common dso_local global i32 0, align 4
@dbg_is_early = common dso_local global i32 0, align 4
@dbg_module_load_nb = common dso_local global i32 0, align 4
@dbg_reboot_notifier = common dso_local global i32 0, align 4
@kgdb_use_con = common dso_local global i64 0, align 8
@kgdb_con_registered = common dso_local global i32 0, align 4
@kgdbcons = common dso_local global i32 0, align 4
@sysrq_dbg_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kgdb_register_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_register_callbacks() #0 {
  %1 = load i32, i32* @kgdb_io_module_registered, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  store i32 1, i32* @kgdb_io_module_registered, align 4
  %4 = call i32 (...) @kgdb_arch_init()
  %5 = load i32, i32* @dbg_is_early, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = call i32 (...) @kgdb_arch_late()
  br label %9

9:                                                ; preds = %7, %3
  %10 = call i32 @register_module_notifier(i32* @dbg_module_load_nb)
  %11 = call i32 @register_reboot_notifier(i32* @dbg_reboot_notifier)
  %12 = load i64, i64* @kgdb_use_con, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @kgdb_con_registered, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 @register_console(i32* @kgdbcons)
  store i32 1, i32* @kgdb_con_registered, align 4
  br label %19

19:                                               ; preds = %17, %14, %9
  br label %20

20:                                               ; preds = %19, %0
  ret void
}

declare dso_local i32 @kgdb_arch_init(...) #1

declare dso_local i32 @kgdb_arch_late(...) #1

declare dso_local i32 @register_module_notifier(i32*) #1

declare dso_local i32 @register_reboot_notifier(i32*) #1

declare dso_local i32 @register_console(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
