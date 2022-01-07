; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_index_block_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_index_block_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_xattr_search = type { i32 }
%struct.ocfs2_xattr_block = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ocfs2_xattr_tree_root }
%struct.ocfs2_xattr_tree_root = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32, i8*, %struct.ocfs2_xattr_search*)* @ocfs2_xattr_index_block_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_index_block_find(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i8* %3, %struct.ocfs2_xattr_search* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ocfs2_xattr_search*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_xattr_block*, align 8
  %14 = alloca %struct.ocfs2_xattr_tree_root*, align 8
  %15 = alloca %struct.ocfs2_extent_list*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.ocfs2_xattr_search* %4, %struct.ocfs2_xattr_search** %11, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_xattr_block*
  store %struct.ocfs2_xattr_block* %23, %struct.ocfs2_xattr_block** %13, align 8
  %24 = load %struct.ocfs2_xattr_block*, %struct.ocfs2_xattr_block** %13, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_block, %struct.ocfs2_xattr_block* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store %struct.ocfs2_xattr_tree_root* %26, %struct.ocfs2_xattr_tree_root** %14, align 8
  %27 = load %struct.ocfs2_xattr_tree_root*, %struct.ocfs2_xattr_tree_root** %14, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xattr_tree_root, %struct.ocfs2_xattr_tree_root* %27, i32 0, i32 0
  store %struct.ocfs2_extent_list* %28, %struct.ocfs2_extent_list** %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %18, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = call i64 @ocfs2_xattr_name_hash(%struct.inode* %29, i8* %30, i32 %32)
  store i64 %33, i64* %19, align 8
  %34 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @le16_to_cpu(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %98

42:                                               ; preds = %5
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i64, i64* %19, align 8
  %50 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @trace_ocfs2_xattr_index_block_find(i32 %46, i8* %47, i32 %48, i64 %49, i64 %52, i32 -1)
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = load i64, i64* %19, align 8
  %56 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %15, align 8
  %57 = call i32 @ocfs2_xattr_get_rec(%struct.inode* %54, i64 %55, i64* %16, i64* %17, i64* %18, %struct.ocfs2_extent_list* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %42
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %96

63:                                               ; preds = %42
  %64 = load i64, i64* %16, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %18, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %19, align 8
  %72 = icmp sgt i64 %70, %71
  br label %73

73:                                               ; preds = %69, %66, %63
  %74 = phi i1 [ true, %66 ], [ true, %63 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %16, align 8
  %85 = load i64, i64* %18, align 8
  %86 = call i32 @trace_ocfs2_xattr_index_block_find_rec(i32 %80, i8* %81, i32 %82, i64 %83, i64 %84, i64 %85)
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search** %11, align 8
  %95 = call i32 @ocfs2_xattr_bucket_find(%struct.inode* %87, i32 %88, i8* %89, i64 %90, i64 %91, i64 %92, i64 %93, %struct.ocfs2_xattr_search* %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %73, %60
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %96, %39
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @ocfs2_xattr_name_hash(%struct.inode*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @trace_ocfs2_xattr_index_block_find(i32, i8*, i32, i64, i64, i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_get_rec(%struct.inode*, i64, i64*, i64*, i64*, %struct.ocfs2_extent_list*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_xattr_index_block_find_rec(i32, i8*, i32, i64, i64, i64) #1

declare dso_local i32 @ocfs2_xattr_bucket_find(%struct.inode*, i32, i8*, i64, i64, i64, i64, %struct.ocfs2_xattr_search*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
