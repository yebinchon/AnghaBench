; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_cstate_pstate_config_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_dump_cstate_pstate_config_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_nhm_platform_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dump_cstate_pstate_config_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_cstate_pstate_config_info(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @do_nhm_platform_info, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %55

8:                                                ; preds = %2
  %9 = call i32 (...) @dump_nhm_platform_info()
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @has_hsw_turbo_ratio_limit(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call i32 (...) @dump_hsw_turbo_ratio_limits()
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @has_ivt_turbo_ratio_limit(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (...) @dump_ivt_turbo_ratio_limits()
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @has_turbo_ratio_limit(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dump_turbo_ratio_limits(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @has_atom_turbo_ratio_limit(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = call i32 (...) @dump_atom_turbo_ratio_limits()
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @has_knl_turbo_ratio_limit(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (...) @dump_knl_turbo_ratio_limits()
  br label %46

46:                                               ; preds = %44, %39
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @has_config_tdp(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (...) @dump_config_tdp()
  br label %53

53:                                               ; preds = %51, %46
  %54 = call i32 (...) @dump_nhm_cst_cfg()
  br label %55

55:                                               ; preds = %53, %7
  ret void
}

declare dso_local i32 @dump_nhm_platform_info(...) #1

declare dso_local i64 @has_hsw_turbo_ratio_limit(i32, i32) #1

declare dso_local i32 @dump_hsw_turbo_ratio_limits(...) #1

declare dso_local i64 @has_ivt_turbo_ratio_limit(i32, i32) #1

declare dso_local i32 @dump_ivt_turbo_ratio_limits(...) #1

declare dso_local i64 @has_turbo_ratio_limit(i32, i32) #1

declare dso_local i32 @dump_turbo_ratio_limits(i32, i32) #1

declare dso_local i64 @has_atom_turbo_ratio_limit(i32, i32) #1

declare dso_local i32 @dump_atom_turbo_ratio_limits(...) #1

declare dso_local i64 @has_knl_turbo_ratio_limit(i32, i32) #1

declare dso_local i32 @dump_knl_turbo_ratio_limits(...) #1

declare dso_local i64 @has_config_tdp(i32, i32) #1

declare dso_local i32 @dump_config_tdp(...) #1

declare dso_local i32 @dump_nhm_cst_cfg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
