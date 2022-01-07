; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_get_audit.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_get_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_policy_namespace = type { i32 }
%struct.tomoyo_acl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.tomoyo_profile = type { i64*, i64*, i64 }

@tomoyo_index2category = common dso_local global i64* null, align 8
@TOMOYO_MAX_MAC_INDEX = common dso_local global i64 0, align 8
@tomoyo_policy_loaded = common dso_local global i32 0, align 4
@tomoyo_log_count = common dso_local global i64 0, align 8
@TOMOYO_PREF_MAX_AUDIT_LOG = common dso_local global i64 0, align 8
@TOMOYO_GRANTLOG_AUTO = common dso_local global i64 0, align 8
@TOMOYO_GRANTLOG_YES = common dso_local global i64 0, align 8
@TOMOYO_CONFIG_USE_DEFAULT = common dso_local global i64 0, align 8
@TOMOYO_CONFIG_WANT_GRANT_LOG = common dso_local global i64 0, align 8
@TOMOYO_CONFIG_WANT_REJECT_LOG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_policy_namespace*, i64, i64, %struct.tomoyo_acl_info*, i32)* @tomoyo_get_audit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_get_audit(%struct.tomoyo_policy_namespace* %0, i64 %1, i64 %2, %struct.tomoyo_acl_info* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tomoyo_policy_namespace*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tomoyo_acl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.tomoyo_profile*, align 8
  store %struct.tomoyo_policy_namespace* %0, %struct.tomoyo_policy_namespace** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.tomoyo_acl_info* %3, %struct.tomoyo_acl_info** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64*, i64** @tomoyo_index2category, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TOMOYO_MAX_MAC_INDEX, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* @tomoyo_policy_loaded, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %103

24:                                               ; preds = %5
  %25 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.tomoyo_profile* @tomoyo_profile(%struct.tomoyo_policy_namespace* %25, i64 %26)
  store %struct.tomoyo_profile* %27, %struct.tomoyo_profile** %14, align 8
  %28 = load i64, i64* @tomoyo_log_count, align 8
  %29 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %14, align 8
  %30 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @TOMOYO_PREF_MAX_AUDIT_LOG, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %103

37:                                               ; preds = %24
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load %struct.tomoyo_acl_info*, %struct.tomoyo_acl_info** %10, align 8
  %42 = icmp ne %struct.tomoyo_acl_info* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %40
  %44 = load %struct.tomoyo_acl_info*, %struct.tomoyo_acl_info** %10, align 8
  %45 = getelementptr inbounds %struct.tomoyo_acl_info, %struct.tomoyo_acl_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = icmp ne %struct.TYPE_2__* %46, null
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load %struct.tomoyo_acl_info*, %struct.tomoyo_acl_info** %10, align 8
  %50 = getelementptr inbounds %struct.tomoyo_acl_info, %struct.tomoyo_acl_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TOMOYO_GRANTLOG_AUTO, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load %struct.tomoyo_acl_info*, %struct.tomoyo_acl_info** %10, align 8
  %58 = getelementptr inbounds %struct.tomoyo_acl_info, %struct.tomoyo_acl_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TOMOYO_GRANTLOG_YES, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %103

65:                                               ; preds = %48, %43, %40, %37
  %66 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %14, align 8
  %67 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %14, align 8
  %77 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %75, %65
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* @TOMOYO_CONFIG_USE_DEFAULT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %14, align 8
  %88 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* @TOMOYO_CONFIG_WANT_GRANT_LOG, align 8
  %96 = and i64 %94, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %6, align 4
  br label %103

98:                                               ; preds = %90
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* @TOMOYO_CONFIG_WANT_REJECT_LOG, align 8
  %101 = and i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %93, %56, %36, %23
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.tomoyo_profile* @tomoyo_profile(%struct.tomoyo_policy_namespace*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
