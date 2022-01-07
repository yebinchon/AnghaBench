; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_ptrace_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_ptrace_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.aa_perms = type { i32 }
%struct.TYPE_2__ = type { %struct.aa_label* }

@AA_CLASS_PTRACE = common dso_local global i32 0, align 4
@audit_ptrace_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, %struct.common_audit_data*)* @profile_ptrace_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_ptrace_perm(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.common_audit_data*, align 8
  %9 = alloca %struct.aa_perms, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %5, align 8
  store %struct.aa_label* %1, %struct.aa_label** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %8, align 8
  %10 = bitcast %struct.aa_perms* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %12 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %13 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.aa_label* %11, %struct.aa_label** %14, align 8
  %15 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %16 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %17 = load i32, i32* @AA_CLASS_PTRACE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @aa_profile_match_label(%struct.aa_profile* %15, %struct.aa_label* %16, i32 %17, i32 %18, %struct.aa_perms* %9)
  %20 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %21 = call i32 @aa_apply_modes_to_perms(%struct.aa_profile* %20, %struct.aa_perms* %9)
  %22 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %25 = load i32, i32* @audit_ptrace_cb, align 4
  %26 = call i32 @aa_check_perms(%struct.aa_profile* %22, %struct.aa_perms* %9, i32 %23, %struct.common_audit_data* %24, i32 %25)
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #2

declare dso_local i32 @aa_profile_match_label(%struct.aa_profile*, %struct.aa_label*, i32, i32, %struct.aa_perms*) #2

declare dso_local i32 @aa_apply_modes_to_perms(%struct.aa_profile*, %struct.aa_perms*) #2

declare dso_local i32 @aa_check_perms(%struct.aa_profile*, %struct.aa_perms*, i32, %struct.common_audit_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
