; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_value_outside.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_value_outside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ocfs2_xattr_value_root = type { i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_value_root*, i8*, i64)* @ocfs2_xattr_get_value_outside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_get_value_outside(%struct.inode* %0, %struct.ocfs2_xattr_value_root* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_value_root*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.buffer_head*, align 8
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_value_root* %1, %struct.ocfs2_xattr_value_root** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %21 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %6, align 8
  %22 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %21, i32 0, i32 1
  store %struct.ocfs2_extent_list* %22, %struct.ocfs2_extent_list** %20, align 8
  %23 = load %struct.ocfs2_xattr_value_root*, %struct.ocfs2_xattr_value_root** %6, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_value_root, %struct.ocfs2_xattr_value_root* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call i8* @ocfs2_clusters_to_blocks(%struct.TYPE_2__* %29, i64 1)
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %18, align 8
  store i64 0, i64* %9, align 8
  br label %37

37:                                               ; preds = %107, %4
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %13, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %111

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %45 = call i32 @ocfs2_xattr_get_clusters(%struct.inode* %42, i64 %43, i64* %10, i64* %11, %struct.ocfs2_extent_list* %44, i32* null)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %112

51:                                               ; preds = %41
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i8* @ocfs2_clusters_to_blocks(%struct.TYPE_2__* %54, i64 %55)
  store i8* %56, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %57

57:                                               ; preds = %102, %51
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = mul nsw i64 %60, %61
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %57
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call i32 @INODE_CACHE(%struct.inode* %65)
  %67 = load i8*, i8** %14, align 8
  %68 = call i32 @ocfs2_read_block(i32 %66, i8* %67, %struct.buffer_head** %19, i32* null)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %112

74:                                               ; preds = %64
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %18, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i64, i64* %18, align 8
  br label %82

80:                                               ; preds = %74
  %81 = load i64, i64* %8, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i64 [ %79, %78 ], [ %81, %80 ]
  store i64 %83, i64* %17, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %17, align 8
  %89 = call i32 @memcpy(i8* %84, i32 %87, i64 %88)
  %90 = load i64, i64* %17, align 8
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %17, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = getelementptr i8, i8* %94, i64 %93
  store i8* %95, i8** %7, align 8
  %96 = load %struct.buffer_head*, %struct.buffer_head** %19, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  store %struct.buffer_head* null, %struct.buffer_head** %19, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %82
  br label %107

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %14, align 8
  br label %57

107:                                              ; preds = %100, %57
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %9, align 8
  br label %37

111:                                              ; preds = %37
  br label %112

112:                                              ; preds = %111, %71, %48
  %113 = load i32, i32* %16, align 4
  ret i32 %113
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i8* @ocfs2_clusters_to_blocks(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode*, i64, i64*, i64*, %struct.ocfs2_extent_list*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_block(i32, i8*, %struct.buffer_head**, i32*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
