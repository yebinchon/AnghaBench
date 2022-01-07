; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_path_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_path_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_perms = type { i32 }
%struct.aa_profile = type { i32 }

@PATH_DELEGATE_DELETED = common dso_local global i32 0, align 4
@PATH_IS_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_path_perm(i8* %0, %struct.aa_label* %1, %struct.path* %2, i32 %3, i32 %4, %struct.path_cond* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca %struct.path*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.path_cond*, align 8
  %13 = alloca %struct.aa_perms, align 4
  %14 = alloca %struct.aa_profile*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.aa_label* %1, %struct.aa_label** %8, align 8
  store %struct.path* %2, %struct.path** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.path_cond* %5, %struct.path_cond** %12, align 8
  %17 = bitcast %struct.aa_perms* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 4, i1 false)
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* @PATH_DELEGATE_DELETED, align 4
  %19 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %20 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @S_ISDIR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @PATH_IS_DIR, align 4
  br label %27

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = or i32 %18, %28
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @get_buffers(i8* %32)
  %34 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %35 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.aa_profile*, %struct.aa_profile** %14, align 8
  %38 = load %struct.path*, %struct.path** %9, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.path_cond*, %struct.path_cond** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @profile_path_perm(i8* %36, %struct.aa_profile* %37, %struct.path* %38, i8* %39, i32 %40, %struct.path_cond* %41, i32 %42, %struct.aa_perms* %13)
  %44 = call i32 @fn_for_each_confined(%struct.aa_label* %34, %struct.aa_profile* %35, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i8*, i8** %15, align 8
  %46 = call i32 @put_buffers(i8* %45)
  %47 = load i32, i32* %16, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @get_buffers(i8*) #2

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #2

declare dso_local i32 @profile_path_perm(i8*, %struct.aa_profile*, %struct.path*, i8*, i32, %struct.path_cond*, i32, %struct.aa_perms*) #2

declare dso_local i32 @put_buffers(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
