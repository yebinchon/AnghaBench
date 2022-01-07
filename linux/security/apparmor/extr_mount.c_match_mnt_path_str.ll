; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_match_mnt_path_str.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_match_mnt_path_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.path = type { i32 }
%struct.aa_perms = type { i32 }

@AA_CLASS_MOUNT = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@mnt_info_table = common dso_local global i8** null, align 8
@OP_MOUNT = common dso_local global i32 0, align 4
@AA_MAY_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.path*, i8*, i8*, i8*, i64, i8*, i32, i8*)* @match_mnt_path_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_mnt_path_str(%struct.aa_profile* %0, %struct.path* %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6, i32 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.aa_profile*, align 8
  %12 = alloca %struct.path*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.aa_perms, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %11, align 8
  store %struct.path* %1, %struct.path** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  %25 = bitcast %struct.aa_perms* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  store i8* null, i8** %21, align 8
  store i8* null, i8** %22, align 8
  %26 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %27 = icmp ne %struct.aa_profile* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @AA_BUG(i32 %29)
  %31 = load %struct.path*, %struct.path** %12, align 8
  %32 = icmp ne %struct.path* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @AA_BUG(i32 %34)
  %36 = load i8*, i8** %13, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @AA_BUG(i32 %39)
  %41 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %42 = load i64, i64* @AA_CLASS_MOUNT, align 8
  %43 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %41, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %109

46:                                               ; preds = %9
  %47 = load %struct.path*, %struct.path** %12, align 8
  %48 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %49 = load %struct.path*, %struct.path** %12, align 8
  %50 = call i32 @path_flags(%struct.aa_profile* %48, %struct.path* %49)
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %53 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @aa_path_name(%struct.path* %47, i32 %50, i8* %51, i8** %21, i8** %22, i32 %54)
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %24, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %97

59:                                               ; preds = %46
  %60 = load i8*, i8** %14, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %24, align 4
  store i8* null, i8** %14, align 8
  %66 = load i8*, i8** %19, align 8
  store i8* %66, i8** %22, align 8
  br label %97

67:                                               ; preds = %59
  %68 = load i32, i32* @EACCES, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %24, align 4
  %70 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %71 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %75 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @AA_CLASS_MOUNT, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %21, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @do_match_mnt(i32 %73, i32 %80, i8* %81, i8* %82, i8* %83, i64 %84, i8* %85, i32 %86, %struct.aa_perms* %20)
  store i32 %87, i32* %23, align 4
  %88 = load i32, i32* %23, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %67
  %91 = load i8**, i8*** @mnt_info_table, align 8
  %92 = load i32, i32* %23, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %22, align 8
  br label %97

96:                                               ; preds = %67
  store i32 0, i32* %24, align 4
  br label %97

97:                                               ; preds = %96, %90, %63, %58
  %98 = load %struct.aa_profile*, %struct.aa_profile** %11, align 8
  %99 = load i32, i32* @OP_MOUNT, align 4
  %100 = load i8*, i8** %21, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load i8*, i8** %15, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load i32, i32* @AA_MAY_MOUNT, align 4
  %106 = load i8*, i8** %22, align 8
  %107 = load i32, i32* %24, align 4
  %108 = call i32 @audit_mount(%struct.aa_profile* %98, i32 %99, i8* %100, i8* %101, i8* %102, i32* null, i64 %103, i8* %104, i32 %105, %struct.aa_perms* %20, i8* %106, i32 %107)
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %97, %45
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i64) #2

declare dso_local i32 @aa_path_name(%struct.path*, i32, i8*, i8**, i8**, i32) #2

declare dso_local i32 @path_flags(%struct.aa_profile*, %struct.path*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @do_match_mnt(i32, i32, i8*, i8*, i8*, i64, i8*, i32, %struct.aa_perms*) #2

declare dso_local i32 @audit_mount(%struct.aa_profile*, i32, i8*, i8*, i8*, i32*, i64, i8*, i32, %struct.aa_perms*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
