; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_tracer_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_tracer_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.aa_label }
%struct.aa_label = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_2__ = type { i32, i64, %struct.aa_label*, %struct.aa_label* }

@AA_CLASS_PTRACE = common dso_local global i32 0, align 4
@CAP_SYS_PTRACE = common dso_local global i32 0, align 4
@CAP_OPT_NONE = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_AUTO = common dso_local global i32 0, align 4
@audit_ptrace_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, %struct.common_audit_data*)* @profile_tracer_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_tracer_perm(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, %struct.common_audit_data* %3) #0 {
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
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

14:                                               ; preds = %4
  %15 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %16 = load i32, i32* @AA_CLASS_PTRACE, align 4
  %17 = call i64 @PROFILE_MEDIATES(%struct.aa_profile* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %21 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %24 = call i32 @profile_ptrace_perm(%struct.aa_profile* %20, %struct.aa_label* %21, i32 %22, %struct.common_audit_data* %23)
  store i32 %24, i32* %5, align 4
  br label %57

25:                                               ; preds = %14
  %26 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %27 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %26, i32 0, i32 0
  %28 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %29 = icmp eq %struct.aa_label* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %57

31:                                               ; preds = %25
  %32 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %33 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %32, i32 0, i32 0
  %34 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %35 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store %struct.aa_label* %33, %struct.aa_label** %36, align 8
  %37 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %38 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %39 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store %struct.aa_label* %37, %struct.aa_label** %40, align 8
  %41 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %42 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %41)
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %45 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %44, i32 0, i32 0
  %46 = load i32, i32* @CAP_SYS_PTRACE, align 4
  %47 = load i32, i32* @CAP_OPT_NONE, align 4
  %48 = call i32 @aa_capable(%struct.aa_label* %45, i32 %46, i32 %47)
  %49 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %50 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @AUDIT_APPARMOR_AUTO, align 4
  %53 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %54 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %55 = load i32, i32* @audit_ptrace_cb, align 4
  %56 = call i32 @aa_audit(i32 %52, %struct.aa_profile* %53, %struct.common_audit_data* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %31, %30, %19, %13
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #1

declare dso_local i64 @PROFILE_MEDIATES(%struct.aa_profile*, i32) #1

declare dso_local i32 @profile_ptrace_perm(%struct.aa_profile*, %struct.aa_label*, i32, %struct.common_audit_data*) #1

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @aa_capable(%struct.aa_label*, i32, i32) #1

declare dso_local i32 @aa_audit(i32, %struct.aa_profile*, %struct.common_audit_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
