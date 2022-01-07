; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c_xfs_vn_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_xattr.c_xfs_vn_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.xfs_attr_list_context = type { i32, i8*, i64, i64, i64, i32, %struct.attrlist_cursor_kern*, i32 }
%struct.attrlist_cursor_kern = type { i32 }
%struct.inode = type { i32 }

@xfs_xattr_put_listent = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_vn_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xfs_attr_list_context, align 8
  %9 = alloca %struct.attrlist_cursor_kern, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = bitcast %struct.attrlist_cursor_kern* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = call i32 @memset(%struct.xfs_attr_list_context* %8, i32 0, i32 64)
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call i32 @XFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 7
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 6
  store %struct.attrlist_cursor_kern* %9, %struct.attrlist_cursor_kern** %19, align 8
  %20 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ null, %25 ]
  %28 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 1
  store i8* %27, i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 2
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 3
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @xfs_xattr_put_listent, align 4
  %35 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 5
  store i32 %34, i32* %35, align 8
  %36 = call i32 @xfs_attr_list_int(%struct.xfs_attr_list_context* %8)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %26
  %42 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.xfs_attr_list_context, %struct.xfs_attr_list_context* %8, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %45, %39
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #2

declare dso_local i32 @memset(%struct.xfs_attr_list_context*, i32, i32) #2

declare dso_local i32 @XFS_I(%struct.inode*) #2

declare dso_local i32 @xfs_attr_list_int(%struct.xfs_attr_list_context*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
