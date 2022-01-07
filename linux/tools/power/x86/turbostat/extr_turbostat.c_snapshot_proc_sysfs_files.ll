; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_snapshot_proc_sysfs_files.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_snapshot_proc_sysfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIC_IRQ = common dso_local global i32 0, align 4
@BIC_GFX_rc6 = common dso_local global i32 0, align 4
@BIC_GFXMHz = common dso_local global i32 0, align 4
@BIC_CPU_LPI = common dso_local global i32 0, align 4
@BIC_SYS_LPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_proc_sysfs_files() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @BIC_IRQ, align 4
  %3 = call i64 @DO_BIC(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = call i64 (...) @snapshot_proc_interrupts()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 1, i32* %1, align 4
  br label %35

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9, %0
  %11 = load i32, i32* @BIC_GFX_rc6, align 4
  %12 = call i64 @DO_BIC(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @snapshot_gfx_rc6_ms()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* @BIC_GFXMHz, align 4
  %18 = call i64 @DO_BIC(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @snapshot_gfx_mhz()
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* @BIC_CPU_LPI, align 4
  %24 = call i64 @DO_BIC(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @snapshot_cpu_lpi_us()
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* @BIC_SYS_LPI, align 4
  %30 = call i64 @DO_BIC(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @snapshot_sys_lpi_us()
  br label %34

34:                                               ; preds = %32, %28
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i64 @DO_BIC(i32) #1

declare dso_local i64 @snapshot_proc_interrupts(...) #1

declare dso_local i32 @snapshot_gfx_rc6_ms(...) #1

declare dso_local i32 @snapshot_gfx_mhz(...) #1

declare dso_local i32 @snapshot_cpu_lpi_us(...) #1

declare dso_local i32 @snapshot_sys_lpi_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
