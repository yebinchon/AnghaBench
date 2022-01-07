; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c__ocfs2_free_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c__ocfs2_free_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i64, i32, void (i32, i64*)*)* @_ocfs2_free_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ocfs2_free_clusters(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i32 %4, void (i32, i64*)* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca void (i32, i64*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store void (i32, i64*)* %5, void (i32, i64*)** %12, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @ocfs2_blocks_to_clusters(i32 %22, i64 %23)
  %25 = call i64 @ocfs2_clusters_to_blocks(i32 %19, i32 %24)
  %26 = icmp ne i64 %16, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @ocfs2_block_to_cluster_group(%struct.inode* %29, i64 %30, i64* %15, i32* %14)
  %32 = load i64, i64* %15, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @trace_ocfs2_free_clusters(i64 %32, i64 %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i64, i64* %15, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load void (i32, i64*)*, void (i32, i64*)** %12, align 8
  %44 = call i32 @_ocfs2_free_suballoc_bits(i32* %37, %struct.inode* %38, %struct.buffer_head* %39, i32 %40, i64 %41, i32 %42, void (i32, i64*)* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %6
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %57

50:                                               ; preds = %6
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @OCFS2_SB(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ocfs2_local_alloc_seen_free_bits(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i32 @ocfs2_block_to_cluster_group(%struct.inode*, i64, i64*, i32*) #1

declare dso_local i32 @trace_ocfs2_free_clusters(i64, i64, i32, i32) #1

declare dso_local i32 @_ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i64, i32, void (i32, i64*)*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_local_alloc_seen_free_bits(i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
