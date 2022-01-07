; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_build_pivotroot.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_build_pivotroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.path = type { i32 }
%struct.aa_perms = type { i32 }

@AA_CLASS_MOUNT = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@AA_MAY_PIVOTROOT = common dso_local global i32 0, align 4
@OP_PIVOTROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_label* (%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*)* @build_pivotroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_label* @build_pivotroot(%struct.aa_profile* %0, %struct.path* %1, i8* %2, %struct.path* %3, i8* %4) #0 {
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.path*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.aa_perms, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.aa_perms, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store %struct.path* %1, %struct.path** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.path* %3, %struct.path** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %20 = bitcast %struct.aa_perms* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %22 = icmp ne %struct.aa_profile* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @AA_BUG(i32 %24)
  %26 = load %struct.path*, %struct.path** %8, align 8
  %27 = icmp ne %struct.path* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @AA_BUG(i32 %29)
  %31 = load %struct.path*, %struct.path** %10, align 8
  %32 = icmp ne %struct.path* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @AA_BUG(i32 %34)
  %36 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %37 = call i64 @profile_unconfined(%struct.aa_profile* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %5
  %40 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %41 = load i64, i64* @AA_CLASS_MOUNT, align 8
  %42 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39, %5
  %45 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %46 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %45, i32 0, i32 0
  %47 = call %struct.aa_label* @aa_get_newest_label(i32* %46)
  store %struct.aa_label* %47, %struct.aa_label** %6, align 8
  br label %138

48:                                               ; preds = %39
  %49 = load %struct.path*, %struct.path** %10, align 8
  %50 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %51 = load %struct.path*, %struct.path** %10, align 8
  %52 = call i32 @path_flags(%struct.aa_profile* %50, %struct.path* %51)
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %55 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @aa_path_name(%struct.path* %49, i32 %52, i8* %53, i8** %12, i8** %14, i32 %56)
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %119

61:                                               ; preds = %48
  %62 = load %struct.path*, %struct.path** %8, align 8
  %63 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %64 = load %struct.path*, %struct.path** %8, align 8
  %65 = call i32 @path_flags(%struct.aa_profile* %63, %struct.path* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %68 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @aa_path_name(%struct.path* %62, i32 %65, i8* %66, i8** %13, i8** %14, i32 %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %119

74:                                               ; preds = %61
  %75 = load i32, i32* @EACCES, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %18, align 4
  %77 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %78 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %82 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @AA_CLASS_MOUNT, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @aa_dfa_match(i32 %80, i32 %87, i8* %88)
  store i32 %89, i32* %17, align 4
  %90 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %91 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @aa_dfa_null_transition(i32 %93, i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %97 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @aa_dfa_match(i32 %99, i32 %100, i8* %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %104 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @compute_mnt_perms(i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %19, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = bitcast %struct.aa_perms* %16 to i8*
  %111 = bitcast %struct.aa_perms* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = load i32, i32* @AA_MAY_PIVOTROOT, align 4
  %113 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %16, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %112, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %74
  store i32 0, i32* %18, align 4
  br label %118

118:                                              ; preds = %117, %74
  br label %119

119:                                              ; preds = %118, %73, %60
  %120 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %121 = load i32, i32* @OP_PIVOTROOT, align 4
  %122 = load i8*, i8** %13, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = load i32, i32* @AA_MAY_PIVOTROOT, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = load i32, i32* %18, align 4
  %128 = call i32 @audit_mount(%struct.aa_profile* %120, i32 %121, i8* %122, i8* %123, i32* null, i8* %124, i32 0, i32* null, i32 %125, %struct.aa_perms* %16, i8* %126, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* %18, align 4
  %133 = call %struct.aa_label* @ERR_PTR(i32 %132)
  store %struct.aa_label* %133, %struct.aa_label** %6, align 8
  br label %138

134:                                              ; preds = %119
  %135 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %136 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %135, i32 0, i32 0
  %137 = call %struct.aa_label* @aa_get_newest_label(i32* %136)
  store %struct.aa_label* %137, %struct.aa_label** %6, align 8
  br label %138

138:                                              ; preds = %134, %131, %44
  %139 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  ret %struct.aa_label* %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #2

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i64) #2

declare dso_local %struct.aa_label* @aa_get_newest_label(i32*) #2

declare dso_local i32 @aa_path_name(%struct.path*, i32, i8*, i8**, i8**, i32) #2

declare dso_local i32 @path_flags(%struct.aa_profile*, %struct.path*) #2

declare dso_local i32 @aa_dfa_match(i32, i32, i8*) #2

declare dso_local i32 @aa_dfa_null_transition(i32, i32) #2

declare dso_local i32 @compute_mnt_perms(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @audit_mount(%struct.aa_profile*, i32, i8*, i8*, i32*, i8*, i32, i32*, i32, %struct.aa_perms*, i8*, i32) #2

declare dso_local %struct.aa_label* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
