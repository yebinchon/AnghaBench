; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_xdr_filler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_xdr_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.nfs_entry = type { i32 }
%struct.file = type { %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { %struct.cred* }
%struct.cred = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32 (i32, %struct.cred*, i32, %struct.page**, i32, i32)* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@NFS_CAP_READDIRPLUS = common dso_local global i32 0, align 4
@NFS_INO_ADVISE_RDPLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, %struct.TYPE_6__*, %struct.nfs_entry*, %struct.file*, %struct.inode*)* @nfs_readdir_xdr_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_xdr_filler(%struct.page** %0, %struct.TYPE_6__* %1, %struct.nfs_entry* %2, %struct.file* %3, %struct.inode* %4) #0 {
  %6 = alloca %struct.page**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.nfs_entry*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.nfs_open_dir_context*, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.page** %0, %struct.page*** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.nfs_entry* %2, %struct.nfs_entry** %8, align 8
  store %struct.file* %3, %struct.file** %9, align 8
  store %struct.inode* %4, %struct.inode** %10, align 8
  %16 = load %struct.file*, %struct.file** %9, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %17, align 8
  store %struct.nfs_open_dir_context* %18, %struct.nfs_open_dir_context** %11, align 8
  %19 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %11, align 8
  %20 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %19, i32 0, i32 0
  %21 = load %struct.cred*, %struct.cred** %20, align 8
  store %struct.cred* %21, %struct.cred** %12, align 8
  br label %22

22:                                               ; preds = %56, %5
  %23 = load i64, i64* @jiffies, align 8
  store i64 %23, i64* %13, align 8
  %24 = call i64 (...) @nfs_inc_attr_generation_counter()
  store i64 %24, i64* %14, align 8
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = call %struct.TYPE_8__* @NFS_PROTO(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.cred*, i32, %struct.page**, i32, i32)*, i32 (i32, %struct.cred*, i32, %struct.page**, i32, i32)** %27, align 8
  %29 = load %struct.file*, %struct.file** %9, align 8
  %30 = call i32 @file_dentry(%struct.file* %29)
  %31 = load %struct.cred*, %struct.cred** %12, align 8
  %32 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %33 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.page**, %struct.page*** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = call %struct.TYPE_7__* @NFS_SERVER(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %28(i32 %30, %struct.cred* %31, i32 %34, %struct.page** %35, i32 %39, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %22
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @ENOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i32, i32* @NFS_CAP_READDIRPLUS, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = call %struct.TYPE_7__* @NFS_SERVER(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @NFS_INO_ADVISE_RDPLUS, align 4
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call %struct.TYPE_9__* @NFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %64, i32* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %22

71:                                               ; preds = %51, %46
  br label %79

72:                                               ; preds = %22
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %72, %71
  %80 = load i32, i32* %15, align 4
  ret i32 %80
}

declare dso_local i64 @nfs_inc_attr_generation_counter(...) #1

declare dso_local %struct.TYPE_8__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local %struct.TYPE_7__* @NFS_SERVER(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @NFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
