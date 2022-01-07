; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i64 0, align 8
@cpu_selected_set = common dso_local global i64 0, align 8
@pkg_selected_set = common dso_local global i64 0, align 8
@cpu_present_set = common dso_local global i64 0, align 8
@update_hwp_enable = common dso_local global i64 0, align 8
@cpu_setsize = common dso_local global i32 0, align 4
@enable_hwp_on_cpu = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@update_epb = common dso_local global i32 0, align 4
@update_turbo = common dso_local global i32 0, align 4
@print_cpu_msrs = common dso_local global i32 0, align 4
@has_hwp_request_pkg = common dso_local global i64 0, align 8
@pkg_present_set = common dso_local global i64 0, align 8
@print_pkg_msrs = common dso_local global i32 0, align 4
@update_sysfs = common dso_local global i32 0, align 4
@update_cpu_msrs = common dso_local global i32 0, align 4
@update_hwp_request_pkg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @set_base_cpu()
  %7 = call i32 (...) @probe_dev_msr()
  %8 = call i32 (...) @init_data_structures()
  %9 = call i32 (...) @early_cpuid()
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @cmdline(i32 %10, i8** %11)
  %13 = load i64, i64* @debug, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @print_version()
  br label %17

17:                                               ; preds = %15, %2
  %18 = call i32 (...) @parse_cpuid()
  %19 = load i64, i64* @cpu_selected_set, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* @pkg_selected_set, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @cpu_present_set, align 8
  store i64 %25, i64* @cpu_selected_set, align 8
  br label %26

26:                                               ; preds = %24, %21, %17
  %27 = load i64, i64* @update_hwp_enable, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @cpu_setsize, align 4
  %31 = load i64, i64* @cpu_selected_set, align 8
  %32 = load i32, i32* @enable_hwp_on_cpu, align 4
  %33 = call i32 @for_all_cpus_in_set(i32 %30, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %26
  %35 = call i32 (...) @verify_hwp_is_enabled()
  %36 = call i64 (...) @req_update_bounds_check()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %92

41:                                               ; preds = %34
  %42 = load i32, i32* @update_epb, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @update_turbo, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @hwp_update_enabled()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %71, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @cpu_selected_set, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32, i32* @cpu_setsize, align 4
  %55 = load i64, i64* @cpu_selected_set, align 8
  %56 = load i32, i32* @print_cpu_msrs, align 4
  %57 = call i32 @for_all_cpus_in_set(i32 %54, i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i64, i64* @has_hwp_request_pkg, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64, i64* @pkg_selected_set, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i64, i64* @pkg_present_set, align 8
  store i64 %65, i64* @pkg_selected_set, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i64, i64* @pkg_selected_set, align 8
  %68 = load i32, i32* @print_pkg_msrs, align 4
  %69 = call i32 @for_packages(i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %58
  store i32 0, i32* %3, align 4
  br label %92

71:                                               ; preds = %47, %44, %41
  %72 = load i64, i64* @cpu_selected_set, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i32, i32* @cpu_setsize, align 4
  %76 = load i64, i64* @cpu_selected_set, align 8
  %77 = load i32, i32* @update_sysfs, align 4
  %78 = call i32 @for_all_cpus_in_set(i32 %75, i64 %76, i32 %77)
  %79 = load i32, i32* @cpu_setsize, align 4
  %80 = load i64, i64* @cpu_selected_set, align 8
  %81 = load i32, i32* @update_cpu_msrs, align 4
  %82 = call i32 @for_all_cpus_in_set(i32 %79, i64 %80, i32 %81)
  br label %91

83:                                               ; preds = %71
  %84 = load i64, i64* @pkg_selected_set, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i64, i64* @pkg_selected_set, align 8
  %88 = load i32, i32* @update_hwp_request_pkg, align 4
  %89 = call i32 @for_packages(i64 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90, %74
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %70, %38
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @set_base_cpu(...) #1

declare dso_local i32 @probe_dev_msr(...) #1

declare dso_local i32 @init_data_structures(...) #1

declare dso_local i32 @early_cpuid(...) #1

declare dso_local i32 @cmdline(i32, i8**) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @parse_cpuid(...) #1

declare dso_local i32 @for_all_cpus_in_set(i32, i64, i32) #1

declare dso_local i32 @verify_hwp_is_enabled(...) #1

declare dso_local i64 @req_update_bounds_check(...) #1

declare dso_local i32 @hwp_update_enabled(...) #1

declare dso_local i32 @for_packages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
