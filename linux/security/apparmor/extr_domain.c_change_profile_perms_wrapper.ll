; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_change_profile_perms_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_change_profile_perms_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_perms = type { i32 }

@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.aa_profile*, %struct.aa_label*, i32, i32, %struct.aa_perms*)* @change_profile_perms_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_profile_perms_wrapper(i8* %0, i8* %1, %struct.aa_profile* %2, %struct.aa_label* %3, i32 %4, i32 %5, %struct.aa_perms* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.aa_profile*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.aa_perms*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.aa_profile* %2, %struct.aa_profile** %10, align 8
  store %struct.aa_label* %3, %struct.aa_label** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.aa_perms* %6, %struct.aa_perms** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %7
  %20 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %21 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %25 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aa_perms*, %struct.aa_perms** %14, align 8
  %29 = call i32 @change_profile_perms(%struct.aa_profile* %20, %struct.aa_label* %21, i32 %22, i32 %23, i32 %27, %struct.aa_perms* %28)
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %19, %7
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %35 = load %struct.aa_perms*, %struct.aa_perms** %14, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %40 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @aa_audit_file(%struct.aa_profile* %34, %struct.aa_perms* %35, i8* %36, i32 %37, i8* %38, i32* null, %struct.aa_label* %39, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %33, %30
  %45 = load i32, i32* %16, align 4
  ret i32 %45
}

declare dso_local i32 @change_profile_perms(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, %struct.aa_perms*, i8*, i32, i8*, i32*, %struct.aa_label*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
