; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_workdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"overlayfs: workdir and upperdir must reside under the same mount\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"overlayfs: workdir and upperdir must be separate subtrees\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"workdir\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*, %struct.path*)* @ovl_get_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_get_workdir(%struct.super_block* %0, %struct.ovl_fs* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ovl_fs*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.path, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  %9 = bitcast %struct.path* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %11 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ovl_mount_dir(i32 %13, %struct.path* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %75

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.path*, %struct.path** %6, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  br label %75

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.path*, %struct.path** %6, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ovl_workdir_ok(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %75

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dget(i32 %41)
  %43 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %44 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %46 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ovl_inuse_trylock(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %52 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %60

53:                                               ; preds = %39
  %54 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %55 = call i32 @ovl_report_in_use(%struct.ovl_fs* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %75

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %50
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %63 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %66 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %65, i32 0, i32 1
  %67 = call i32 @ovl_setup_trap(%struct.super_block* %61, i32 %64, i32* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %75

71:                                               ; preds = %60
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = load %struct.ovl_fs*, %struct.ovl_fs** %5, align 8
  %74 = call i32 @ovl_make_workdir(%struct.super_block* %72, %struct.ovl_fs* %73, %struct.path* %8)
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %70, %58, %37, %27, %17
  %76 = call i32 @path_put(%struct.path* %8)
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ovl_mount_dir(i32, %struct.path*) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @ovl_workdir_ok(i32, i32) #2

declare dso_local i32 @dget(i32) #2

declare dso_local i64 @ovl_inuse_trylock(i32) #2

declare dso_local i32 @ovl_report_in_use(%struct.ovl_fs*, i8*) #2

declare dso_local i32 @ovl_setup_trap(%struct.super_block*, i32, i32*, i8*) #2

declare dso_local i32 @ovl_make_workdir(%struct.super_block*, %struct.ovl_fs*, %struct.path*) #2

declare dso_local i32 @path_put(%struct.path*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
