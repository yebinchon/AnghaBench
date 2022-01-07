; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_jbd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_duplicate_clusters_by_jbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_caching_info = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_duplicate_clusters_by_jbd(i32* %0, %struct.inode* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca %struct.ocfs2_caching_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.ocfs2_super*, align 8
  %21 = alloca %struct.buffer_head*, align 8
  %22 = alloca %struct.buffer_head*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %14, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call %struct.ocfs2_caching_info* @INODE_CACHE(%struct.inode* %26)
  store %struct.ocfs2_caching_info* %27, %struct.ocfs2_caching_info** %15, align 8
  %28 = load %struct.super_block*, %struct.super_block** %14, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @ocfs2_clusters_to_blocks(%struct.super_block* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %17, align 4
  %32 = load %struct.super_block*, %struct.super_block** %14, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @ocfs2_clusters_to_blocks(%struct.super_block* %32, i32 %33)
  store i8* %34, i8** %18, align 8
  %35 = load %struct.super_block*, %struct.super_block** %14, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i8* @ocfs2_clusters_to_blocks(%struct.super_block* %35, i32 %36)
  store i8* %37, i8** %19, align 8
  %38 = load %struct.super_block*, %struct.super_block** %14, align 8
  %39 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %38)
  store %struct.ocfs2_super* %39, %struct.ocfs2_super** %20, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @trace_ocfs2_duplicate_clusters_by_page(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %16, align 4
  br label %45

45:                                               ; preds = %103, %6
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %110

49:                                               ; preds = %45
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %19, align 8
  %54 = call %struct.buffer_head* @sb_getblk(i32 %52, i8* %53)
  store %struct.buffer_head* %54, %struct.buffer_head** %22, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %56 = icmp eq %struct.buffer_head* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %110

62:                                               ; preds = %49
  %63 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %65 = call i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info* %63, %struct.buffer_head* %64)
  %66 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = call i32 @ocfs2_read_block(%struct.ocfs2_caching_info* %66, i8* %67, %struct.buffer_head** %21, i32* null)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %110

74:                                               ; preds = %62
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.ocfs2_caching_info*, %struct.ocfs2_caching_info** %15, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %78 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %79 = call i32 @ocfs2_journal_access(i32* %75, %struct.ocfs2_caching_info* %76, %struct.buffer_head* %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %110

85:                                               ; preds = %74
  %86 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %90 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.super_block*, %struct.super_block** %14, align 8
  %93 = getelementptr inbounds %struct.super_block, %struct.super_block* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32 %88, i32 %91, i32 %94)
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %98 = call i32 @ocfs2_journal_dirty(i32* %96, %struct.buffer_head* %97)
  %99 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %102 = call i32 @brelse(%struct.buffer_head* %101)
  store %struct.buffer_head* null, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %21, align 8
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  %106 = load i8*, i8** %18, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %18, align 8
  %108 = load i8*, i8** %19, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %19, align 8
  br label %45

110:                                              ; preds = %82, %71, %57, %45
  %111 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %112 = call i32 @brelse(%struct.buffer_head* %111)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %21, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  %115 = load i32, i32* %13, align 4
  ret i32 %115
}

declare dso_local %struct.ocfs2_caching_info* @INODE_CACHE(%struct.inode*) #1

declare dso_local i8* @ocfs2_clusters_to_blocks(%struct.super_block*, i32) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @trace_ocfs2_duplicate_clusters_by_page(i32, i32, i32, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i8*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(%struct.ocfs2_caching_info*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_block(%struct.ocfs2_caching_info*, i8*, %struct.buffer_head**, i32*) #1

declare dso_local i32 @ocfs2_journal_access(i32*, %struct.ocfs2_caching_info*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
