; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_indexdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_indexdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i64, i32, %struct.vfsmount* }
%struct.vfsmount = type { i32 }
%struct.ovl_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.path = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"overlayfs: failed to verify upper root origin\0A\00", align 1
@OVL_INDEXDIR_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"indexdir\00", align 1
@OVL_XATTR_ORIGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"overlayfs: failed to verify index dir 'origin' xattr\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"overlayfs: failed to verify index dir 'upper' xattr\0A\00", align 1
@.str.4 = private unnamed_addr constant [92 x i8] c"overlayfs: try deleting index dir or mounting with '-o index=off' to disable inodes index.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*, %struct.ovl_entry*, %struct.path*)* @ovl_get_indexdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_get_indexdir(%struct.super_block* %0, %struct.ovl_fs* %1, %struct.ovl_entry* %2, %struct.path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ovl_fs*, align 8
  %8 = alloca %struct.ovl_entry*, align 8
  %9 = alloca %struct.path*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %7, align 8
  store %struct.ovl_entry* %2, %struct.ovl_entry** %8, align 8
  store %struct.path* %3, %struct.path** %9, align 8
  %12 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %13 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %12, i32 0, i32 2
  %14 = load %struct.vfsmount*, %struct.vfsmount** %13, align 8
  store %struct.vfsmount* %14, %struct.vfsmount** %10, align 8
  %15 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %16 = call i32 @mnt_want_write(%struct.vfsmount* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %111

21:                                               ; preds = %4
  %22 = load %struct.path*, %struct.path** %9, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ovl_entry*, %struct.ovl_entry** %8, align 8
  %26 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ovl_verify_origin(i32 %24, i32 %30, i32 1)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %107

36:                                               ; preds = %21
  %37 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %38 = load i32, i32* @OVL_INDEXDIR_NAME, align 4
  %39 = call i64 @ovl_workdir_create(%struct.ovl_fs* %37, i32 %38, i32 1)
  %40 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %41 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %43 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %96

46:                                               ; preds = %36
  %47 = load %struct.super_block*, %struct.super_block** %6, align 8
  %48 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %49 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %52 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %51, i32 0, i32 1
  %53 = call i32 @ovl_setup_trap(%struct.super_block* %47, i64 %50, i32* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %107

57:                                               ; preds = %46
  %58 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %59 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @ovl_check_origin_xattr(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %65 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @OVL_XATTR_ORIGIN, align 4
  %68 = load %struct.path*, %struct.path** %9, align 8
  %69 = getelementptr inbounds %struct.path, %struct.path* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ovl_verify_set_fh(i64 %66, i32 %67, i32 %70, i32 1, i32 0)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %63
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %79 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.path*, %struct.path** %9, align 8
  %82 = getelementptr inbounds %struct.path, %struct.path* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ovl_verify_upper(i64 %80, i32 %83, i32 1)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %77
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %94 = call i32 @ovl_indexdir_cleanup(%struct.ovl_fs* %93)
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %36
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load %struct.ovl_fs*, %struct.ovl_fs** %7, align 8
  %101 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99, %96
  %105 = call i32 @pr_warn(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %106, %56, %34
  %108 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %109 = call i32 @mnt_drop_write(%struct.vfsmount* %108)
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %107, %19
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @mnt_want_write(%struct.vfsmount*) #1

declare dso_local i32 @ovl_verify_origin(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ovl_workdir_create(%struct.ovl_fs*, i32, i32) #1

declare dso_local i32 @ovl_setup_trap(%struct.super_block*, i64, i32*, i8*) #1

declare dso_local i64 @ovl_check_origin_xattr(i64) #1

declare dso_local i32 @ovl_verify_set_fh(i64, i32, i32, i32, i32) #1

declare dso_local i32 @ovl_verify_upper(i64, i32, i32) #1

declare dso_local i32 @ovl_indexdir_cleanup(%struct.ovl_fs*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mnt_drop_write(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
