; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_panic.c_panic_print_sys_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_panic.c_panic_print_sys_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@panic_print = common dso_local global i32 0, align 4
@PANIC_PRINT_ALL_PRINTK_MSG = common dso_local global i32 0, align 4
@CONSOLE_REPLAY_ALL = common dso_local global i32 0, align 4
@PANIC_PRINT_TASK_INFO = common dso_local global i32 0, align 4
@PANIC_PRINT_MEM_INFO = common dso_local global i32 0, align 4
@PANIC_PRINT_TIMER_INFO = common dso_local global i32 0, align 4
@PANIC_PRINT_LOCK_INFO = common dso_local global i32 0, align 4
@PANIC_PRINT_FTRACE_INFO = common dso_local global i32 0, align 4
@DUMP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @panic_print_sys_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @panic_print_sys_info() #0 {
  %1 = load i32, i32* @panic_print, align 4
  %2 = load i32, i32* @PANIC_PRINT_ALL_PRINTK_MSG, align 4
  %3 = and i32 %1, %2
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @CONSOLE_REPLAY_ALL, align 4
  %7 = call i32 @console_flush_on_panic(i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @panic_print, align 4
  %10 = load i32, i32* @PANIC_PRINT_TASK_INFO, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @show_state()
  br label %15

15:                                               ; preds = %13, %8
  %16 = load i32, i32* @panic_print, align 4
  %17 = load i32, i32* @PANIC_PRINT_MEM_INFO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @show_mem(i32 0, i32* null)
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* @panic_print, align 4
  %24 = load i32, i32* @PANIC_PRINT_TIMER_INFO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (...) @sysrq_timer_list_show()
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @panic_print, align 4
  %31 = load i32, i32* @PANIC_PRINT_LOCK_INFO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @debug_show_all_locks()
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* @panic_print, align 4
  %38 = load i32, i32* @PANIC_PRINT_FTRACE_INFO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @DUMP_ALL, align 4
  %43 = call i32 @ftrace_dump(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @console_flush_on_panic(i32) #1

declare dso_local i32 @show_state(...) #1

declare dso_local i32 @show_mem(i32, i32*) #1

declare dso_local i32 @sysrq_timer_list_show(...) #1

declare dso_local i32 @debug_show_all_locks(...) #1

declare dso_local i32 @ftrace_dump(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
