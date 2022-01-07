; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_match_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_match_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.path = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@AA_CLASS_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*, i8*, i64, i8*, i32)* @match_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_mnt(%struct.aa_profile* %0, %struct.path* %1, i8* %2, %struct.path* %3, i8* %4, i8* %5, i64 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.aa_profile*, align 8
  %12 = alloca %struct.path*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.path*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %11, align 8
  store %struct.path* %1, %struct.path** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.path* %3, %struct.path** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %22, align 4
  %25 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %26 = icmp ne %struct.aa_profile* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @AA_BUG(i32 %28)
  %30 = load %struct.path*, %struct.path** %14, align 8
  %31 = icmp ne %struct.path* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %9
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %9
  %37 = phi i1 [ false, %9 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @AA_BUG(i32 %38)
  %40 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %41 = load i32, i32* @AA_CLASS_MOUNT, align 4
  %42 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %75

45:                                               ; preds = %36
  %46 = load %struct.path*, %struct.path** %14, align 8
  %47 = icmp ne %struct.path* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.path*, %struct.path** %14, align 8
  %50 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %51 = load %struct.path*, %struct.path** %14, align 8
  %52 = call i32 @path_flags(%struct.aa_profile* %50, %struct.path* %51)
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %55 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @aa_path_name(%struct.path* %49, i32 %52, i8* %53, i8** %20, i8** %21, i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %22, align 4
  %62 = call i8* @ERR_PTR(i32 %61)
  store i8* %62, i8** %20, align 8
  br label %63

63:                                               ; preds = %60, %48
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %66 = load %struct.path*, %struct.path** %12, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i8*, i8** %18, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load i8*, i8** %21, align 8
  %74 = call i32 @match_mnt_path_str(%struct.aa_profile* %65, %struct.path* %66, i8* %67, i8* %68, i8* %69, i64 %70, i8* %71, i32 %72, i8* %73)
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %64, %44
  %76 = load i32, i32* %10, align 4
  ret i32 %76
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i32) #1

declare dso_local i32 @aa_path_name(%struct.path*, i32, i8*, i8**, i8**, i32) #1

declare dso_local i32 @path_flags(%struct.aa_profile*, %struct.path*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @match_mnt_path_str(%struct.aa_profile*, %struct.path*, i8*, i8*, i8*, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
