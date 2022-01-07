; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_fill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_orangefs_fill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.dentry*, i32*, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.dentry = type { i32 }
%struct.orangefs_fs_mount_response = type { i32, i32, %struct.inode }
%struct.inode = type { i32 }
%struct.orangefs_object_kref = type { i32, %struct.inode }
%struct.TYPE_2__ = type { i32, %struct.inode, i32, %struct.super_block* }

@orangefs_xattr_handlers = common dso_local global i32 0, align 4
@ORANGEFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@orangefs_s_ops = common dso_local global i32 0, align 4
@orangefs_dentry_operations = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@GOSSIP_SUPER_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"get inode %pU, fsid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Allocated root inode [%p] with mode %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@orangefs_export_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.orangefs_fs_mount_response*, i8*, i32)* @orangefs_fill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_fill_sb(%struct.super_block* %0, %struct.orangefs_fs_mount_response* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.orangefs_fs_mount_response*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.orangefs_object_kref, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.orangefs_fs_mount_response* %1, %struct.orangefs_fs_mount_response** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  store %struct.super_block* %14, %struct.super_block** %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.orangefs_fs_mount_response*, %struct.orangefs_fs_mount_response** %7, align 8
  %22 = getelementptr inbounds %struct.orangefs_fs_mount_response, %struct.orangefs_fs_mount_response* %21, i32 0, i32 2
  %23 = bitcast %struct.inode* %20 to i8*
  %24 = bitcast %struct.inode* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load %struct.orangefs_fs_mount_response*, %struct.orangefs_fs_mount_response** %7, align 8
  %26 = getelementptr inbounds %struct.orangefs_fs_mount_response, %struct.orangefs_fs_mount_response* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.orangefs_fs_mount_response*, %struct.orangefs_fs_mount_response** %7, align 8
  %32 = getelementptr inbounds %struct.orangefs_fs_mount_response, %struct.orangefs_fs_mount_response* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = call %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %4
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @parse_mount_options(%struct.super_block* %40, i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %120

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32, i32* @orangefs_xattr_handlers, align 4
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = getelementptr inbounds %struct.super_block, %struct.super_block* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @ORANGEFS_SUPER_MAGIC, align 4
  %54 = load %struct.super_block*, %struct.super_block** %6, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 6
  store i32* @orangefs_s_ops, i32** %57, align 8
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 5
  store i32* @orangefs_dentry_operations, i32** %59, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load %struct.super_block*, %struct.super_block** %6, align 8
  %62 = getelementptr inbounds %struct.super_block, %struct.super_block* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @PAGE_SHIFT, align 4
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = getelementptr inbounds %struct.super_block, %struct.super_block* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %67 = load %struct.super_block*, %struct.super_block** %6, align 8
  %68 = getelementptr inbounds %struct.super_block, %struct.super_block* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.super_block*, %struct.super_block** %6, align 8
  %70 = call i32 @super_setup_bdi(%struct.super_block* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %49
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  br label %120

75:                                               ; preds = %49
  %76 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %13, i32 0, i32 1
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = call %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = bitcast %struct.inode* %76 to i8*
  %81 = bitcast %struct.inode* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.super_block*, %struct.super_block** %6, align 8
  %83 = call %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %13, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %88 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %13, i32 0, i32 1
  %89 = getelementptr inbounds %struct.orangefs_object_kref, %struct.orangefs_object_kref* %13, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @gossip_debug(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.inode* %88, i32 %90)
  %92 = load %struct.super_block*, %struct.super_block** %6, align 8
  %93 = call %struct.inode* @orangefs_iget(%struct.super_block* %92, %struct.orangefs_object_kref* %13)
  store %struct.inode* %93, %struct.inode** %11, align 8
  %94 = load %struct.inode*, %struct.inode** %11, align 8
  %95 = call i64 @IS_ERR(%struct.inode* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %75
  %98 = load %struct.inode*, %struct.inode** %11, align 8
  %99 = call i32 @PTR_ERR(%struct.inode* %98)
  store i32 %99, i32* %5, align 4
  br label %120

100:                                              ; preds = %75
  %101 = load i32, i32* @GOSSIP_SUPER_DEBUG, align 4
  %102 = load %struct.inode*, %struct.inode** %11, align 8
  %103 = load %struct.inode*, %struct.inode** %11, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @gossip_debug(i32 %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %102, i32 %105)
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = call %struct.dentry* @d_make_root(%struct.inode* %107)
  store %struct.dentry* %108, %struct.dentry** %12, align 8
  %109 = load %struct.dentry*, %struct.dentry** %12, align 8
  %110 = icmp ne %struct.dentry* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %100
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %120

114:                                              ; preds = %100
  %115 = load %struct.super_block*, %struct.super_block** %6, align 8
  %116 = getelementptr inbounds %struct.super_block, %struct.super_block* %115, i32 0, i32 1
  store i32* @orangefs_export_ops, i32** %116, align 8
  %117 = load %struct.dentry*, %struct.dentry** %12, align 8
  %118 = load %struct.super_block*, %struct.super_block** %6, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 0
  store %struct.dentry* %117, %struct.dentry** %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %114, %111, %97, %73, %46
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_2__* @ORANGEFS_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_mount_options(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @super_setup_bdi(%struct.super_block*) #1

declare dso_local i32 @gossip_debug(i32, i8*, %struct.inode*, i32) #1

declare dso_local %struct.inode* @orangefs_iget(%struct.super_block*, %struct.orangefs_object_kref*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
