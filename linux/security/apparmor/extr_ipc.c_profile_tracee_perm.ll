; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_tracee_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_tracee_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }
%struct.common_audit_data = type { i32 }

@AA_CLASS_PTRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, %struct.common_audit_data*)* @profile_tracee_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_tracee_perm(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_audit_data*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store %struct.aa_label* %1, %struct.aa_label** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %9, align 8
  %10 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %11 = call i64 @profile_unconfined(%struct.aa_profile* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %4
  %14 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %15 = call i64 @unconfined(%struct.aa_label* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %19 = load i32, i32* @AA_CLASS_PTRACE, align 4
  %20 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %13, %4
  store i32 0, i32* %5, align 4
  br label %29

23:                                               ; preds = %17
  %24 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %25 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %28 = call i32 @profile_ptrace_perm(%struct.aa_profile* %24, %struct.aa_label* %25, i32 %26, %struct.common_audit_data* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #1

declare dso_local i64 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i32) #1

declare dso_local i32 @profile_ptrace_perm(%struct.aa_profile*, %struct.aa_label*, i32, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
