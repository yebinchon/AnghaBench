; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_profile_label_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_profile_label_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.aa_perms = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@aa_audit_perms_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_profile_label_perm(%struct.aa_profile* %0, %struct.aa_profile* %1, i32 %2, i32 %3, i32* %4, %struct.common_audit_data* %5) #0 {
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.common_audit_data*, align 8
  %13 = alloca %struct.aa_perms, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.common_audit_data* %5, %struct.common_audit_data** %12, align 8
  %14 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %15 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %14, i32 0, i32 0
  %16 = load %struct.common_audit_data*, %struct.common_audit_data** %12, align 8
  %17 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32* %15, i32** %18, align 8
  %19 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %20 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %19, i32 0, i32 0
  %21 = load %struct.common_audit_data*, %struct.common_audit_data** %12, align 8
  %22 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i32* %20, i32** %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.common_audit_data*, %struct.common_audit_data** %12, align 8
  %26 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %29 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %30 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %29, i32 0, i32 0
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @aa_profile_match_label(%struct.aa_profile* %28, i32* %30, i32 %31, i32 %32, %struct.aa_perms* %13)
  %34 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %35 = call i32 @aa_apply_modes_to_perms(%struct.aa_profile* %34, %struct.aa_perms* %13)
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %13, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %36, %38
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.common_audit_data*, %struct.common_audit_data** %12, align 8
  %46 = load i32, i32* @aa_audit_perms_cb, align 4
  %47 = call i32 @aa_check_perms(%struct.aa_profile* %43, %struct.aa_perms* %13, i32 %44, %struct.common_audit_data* %45, i32 %46)
  ret i32 %47
}

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @aa_profile_match_label(%struct.aa_profile*, i32*, i32, i32, %struct.aa_perms*) #1

declare dso_local i32 @aa_apply_modes_to_perms(%struct.aa_profile*, %struct.aa_perms*) #1

declare dso_local i32 @aa_check_perms(%struct.aa_profile*, %struct.aa_perms*, i32, %struct.common_audit_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
