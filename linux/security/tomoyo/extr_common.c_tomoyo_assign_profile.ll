; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_assign_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_assign_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_profile = type { i32, i32*, i32 }
%struct.tomoyo_policy_namespace = type { %struct.tomoyo_profile** }

@TOMOYO_MAX_PROFILES = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@tomoyo_policy_lock = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_DISABLED = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_WANT_GRANT_LOG = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_WANT_REJECT_LOG = common dso_local global i32 0, align 4
@TOMOYO_CONFIG_USE_DEFAULT = common dso_local global i32 0, align 4
@CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG = common dso_local global i32 0, align 4
@TOMOYO_PREF_MAX_AUDIT_LOG = common dso_local global i64 0, align 8
@CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY = common dso_local global i32 0, align 4
@TOMOYO_PREF_MAX_LEARNING_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tomoyo_profile* (%struct.tomoyo_policy_namespace*, i32)* @tomoyo_assign_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tomoyo_profile* @tomoyo_assign_profile(%struct.tomoyo_policy_namespace* %0, i32 %1) #0 {
  %3 = alloca %struct.tomoyo_profile*, align 8
  %4 = alloca %struct.tomoyo_policy_namespace*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tomoyo_profile*, align 8
  %7 = alloca %struct.tomoyo_profile*, align 8
  store %struct.tomoyo_policy_namespace* %0, %struct.tomoyo_policy_namespace** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @TOMOYO_MAX_PROFILES, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.tomoyo_profile* null, %struct.tomoyo_profile** %3, align 8
  br label %84

12:                                               ; preds = %2
  %13 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  %14 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %13, i32 0, i32 0
  %15 = load %struct.tomoyo_profile**, %struct.tomoyo_profile*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tomoyo_profile*, %struct.tomoyo_profile** %15, i64 %17
  %19 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %18, align 8
  store %struct.tomoyo_profile* %19, %struct.tomoyo_profile** %6, align 8
  %20 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %21 = icmp ne %struct.tomoyo_profile* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  store %struct.tomoyo_profile* %23, %struct.tomoyo_profile** %3, align 8
  br label %84

24:                                               ; preds = %12
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call %struct.tomoyo_profile* @kzalloc(i32 24, i32 %25)
  store %struct.tomoyo_profile* %26, %struct.tomoyo_profile** %7, align 8
  %27 = call i64 @mutex_lock_interruptible(i32* @tomoyo_policy_lock)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %80

30:                                               ; preds = %24
  %31 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  %32 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %31, i32 0, i32 0
  %33 = load %struct.tomoyo_profile**, %struct.tomoyo_profile*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tomoyo_profile*, %struct.tomoyo_profile** %33, i64 %35
  %37 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %36, align 8
  store %struct.tomoyo_profile* %37, %struct.tomoyo_profile** %6, align 8
  %38 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %39 = icmp ne %struct.tomoyo_profile* %38, null
  br i1 %39, label %78, label %40

40:                                               ; preds = %30
  %41 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %42 = call i64 @tomoyo_memory_ok(%struct.tomoyo_profile* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %40
  %45 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  store %struct.tomoyo_profile* %45, %struct.tomoyo_profile** %6, align 8
  %46 = load i32, i32* @TOMOYO_CONFIG_DISABLED, align 4
  %47 = load i32, i32* @TOMOYO_CONFIG_WANT_GRANT_LOG, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TOMOYO_CONFIG_WANT_REJECT_LOG, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %52 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %54 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TOMOYO_CONFIG_USE_DEFAULT, align 4
  %57 = call i32 @memset(i32 %55, i32 %56, i32 4)
  %58 = load i32, i32* @CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG, align 4
  %59 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %60 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @TOMOYO_PREF_MAX_AUDIT_LOG, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* @CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY, align 4
  %65 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %66 = getelementptr inbounds %struct.tomoyo_profile, %struct.tomoyo_profile* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @TOMOYO_PREF_MAX_LEARNING_ENTRY, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = call i32 (...) @mb()
  %71 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  %72 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %4, align 8
  %73 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %72, i32 0, i32 0
  %74 = load %struct.tomoyo_profile**, %struct.tomoyo_profile*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.tomoyo_profile*, %struct.tomoyo_profile** %74, i64 %76
  store %struct.tomoyo_profile* %71, %struct.tomoyo_profile** %77, align 8
  store %struct.tomoyo_profile* null, %struct.tomoyo_profile** %7, align 8
  br label %78

78:                                               ; preds = %44, %40, %30
  %79 = call i32 @mutex_unlock(i32* @tomoyo_policy_lock)
  br label %80

80:                                               ; preds = %78, %29
  %81 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %7, align 8
  %82 = call i32 @kfree(%struct.tomoyo_profile* %81)
  %83 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %6, align 8
  store %struct.tomoyo_profile* %83, %struct.tomoyo_profile** %3, align 8
  br label %84

84:                                               ; preds = %80, %22, %11
  %85 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %3, align 8
  ret %struct.tomoyo_profile* %85
}

declare dso_local %struct.tomoyo_profile* @kzalloc(i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @tomoyo_memory_ok(%struct.tomoyo_profile*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.tomoyo_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
