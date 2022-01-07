; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_util.c_tomoyo_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_policy_namespace = type { i32 }
%struct.tomoyo_profile = type { i64*, i64 }

@tomoyo_policy_loaded = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_DISABLED = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_USE_DEFAULT = common dso_local global i64 0, align 8
@tomoyo_index2category = common dso_local global i64* null, align 8
@TOMOYO_MAX_MAC_INDEX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_get_mode(%struct.tomoyo_policy_namespace* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_policy_namespace*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tomoyo_profile*, align 8
  store %struct.tomoyo_policy_namespace* %0, %struct.tomoyo_policy_namespace** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @tomoyo_policy_loaded, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @TOMOYO_CONFIG_DISABLED, align 4
  store i32 %13, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.tomoyo_profile* @tomoyo_profile(%struct.tomoyo_policy_namespace* %15, i64 %16)
  store %struct.tomoyo_profile* %17, %struct.tomoyo_profile** %9, align 8
  %18 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %9, align 8
  %19 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %14
  %28 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %9, align 8
  %29 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64*, i64** @tomoyo_index2category, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds i64, i64* %30, i64 %36
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %27, %14
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %9, align 8
  %45 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = load i64, i64* %8, align 8
  %49 = and i64 %48, 3
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %12
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.tomoyo_profile* @tomoyo_profile(%struct.tomoyo_policy_namespace*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
