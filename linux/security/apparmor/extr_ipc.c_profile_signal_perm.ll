; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_signal_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_profile_signal_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.aa_label = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.aa_perms = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.aa_label* }

@AA_CLASS_SIGNAL = common dso_local global i64 0, align 8
@audit_signal_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, %struct.common_audit_data*)* @profile_signal_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_signal_perm(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, %struct.common_audit_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_profile*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.common_audit_data*, align 8
  %10 = alloca %struct.aa_perms, align 4
  %11 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %6, align 8
  store %struct.aa_label* %1, %struct.aa_label** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.common_audit_data* %3, %struct.common_audit_data** %9, align 8
  %12 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %13 = call i64 @profile_unconfined(%struct.aa_profile* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %17 = load i64, i64* @AA_CLASS_SIGNAL, align 8
  %18 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %54

21:                                               ; preds = %15
  %22 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %23 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %24 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.aa_label* %22, %struct.aa_label** %25, align 8
  %26 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %27 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %31 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @AA_CLASS_SIGNAL, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %38 = call %struct.TYPE_4__* @aad(%struct.common_audit_data* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @aa_dfa_next(i32 %29, i32 %36, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %43 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @aa_label_match(%struct.aa_profile* %42, %struct.aa_label* %43, i32 %44, i32 0, i32 %45, %struct.aa_perms* %10)
  %47 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %48 = call i32 @aa_apply_modes_to_perms(%struct.aa_profile* %47, %struct.aa_perms* %10)
  %49 = load %struct.aa_profile*, %struct.aa_profile** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.common_audit_data*, %struct.common_audit_data** %9, align 8
  %52 = load i32, i32* @audit_signal_cb, align 4
  %53 = call i32 @aa_check_perms(%struct.aa_profile* %49, %struct.aa_perms* %10, i32 %50, %struct.common_audit_data* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %21, %20
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #1

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i64) #1

declare dso_local %struct.TYPE_4__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @aa_dfa_next(i32, i32, i32) #1

declare dso_local i32 @aa_label_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*) #1

declare dso_local i32 @aa_apply_modes_to_perms(%struct.aa_profile*, %struct.aa_perms*) #1

declare dso_local i32 @aa_check_perms(%struct.aa_profile*, %struct.aa_perms*, i32, %struct.common_audit_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
