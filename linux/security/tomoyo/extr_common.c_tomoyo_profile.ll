; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_profile = type { i32 }
%struct.tomoyo_policy_namespace = type { %struct.tomoyo_profile** }

@tomoyo_profile.tomoyo_null_profile = internal global %struct.tomoyo_profile zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tomoyo_profile* @tomoyo_profile(%struct.tomoyo_policy_namespace* %0, i64 %1) #0 {
  %3 = alloca %struct.tomoyo_policy_namespace*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tomoyo_profile*, align 8
  store %struct.tomoyo_policy_namespace* %0, %struct.tomoyo_policy_namespace** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %3, align 8
  %7 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %6, i32 0, i32 0
  %8 = load %struct.tomoyo_profile**, %struct.tomoyo_profile*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.tomoyo_profile*, %struct.tomoyo_profile** %8, i64 %9
  %11 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %10, align 8
  store %struct.tomoyo_profile* %11, %struct.tomoyo_profile** %5, align 8
  %12 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %5, align 8
  %13 = icmp ne %struct.tomoyo_profile* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.tomoyo_profile* @tomoyo_profile.tomoyo_null_profile, %struct.tomoyo_profile** %5, align 8
  br label %15

15:                                               ; preds = %14, %2
  %16 = load %struct.tomoyo_profile*, %struct.tomoyo_profile** %5, align 8
  ret %struct.tomoyo_profile* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
