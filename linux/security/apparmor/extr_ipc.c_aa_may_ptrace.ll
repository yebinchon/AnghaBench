; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_aa_may_ptrace.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_aa_may_ptrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32 }

@PTRACE_PERM_SHIFT = common dso_local global i32 0, align 4
@sa = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NONE = common dso_local global i32 0, align 4
@OP_PTRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_may_ptrace(%struct.aa_label* %0, %struct.aa_label* %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @PTRACE_PERM_SHIFT, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @sa, align 4
  %13 = load i32, i32* @LSM_AUDIT_DATA_NONE, align 4
  %14 = load i32, i32* @OP_PTRACE, align 4
  %15 = call i32 @DEFINE_AUDIT_DATA(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %18 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %19 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %20 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @profile_tracer_perm(%struct.aa_profile* %19, %struct.aa_label* %20, i32 %21, i32* @sa)
  %23 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %24 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @profile_tracee_perm(%struct.aa_profile* %23, %struct.aa_label* %24, i32 %25, i32* @sa)
  %27 = call i32 @xcheck_labels(%struct.aa_label* %16, %struct.aa_label* %17, %struct.aa_profile* %18, i32 %22, i32 %26)
  ret i32 %27
}

declare dso_local i32 @DEFINE_AUDIT_DATA(i32, i32, i32) #1

declare dso_local i32 @xcheck_labels(%struct.aa_label*, %struct.aa_label*, %struct.aa_profile*, i32, i32) #1

declare dso_local i32 @profile_tracer_perm(%struct.aa_profile*, %struct.aa_label*, i32, i32*) #1

declare dso_local i32 @profile_tracee_perm(%struct.aa_profile*, %struct.aa_label*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
