; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_change_profile_perms.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_change_profile_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_perms = type { i32, i64, i64, i64 }

@AA_MAY_CHANGE_PROFILE = common dso_local global i32 0, align 4
@AA_MAY_ONEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*)* @change_profile_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_profile_perms(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, i32 %3, i32 %4, %struct.aa_perms* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aa_perms*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %8, align 8
  store %struct.aa_label* %1, %struct.aa_label** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.aa_perms* %5, %struct.aa_perms** %13, align 8
  %14 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %15 = call i64 @profile_unconfined(%struct.aa_profile* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load i32, i32* @AA_MAY_CHANGE_PROFILE, align 4
  %19 = load i32, i32* @AA_MAY_ONEXEC, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %22 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %24 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %26 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %28 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %37

29:                                               ; preds = %6
  %30 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %31 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %36 = call i32 @label_match(%struct.aa_profile* %30, %struct.aa_label* %31, i32 %32, i32 %33, i32 1, i32 %34, %struct.aa_perms* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %17
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #1

declare dso_local i32 @label_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, i32, %struct.aa_perms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
