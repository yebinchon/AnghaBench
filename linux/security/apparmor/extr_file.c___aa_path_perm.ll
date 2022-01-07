; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c___aa_path_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c___aa_path_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.path_cond = type { i32 }
%struct.aa_perms = type { i32 }

@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__aa_path_perm(i8* %0, %struct.aa_profile* %1, i8* %2, i32 %3, %struct.path_cond* %4, i32 %5, %struct.aa_perms* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.aa_profile*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.path_cond*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.aa_perms*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.path_cond* %4, %struct.path_cond** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.aa_perms* %6, %struct.aa_perms** %15, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %18 = call i64 @profile_unconfined(%struct.aa_profile* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %55

21:                                               ; preds = %7
  %22 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %27 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.path_cond*, %struct.path_cond** %13, align 8
  %32 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %33 = call i32 @aa_str_perms(i32 %25, i32 %29, i8* %30, %struct.path_cond* %31, %struct.aa_perms* %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %36 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load i32, i32* @EACCES, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %41, %21
  %45 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %46 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.path_cond*, %struct.path_cond** %13, align 8
  %51 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @aa_audit_file(%struct.aa_profile* %45, %struct.aa_perms* %46, i8* %47, i32 %48, i8* %49, i32* null, i32* null, i32 %52, i32* null, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %44, %20
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #1

declare dso_local i32 @aa_str_perms(i32, i32, i8*, %struct.path_cond*, %struct.aa_perms*) #1

declare dso_local i32 @aa_audit_file(%struct.aa_profile*, %struct.aa_perms*, i8*, i32, i8*, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
