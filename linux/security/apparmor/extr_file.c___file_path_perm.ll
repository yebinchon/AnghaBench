; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c___file_path_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c___file_path_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.file = type { i32 }
%struct.aa_profile = type { i32 }
%struct.aa_perms = type { i32 }
%struct.path_cond = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PATH_DELEGATE_DELETED = common dso_local global i32 0, align 4
@PATH_IS_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.aa_label*, %struct.aa_label*, %struct.file*, i64, i64)* @__file_path_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__file_path_perm(i8* %0, %struct.aa_label* %1, %struct.aa_label* %2, %struct.file* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.aa_profile*, align 8
  %15 = alloca %struct.aa_perms, align 4
  %16 = alloca %struct.path_cond, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.aa_label* %1, %struct.aa_label** %9, align 8
  store %struct.aa_label* %2, %struct.aa_label** %10, align 8
  store %struct.file* %3, %struct.file** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = bitcast %struct.aa_perms* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %16, i32 0, i32 0
  %22 = load %struct.file*, %struct.file** %11, align 8
  %23 = call %struct.TYPE_2__* @file_inode(%struct.file* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %16, i32 0, i32 1
  %27 = load %struct.file*, %struct.file** %11, align 8
  %28 = call %struct.TYPE_2__* @file_inode(%struct.file* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %26, align 4
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %6
  %34 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %35 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %36 = call i64 @aa_label_is_subset(%struct.aa_label* %34, %struct.aa_label* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %113

39:                                               ; preds = %33, %6
  %40 = load i32, i32* @PATH_DELEGATE_DELETED, align 4
  %41 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %16, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @S_ISDIR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @PATH_IS_DIR, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %40, %49
  store i32 %50, i32* %18, align 4
  %51 = load i8*, i8** %17, align 8
  %52 = call i32 @get_buffers(i8* %51)
  %53 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %54 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %55 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %58 = load %struct.file*, %struct.file** %11, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i8*, i8** %17, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* %18, align 4
  %63 = call i32 @profile_path_perm(i8* %56, %struct.aa_profile* %57, i32* %59, i8* %60, i64 %61, %struct.path_cond* %16, i32 %62, %struct.aa_perms* %15)
  %64 = call i32 @fn_for_each_not_in_set(%struct.aa_label* %53, %struct.aa_label* %54, %struct.aa_profile* %55, i32 %63)
  store i32 %64, i32* %19, align 4
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %48
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %100, label %70

70:                                               ; preds = %67
  %71 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %72 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %73 = icmp eq %struct.aa_label* %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %76 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %79 = load %struct.file*, %struct.file** %11, align 8
  %80 = getelementptr inbounds %struct.file, %struct.file* %79, i32 0, i32 0
  %81 = load i8*, i8** %17, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @profile_path_perm(i8* %77, %struct.aa_profile* %78, i32* %80, i8* %81, i64 %82, %struct.path_cond* %16, i32 %83, %struct.aa_perms* %15)
  %85 = call i32 @fn_for_each(%struct.aa_label* %75, %struct.aa_profile* %76, i32 %84)
  store i32 %85, i32* %19, align 4
  br label %99

86:                                               ; preds = %70
  %87 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %88 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %89 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %92 = load %struct.file*, %struct.file** %11, align 8
  %93 = getelementptr inbounds %struct.file, %struct.file* %92, i32 0, i32 0
  %94 = load i8*, i8** %17, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @profile_path_perm(i8* %90, %struct.aa_profile* %91, i32* %93, i8* %94, i64 %95, %struct.path_cond* %16, i32 %96, %struct.aa_perms* %15)
  %98 = call i32 @fn_for_each_not_in_set(%struct.aa_label* %87, %struct.aa_label* %88, %struct.aa_profile* %89, i32 %97)
  store i32 %98, i32* %19, align 4
  br label %99

99:                                               ; preds = %86, %74
  br label %100

100:                                              ; preds = %99, %67, %48
  %101 = load i32, i32* %19, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = load %struct.file*, %struct.file** %11, align 8
  %105 = call i32 @file_ctx(%struct.file* %104)
  %106 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @update_file_ctx(i32 %105, %struct.aa_label* %106, i64 %107)
  br label %109

109:                                              ; preds = %103, %100
  %110 = load i8*, i8** %17, align 8
  %111 = call i32 @put_buffers(i8* %110)
  %112 = load i32, i32* %19, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %109, %38
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @file_inode(%struct.file*) #2

declare dso_local i64 @aa_label_is_subset(%struct.aa_label*, %struct.aa_label*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @get_buffers(i8*) #2

declare dso_local i32 @fn_for_each_not_in_set(%struct.aa_label*, %struct.aa_label*, %struct.aa_profile*, i32) #2

declare dso_local i32 @profile_path_perm(i8*, %struct.aa_profile*, i32*, i8*, i64, %struct.path_cond*, i32, %struct.aa_perms*) #2

declare dso_local i32 @fn_for_each(%struct.aa_label*, %struct.aa_profile*, i32) #2

declare dso_local i32 @update_file_ctx(i32, %struct.aa_label*, i64) #2

declare dso_local i32 @file_ctx(%struct.file*) #2

declare dso_local i32 @put_buffers(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
