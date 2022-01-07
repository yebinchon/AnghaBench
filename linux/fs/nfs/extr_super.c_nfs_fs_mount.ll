; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_fs_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_fs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.nfs_mount_info = type { i32*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nfs_subversion = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.dentry* (i32, i8*, %struct.nfs_mount_info*, %struct.nfs_subversion*)* }

@nfs_set_sb_security = common dso_local global i32 0, align 4
@nfs_fill_super = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFS_TEXT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_fs_mount(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.file_system_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfs_mount_info, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.nfs_subversion*, align 8
  %12 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %15 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 2
  %16 = load i32, i32* @nfs_set_sb_security, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 3
  %18 = load i32, i32* @nfs_fill_super, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.dentry* @ERR_PTR(i32 %20)
  store %struct.dentry* %21, %struct.dentry** %10, align 8
  %22 = call %struct.TYPE_7__* (...) @nfs_alloc_parsed_mount_data()
  %23 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %23, align 8
  %24 = call i32* (...) @nfs_alloc_fhandle()
  %25 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp eq %struct.TYPE_7__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %4
  br label %82

34:                                               ; preds = %29
  %35 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @nfs_validate_mount_data(%struct.file_system_type* %35, i8* %36, %struct.TYPE_7__* %38, i32* %40, i8* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @NFS_TEXT_DATA, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @nfs_validate_text_mount_data(i8* %47, %struct.TYPE_7__* %49, i8* %50)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %46, %34
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.dentry* @ERR_PTR(i32 %56)
  store %struct.dentry* %57, %struct.dentry** %10, align 8
  br label %82

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.nfs_subversion* @get_nfs_version(i32 %62)
  store %struct.nfs_subversion* %63, %struct.nfs_subversion** %11, align 8
  %64 = load %struct.nfs_subversion*, %struct.nfs_subversion** %11, align 8
  %65 = call i64 @IS_ERR(%struct.nfs_subversion* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load %struct.nfs_subversion*, %struct.nfs_subversion** %11, align 8
  %69 = call %struct.dentry* @ERR_CAST(%struct.nfs_subversion* %68)
  store %struct.dentry* %69, %struct.dentry** %10, align 8
  br label %82

70:                                               ; preds = %58
  %71 = load %struct.nfs_subversion*, %struct.nfs_subversion** %11, align 8
  %72 = getelementptr inbounds %struct.nfs_subversion, %struct.nfs_subversion* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.dentry* (i32, i8*, %struct.nfs_mount_info*, %struct.nfs_subversion*)*, %struct.dentry* (i32, i8*, %struct.nfs_mount_info*, %struct.nfs_subversion*)** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.nfs_subversion*, %struct.nfs_subversion** %11, align 8
  %79 = call %struct.dentry* %75(i32 %76, i8* %77, %struct.nfs_mount_info* %9, %struct.nfs_subversion* %78)
  store %struct.dentry* %79, %struct.dentry** %10, align 8
  %80 = load %struct.nfs_subversion*, %struct.nfs_subversion** %11, align 8
  %81 = call i32 @put_nfs_version(%struct.nfs_subversion* %80)
  br label %82

82:                                               ; preds = %70, %67, %55, %33
  %83 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @nfs_free_parsed_mount_data(%struct.TYPE_7__* %84)
  %86 = getelementptr inbounds %struct.nfs_mount_info, %struct.nfs_mount_info* %9, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @nfs_free_fhandle(i32* %87)
  %89 = load %struct.dentry*, %struct.dentry** %10, align 8
  ret %struct.dentry* %89
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_7__* @nfs_alloc_parsed_mount_data(...) #1

declare dso_local i32* @nfs_alloc_fhandle(...) #1

declare dso_local i32 @nfs_validate_mount_data(%struct.file_system_type*, i8*, %struct.TYPE_7__*, i32*, i8*) #1

declare dso_local i32 @nfs_validate_text_mount_data(i8*, %struct.TYPE_7__*, i8*) #1

declare dso_local %struct.nfs_subversion* @get_nfs_version(i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs_subversion*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.nfs_subversion*) #1

declare dso_local i32 @put_nfs_version(%struct.nfs_subversion*) #1

declare dso_local i32 @nfs_free_parsed_mount_data(%struct.TYPE_7__*) #1

declare dso_local i32 @nfs_free_fhandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
