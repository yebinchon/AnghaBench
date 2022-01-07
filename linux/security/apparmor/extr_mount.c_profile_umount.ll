; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_profile_umount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_profile_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.path = type { i32 }
%struct.aa_perms = type { i32 }

@AA_CLASS_MOUNT = common dso_local global i64 0, align 8
@AA_MAY_UMOUNT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@OP_UMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.path*, i8*)* @profile_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profile_umount(%struct.aa_profile* %0, %struct.path* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aa_perms, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aa_perms, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = bitcast %struct.aa_perms* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %15 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %16 = icmp ne %struct.aa_profile* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load %struct.path*, %struct.path** %6, align 8
  %21 = icmp ne %struct.path* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %26 = load i64, i64* @AA_CLASS_MOUNT, align 8
  %27 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %25, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

30:                                               ; preds = %3
  %31 = load %struct.path*, %struct.path** %6, align 8
  %32 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %33 = load %struct.path*, %struct.path** %6, align 8
  %34 = call i32 @path_flags(%struct.aa_profile* %32, %struct.path* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %37 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @aa_path_name(%struct.path* %31, i32 %34, i8* %35, i8** %9, i8** %10, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %76

43:                                               ; preds = %30
  %44 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %45 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %49 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @AA_CLASS_MOUNT, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @aa_dfa_match(i32 %47, i32 %54, i8* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %58 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @compute_mnt_perms(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %13, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = bitcast %struct.aa_perms* %8 to i8*
  %65 = bitcast %struct.aa_perms* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load i32, i32* @AA_MAY_UMOUNT, align 4
  %67 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %43
  %73 = load i32, i32* @EACCES, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %43
  br label %76

76:                                               ; preds = %75, %42
  %77 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %78 = load i32, i32* @OP_UMOUNT, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* @AA_MAY_UMOUNT, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @audit_mount(%struct.aa_profile* %77, i32 %78, i8* %79, i32* null, i32* null, i32* null, i32 0, i32* null, i32 %80, %struct.aa_perms* %8, i8* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %76, %29
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i64) #2

declare dso_local i32 @aa_path_name(%struct.path*, i32, i8*, i8**, i8**, i32) #2

declare dso_local i32 @path_flags(%struct.aa_profile*, %struct.path*) #2

declare dso_local i32 @aa_dfa_match(i32, i32, i8*) #2

declare dso_local i32 @compute_mnt_perms(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @audit_mount(%struct.aa_profile*, i32, i8*, i32*, i32*, i32*, i32, i32*, i32, %struct.aa_perms*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
