; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_alloc_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_bg_alloc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i32, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { %struct.ocfs2_extent_rec*, i32 }
%struct.ocfs2_extent_rec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ocfs2_alloc_context*, %struct.inode*, %struct.buffer_head*)* @ocfs2_bg_alloc_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_bg_alloc_cleanup(i32* %0, %struct.ocfs2_alloc_context* %1, %struct.inode* %2, %struct.buffer_head* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ocfs2_alloc_context*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_group_desc*, align 8
  %12 = alloca %struct.ocfs2_extent_list*, align 8
  %13 = alloca %struct.ocfs2_extent_rec*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %8, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %70

17:                                               ; preds = %4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %21, %struct.ocfs2_group_desc** %11, align 8
  %22 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %11, align 8
  %23 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %22, i32 0, i32 0
  store %struct.ocfs2_extent_list* %23, %struct.ocfs2_extent_list** %12, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %60, %17
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %27 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %63

31:                                               ; preds = %24
  %32 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  %33 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %32, i32 0, i32 0
  %34 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %34, i64 %36
  store %struct.ocfs2_extent_rec* %37, %struct.ocfs2_extent_rec** %13, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %40 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %6, align 8
  %43 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %13, align 8
  %46 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le64_to_cpu(i32 %47)
  %49 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %13, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call i32 @ocfs2_free_clusters(i32* %38, i32 %41, i32 %44, i32 %48, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %31
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %59

59:                                               ; preds = %56, %31
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %24

63:                                               ; preds = %24
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call i32 @INODE_CACHE(%struct.inode* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %67 = call i32 @ocfs2_remove_from_cache(i32 %65, %struct.buffer_head* %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  br label %70

70:                                               ; preds = %63, %16
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_free_clusters(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_remove_from_cache(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
