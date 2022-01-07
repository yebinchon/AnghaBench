; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_profile_path_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_profile_path_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32, i32 }
%struct.path = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_perms = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.aa_profile*, %struct.path*, i8*, i32, %struct.path_cond*, i32, %struct.aa_perms*)* @profile_path_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_path_perm(i8* %0, %struct.aa_profile* %1, %struct.path* %2, i8* %3, i32 %4, %struct.path_cond* %5, i32 %6, %struct.aa_perms* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.aa_profile*, align 8
  %12 = alloca %struct.path*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.path_cond*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.aa_perms*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %11, align 8
  store %struct.path* %2, %struct.path** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.path_cond* %5, %struct.path_cond** %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.aa_perms* %7, %struct.aa_perms** %17, align 8
  %20 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %21 = call i64 @profile_unconfined(%struct.aa_profile* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %51

24:                                               ; preds = %8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %27 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %26, i32 0, i32 1
  %28 = load %struct.path*, %struct.path** %12, align 8
  %29 = load i32, i32* %16, align 4
  %30 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %31 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = load i8*, i8** %13, align 8
  %35 = load %struct.path_cond*, %struct.path_cond** %15, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @path_name(i8* %25, i32* %27, %struct.path* %28, i32 %33, i8* %34, i8** %18, %struct.path_cond* %35, i32 %36)
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %19, align 4
  store i32 %41, i32* %9, align 4
  br label %51

42:                                               ; preds = %24
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.path_cond*, %struct.path_cond** %15, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.aa_perms*, %struct.aa_perms** %17, align 8
  %50 = call i32 @__aa_path_perm(i8* %43, %struct.aa_profile* %44, i8* %45, i32 %46, %struct.path_cond* %47, i32 %48, %struct.aa_perms* %49)
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %42, %40, %23
  %52 = load i32, i32* %9, align 4
  ret i32 %52
}

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #1

declare dso_local i32 @path_name(i8*, i32*, %struct.path*, i32, i8*, i8**, %struct.path_cond*, i32) #1

declare dso_local i32 @__aa_path_perm(i8*, %struct.aa_profile*, i8*, i32, %struct.path_cond*, i32, %struct.aa_perms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
