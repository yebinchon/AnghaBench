; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_bprm_committing_creds.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_bprm_committing_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.linux_binprm = type { i32 }
%struct.aa_label = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linux_binprm*)* @apparmor_bprm_committing_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apparmor_bprm_committing_creds(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.aa_label*, align 8
  %4 = alloca %struct.aa_label*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %5 = call %struct.aa_label* (...) @aa_current_raw_label()
  store %struct.aa_label* %5, %struct.aa_label** %3, align 8
  %6 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %7 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.aa_label* @cred_label(i32 %8)
  store %struct.aa_label* %9, %struct.aa_label** %4, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %11 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %14 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %19 = call i64 @unconfined(%struct.aa_label* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %1
  br label %35

22:                                               ; preds = %17
  %23 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %24 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @aa_inherit_files(i32 %25, i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.aa_label*, %struct.aa_label** %3, align 8
  %33 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %34 = call i32 @__aa_transition_rlimits(%struct.aa_label* %32, %struct.aa_label* %33)
  br label %35

35:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.aa_label* @aa_current_raw_label(...) #1

declare dso_local %struct.aa_label* @cred_label(i32) #1

declare dso_local i64 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @aa_inherit_files(i32, i32) #1

declare dso_local i32 @__aa_transition_rlimits(%struct.aa_label*, %struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
