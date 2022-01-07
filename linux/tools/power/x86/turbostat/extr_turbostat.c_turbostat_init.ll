; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_turbostat_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_turbostat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quiet = common dso_local global i32 0, align 4
@print_hwp = common dso_local global i32 0, align 4
@ODD_COUNTERS = common dso_local global i32 0, align 4
@print_epb = common dso_local global i32 0, align 4
@print_perf_limit = common dso_local global i32 0, align 4
@print_rapl = common dso_local global i32 0, align 4
@set_temperature_target = common dso_local global i32 0, align 4
@print_thermal = common dso_local global i32 0, align 4
@do_irtl_snb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turbostat_init() #0 {
  %1 = call i32 (...) @setup_all_buffers()
  %2 = call i32 (...) @set_base_cpu()
  %3 = call i32 (...) @check_dev_msr()
  %4 = call i32 (...) @check_permissions()
  %5 = call i32 (...) @process_cpuid()
  %6 = load i32, i32* @quiet, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @print_hwp, align 4
  %10 = load i32, i32* @ODD_COUNTERS, align 4
  %11 = call i32 @for_all_cpus(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i32, i32* @quiet, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @print_epb, align 4
  %17 = load i32, i32* @ODD_COUNTERS, align 4
  %18 = call i32 @for_all_cpus(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* @quiet, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @print_perf_limit, align 4
  %24 = load i32, i32* @ODD_COUNTERS, align 4
  %25 = call i32 @for_all_cpus(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @quiet, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* @print_rapl, align 4
  %31 = load i32, i32* @ODD_COUNTERS, align 4
  %32 = call i32 @for_all_cpus(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* @set_temperature_target, align 4
  %35 = load i32, i32* @ODD_COUNTERS, align 4
  %36 = call i32 @for_all_cpus(i32 %34, i32 %35)
  %37 = load i32, i32* @quiet, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @print_thermal, align 4
  %41 = load i32, i32* @ODD_COUNTERS, align 4
  %42 = call i32 @for_all_cpus(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* @quiet, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @do_irtl_snb, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @print_irtl()
  br label %51

51:                                               ; preds = %49, %46, %43
  ret void
}

declare dso_local i32 @setup_all_buffers(...) #1

declare dso_local i32 @set_base_cpu(...) #1

declare dso_local i32 @check_dev_msr(...) #1

declare dso_local i32 @check_permissions(...) #1

declare dso_local i32 @process_cpuid(...) #1

declare dso_local i32 @for_all_cpus(i32, i32) #1

declare dso_local i32 @print_irtl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
