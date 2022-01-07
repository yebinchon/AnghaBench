; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy.h_AUDIT_MODE.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_includepolicy.h_AUDIT_MODE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }

@aa_g_audit = common dso_local global i64 0, align 8
@AUDIT_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*)* @AUDIT_MODE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AUDIT_MODE(%struct.aa_profile* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %3, align 8
  %4 = load i64, i64* @aa_g_audit, align 8
  %5 = load i64, i64* @AUDIT_NORMAL, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @aa_g_audit, align 8
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %12 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
