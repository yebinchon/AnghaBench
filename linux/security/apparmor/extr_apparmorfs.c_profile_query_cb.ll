; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_profile_query_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_profile_query_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, %struct.aa_dfa* }
%struct.aa_dfa = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.aa_dfa* }
%struct.aa_perms = type { i32 }
%struct.path_cond = type { i32 }

@AA_CLASS_FILE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aa_profile*, %struct.aa_perms*, i8*, i64)* @profile_query_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @profile_query_cb(%struct.aa_profile* %0, %struct.aa_perms* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_perms*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.aa_perms, align 4
  %10 = alloca %struct.aa_dfa*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.path_cond, align 4
  %13 = alloca %struct.aa_perms, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %5, align 8
  store %struct.aa_perms* %1, %struct.aa_perms** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = bitcast %struct.aa_perms* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %15 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %16 = call i64 @profile_unconfined(%struct.aa_profile* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %99

19:                                               ; preds = %4
  %20 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %21 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.aa_dfa*, %struct.aa_dfa** %22, align 8
  %24 = icmp ne %struct.aa_dfa* %23, null
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @AA_CLASS_FILE, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %25
  %33 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %34 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.aa_dfa*, %struct.aa_dfa** %35, align 8
  store %struct.aa_dfa* %36, %struct.aa_dfa** %10, align 8
  %37 = load %struct.aa_dfa*, %struct.aa_dfa** %10, align 8
  %38 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %39 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 1
  %46 = call i32 @aa_dfa_match_len(%struct.aa_dfa* %37, i32 %41, i8* %43, i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %32
  %50 = bitcast %struct.path_cond* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %50, i8 0, i64 4, i1 false)
  %51 = load %struct.aa_dfa*, %struct.aa_dfa** %10, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @aa_compute_fperms(%struct.aa_dfa* %51, i32 %52, %struct.path_cond* %12)
  %54 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %13, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.aa_perms* %9 to i8*
  %56 = bitcast %struct.aa_perms* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %49, %32
  br label %94

58:                                               ; preds = %25, %19
  %59 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %60 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load %struct.aa_dfa*, %struct.aa_dfa** %61, align 8
  %63 = icmp ne %struct.aa_dfa* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %58
  %65 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %65, i8 signext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %99

71:                                               ; preds = %64
  %72 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %73 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.aa_dfa*, %struct.aa_dfa** %74, align 8
  store %struct.aa_dfa* %75, %struct.aa_dfa** %10, align 8
  %76 = load %struct.aa_dfa*, %struct.aa_dfa** %10, align 8
  %77 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %78 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @aa_dfa_match_len(%struct.aa_dfa* %76, i32 %82, i8* %83, i64 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %71
  %89 = load %struct.aa_dfa*, %struct.aa_dfa** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @aa_compute_perms(%struct.aa_dfa* %89, i32 %90, %struct.aa_perms* %9)
  br label %92

92:                                               ; preds = %88, %71
  br label %93

93:                                               ; preds = %92, %58
  br label %94

94:                                               ; preds = %93, %57
  %95 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %96 = call i32 @aa_apply_modes_to_perms(%struct.aa_profile* %95, %struct.aa_perms* %9)
  %97 = load %struct.aa_perms*, %struct.aa_perms** %6, align 8
  %98 = call i32 @aa_perms_accum_raw(%struct.aa_perms* %97, %struct.aa_perms* %9)
  br label %99

99:                                               ; preds = %94, %70, %18
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #2

declare dso_local i32 @aa_dfa_match_len(%struct.aa_dfa*, i32, i8*, i64) #2

declare dso_local i32 @aa_compute_fperms(%struct.aa_dfa*, i32, %struct.path_cond*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i8 signext) #2

declare dso_local i32 @aa_compute_perms(%struct.aa_dfa*, i32, %struct.aa_perms*) #2

declare dso_local i32 @aa_apply_modes_to_perms(%struct.aa_profile*, %struct.aa_perms*) #2

declare dso_local i32 @aa_perms_accum_raw(%struct.aa_perms*, %struct.aa_perms*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
