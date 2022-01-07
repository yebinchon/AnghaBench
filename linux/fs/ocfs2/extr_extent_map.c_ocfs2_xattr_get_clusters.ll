; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_xattr_get_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_xattr_get_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i64 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [60 x i8] c"Inode %lu has non zero tree depth in xattr leaf block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Inode %lu has bad extent record (%u, %u, 0) in xattr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_get_clusters(%struct.inode* %0, i64 %1, i64* %2, i64* %3, %struct.ocfs2_extent_list* %4, i32* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ocfs2_extent_list*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_extent_block*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store %struct.ocfs2_extent_list* %4, %struct.ocfs2_extent_list** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %6
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @INODE_CACHE(%struct.inode* %24)
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @ocfs2_find_leaf(i32 %25, %struct.ocfs2_extent_list* %26, i64 %27, %struct.buffer_head** %15)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %146

34:                                               ; preds = %23
  %35 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %38, %struct.ocfs2_extent_block** %16, align 8
  %39 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %16, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %39, i32 0, i32 0
  store %struct.ocfs2_extent_list* %40, %struct.ocfs2_extent_list** %11, align 8
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54)
  %56 = load i32, i32* @EROFS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %13, align 4
  br label %146

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %6
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list* %60, i64 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load i32, i32* @EROFS, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %146

70:                                               ; preds = %59
  %71 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %72 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %71, i32 0, i32 0
  %73 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %73, i64 %75
  store %struct.ocfs2_extent_rec* %76, %struct.ocfs2_extent_rec** %17, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %79 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le32_to_cpu(i32 %80)
  %82 = icmp slt i64 %77, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @BUG_ON(i32 %83)
  %85 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %86 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %70
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.inode*, %struct.inode** %7, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %97 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @le32_to_cpu(i32 %98)
  %100 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %101 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %102 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %100, %struct.ocfs2_extent_rec* %101)
  %103 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %92, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %95, i64 %99, i64 %102)
  %104 = load i32, i32* @EROFS, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  br label %146

106:                                              ; preds = %70
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le32_to_cpu(i32 %110)
  %112 = sub nsw i64 %107, %111
  store i64 %112, i64* %18, align 8
  %113 = load %struct.inode*, %struct.inode** %7, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %117 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le64_to_cpu(i32 %118)
  %120 = call i64 @ocfs2_blocks_to_clusters(i32 %115, i32 %119)
  %121 = load i64*, i64** %9, align 8
  store i64 %120, i64* %121, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %18, align 8
  %125 = add nsw i64 %123, %124
  %126 = load i64*, i64** %9, align 8
  store i64 %125, i64* %126, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = icmp ne i64* %127, null
  br i1 %128, label %129, label %136

129:                                              ; preds = %106
  %130 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %11, align 8
  %131 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %132 = call i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %130, %struct.ocfs2_extent_rec* %131)
  %133 = load i64, i64* %18, align 8
  %134 = sub nsw i64 %132, %133
  %135 = load i64*, i64** %10, align 8
  store i64 %134, i64* %135, align 8
  br label %136

136:                                              ; preds = %129, %106
  %137 = load i32*, i32** %12, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %141 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %12, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %139, %136
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %89, %65, %45, %31
  %147 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  %149 = load i32, i32* %13, align 4
  ret i32 %149
}

declare dso_local i32 @ocfs2_find_leaf(i32, %struct.ocfs2_extent_list*, i64, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @ocfs2_search_extent_list(%struct.ocfs2_extent_list*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i64 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
