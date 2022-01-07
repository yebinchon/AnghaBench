; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_probe_nhm_msrs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/turbostat/extr_turbostat.c_probe_nhm_msrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@genuine_intel = common dso_local global i32 0, align 4
@bclk = common dso_local global i32 0, align 4
@nhm_pkg_cstate_limits = common dso_local global i32* null, align 8
@snb_pkg_cstate_limits = common dso_local global i32* null, align 8
@has_misc_feature_control = common dso_local global i32 0, align 4
@hsw_pkg_cstate_limits = common dso_local global i32* null, align 8
@skx_pkg_cstate_limits = common dso_local global i32* null, align 8
@no_MSR_MISC_PWR_MGMT = common dso_local global i32 0, align 4
@slv_pkg_cstate_limits = common dso_local global i32* null, align 8
@amt_pkg_cstate_limits = common dso_local global i32* null, align 8
@phi_pkg_cstate_limits = common dso_local global i32* null, align 8
@glm_pkg_cstate_limits = common dso_local global i32* null, align 8
@base_cpu = common dso_local global i32 0, align 4
@MSR_PKG_CST_CONFIG_CONTROL = common dso_local global i32 0, align 4
@pkg_cstate_limit = common dso_local global i32 0, align 4
@MSR_PLATFORM_INFO = common dso_local global i32 0, align 4
@base_hz = common dso_local global i32 0, align 4
@has_base_hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @probe_nhm_msrs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @genuine_intel, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %59

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @discover_bclk(i32 %17, i32 %18)
  store i32 %19, i32* @bclk, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %38 [
    i32 134, label %21
    i32 133, label %21
    i32 132, label %23
    i32 131, label %23
    i32 136, label %23
    i32 135, label %23
    i32 140, label %25
    i32 139, label %25
    i32 137, label %25
    i32 138, label %25
    i32 144, label %25
    i32 143, label %25
    i32 142, label %25
    i32 130, label %25
    i32 141, label %25
    i32 129, label %27
    i32 146, label %29
    i32 145, label %30
    i32 150, label %32
    i32 128, label %34
    i32 149, label %36
    i32 147, label %36
    i32 148, label %36
  ]

21:                                               ; preds = %16, %16
  %22 = load i32*, i32** @nhm_pkg_cstate_limits, align 8
  store i32* %22, i32** %8, align 8
  br label %39

23:                                               ; preds = %16, %16, %16, %16
  %24 = load i32*, i32** @snb_pkg_cstate_limits, align 8
  store i32* %24, i32** %8, align 8
  store i32 1, i32* @has_misc_feature_control, align 4
  br label %39

25:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16
  %26 = load i32*, i32** @hsw_pkg_cstate_limits, align 8
  store i32* %26, i32** %8, align 8
  store i32 1, i32* @has_misc_feature_control, align 4
  br label %39

27:                                               ; preds = %16
  %28 = load i32*, i32** @skx_pkg_cstate_limits, align 8
  store i32* %28, i32** %8, align 8
  store i32 1, i32* @has_misc_feature_control, align 4
  br label %39

29:                                               ; preds = %16
  store i32 1, i32* @no_MSR_MISC_PWR_MGMT, align 4
  br label %30

30:                                               ; preds = %16, %29
  %31 = load i32*, i32** @slv_pkg_cstate_limits, align 8
  store i32* %31, i32** %8, align 8
  br label %39

32:                                               ; preds = %16
  %33 = load i32*, i32** @amt_pkg_cstate_limits, align 8
  store i32* %33, i32** %8, align 8
  store i32 1, i32* @no_MSR_MISC_PWR_MGMT, align 4
  br label %39

34:                                               ; preds = %16
  %35 = load i32*, i32** @phi_pkg_cstate_limits, align 8
  store i32* %35, i32** %8, align 8
  br label %39

36:                                               ; preds = %16, %16, %16
  %37 = load i32*, i32** @glm_pkg_cstate_limits, align 8
  store i32* %37, i32** %8, align 8
  br label %39

38:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %59

39:                                               ; preds = %36, %34, %32, %30, %27, %25, %23, %21
  %40 = load i32, i32* @base_cpu, align 4
  %41 = load i32, i32* @MSR_PKG_CST_CONFIG_CONTROL, align 4
  %42 = call i32 @get_msr(i32 %40, i32 %41, i64* %6)
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %6, align 8
  %45 = and i64 %44, 15
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @pkg_cstate_limit, align 4
  %48 = load i32, i32* @base_cpu, align 4
  %49 = load i32, i32* @MSR_PLATFORM_INFO, align 4
  %50 = call i32 @get_msr(i32 %48, i32 %49, i64* %6)
  %51 = load i64, i64* %6, align 8
  %52 = lshr i64 %51, 8
  %53 = and i64 %52, 255
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @bclk, align 4
  %57 = mul i32 %55, %56
  %58 = mul i32 %57, 1000000
  store i32 %58, i32* @base_hz, align 4
  store i32 1, i32* @has_base_hz, align 4
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %39, %38, %15, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @discover_bclk(i32, i32) #1

declare dso_local i32 @get_msr(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
