; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32, i64 }
%struct.ocfs2_extent_rec = type { i32, i32, i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }

@.str = private unnamed_addr constant [60 x i8] c"Inode %lu has non zero tree depth in xattr tree block %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Inode %lu has bad extent record (%u, %u, 0) in xattr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64*, i32*, i32*, %struct.ocfs2_extent_list*)* @ocfs2_xattr_get_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_xattr_get_rec(%struct.inode* %0, i32 %1, i64* %2, i32* %3, i32* %4, %struct.ocfs2_extent_list* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_extent_block*, align 8
  %17 = alloca %struct.ocfs2_extent_rec*, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.ocfs2_extent_list* %5, %struct.ocfs2_extent_list** %12, align 8
  store i32 0, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.ocfs2_extent_rec* null, %struct.ocfs2_extent_rec** %17, align 8
  store i64 0, i64* %18, align 8
  %19 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %6
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @INODE_CACHE(%struct.inode* %24)
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ocfs2_find_leaf(i32 %25, %struct.ocfs2_extent_list* %26, i32 %27, %struct.buffer_head** %15)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  br label %127

34:                                               ; preds = %23
  %35 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %38, %struct.ocfs2_extent_block** %16, align 8
  %39 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %16, align 8
  %40 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %39, i32 0, i32 0
  store %struct.ocfs2_extent_list* %40, %struct.ocfs2_extent_list** %12, align 8
  %41 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %42 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %54)
  store i32 %55, i32* %13, align 4
  br label %127

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56, %6
  %58 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @le16_to_cpu(i32 %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %85, %57
  %64 = load i32, i32* %14, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %67, i32 0, i32 0
  %69 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %69, i64 %71
  store %struct.ocfs2_extent_rec* %72, %struct.ocfs2_extent_rec** %17, align 8
  %73 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %74 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le32_to_cpu(i32 %75)
  %77 = load i32, i32* %8, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le64_to_cpu(i32 %82)
  store i64 %83, i64* %18, align 8
  br label %88

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  br label %63

88:                                               ; preds = %79, %63
  %89 = load i64, i64* %18, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %88
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %99 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %104 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %105 = call i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list* %103, %struct.ocfs2_extent_rec* %104)
  %106 = call i32 (i32, i8*, i32, i64, ...) @ocfs2_error(i32 %94, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %102, i32 %105)
  store i32 %106, i32* %13, align 4
  br label %127

107:                                              ; preds = %88
  %108 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %109 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le64_to_cpu(i32 %110)
  %112 = load i64*, i64** %9, align 8
  store i64 %111, i64* %112, align 8
  %113 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %114 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %17, align 8
  %122 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = load i32*, i32** %10, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %107
  br label %127

127:                                              ; preds = %126, %91, %45, %31
  %128 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %129 = call i32 @brelse(%struct.buffer_head* %128)
  %130 = load i32, i32* %13, align 4
  ret i32 %130
}

declare dso_local i32 @ocfs2_find_leaf(i32, %struct.ocfs2_extent_list*, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_rec_clusters(%struct.ocfs2_extent_list*, %struct.ocfs2_extent_rec*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
