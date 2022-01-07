; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc_contig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_chain_list = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.ocfs2_super*, i32*, %struct.inode*, %struct.ocfs2_alloc_context*, %struct.ocfs2_chain_list*)* @ocfs2_block_group_alloc_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ocfs2_block_group_alloc_contig(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, %struct.ocfs2_alloc_context* %3, %struct.ocfs2_chain_list* %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca %struct.ocfs2_chain_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %9, align 8
  store %struct.ocfs2_chain_list* %4, %struct.ocfs2_chain_list** %10, align 8
  %17 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %10, align 8
  %18 = call i32 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list* %17)
  store i32 %18, i32* %16, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %21 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %10, align 8
  %22 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = call i32 @ocfs2_claim_clusters(i32* %19, %struct.ocfs2_alloc_context* %20, i32 %24, i32* %12, i32* %13)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %5
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @mlog_errno(i32 %34)
  br label %36

36:                                               ; preds = %33, %28
  br label %79

37:                                               ; preds = %5
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @ocfs2_clusters_to_blocks(i32 %40, i32 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 @trace_ocfs2_block_group_alloc_contig(i64 %43, i32 %44)
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call %struct.buffer_head* @sb_getblk(i32 %48, i64 %49)
  store %struct.buffer_head* %50, %struct.buffer_head** %15, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %52 = icmp ne %struct.buffer_head* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %79

58:                                               ; preds = %37
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %62 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %60, %struct.buffer_head* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %10, align 8
  %70 = call i32 @ocfs2_block_group_fill(i32* %63, %struct.inode* %64, %struct.buffer_head* %65, i64 %66, i32 %67, i32 %68, %struct.ocfs2_chain_list* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %58
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %78

78:                                               ; preds = %73, %58
  br label %79

79:                                               ; preds = %78, %53, %36
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %11, align 4
  %84 = call %struct.buffer_head* @ERR_PTR(i32 %83)
  br label %87

85:                                               ; preds = %79
  %86 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi %struct.buffer_head* [ %84, %82 ], [ %86, %85 ]
  ret %struct.buffer_head* %88
}

declare dso_local i32 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_claim_clusters(i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @trace_ocfs2_block_group_alloc_contig(i64, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_group_fill(i32*, %struct.inode*, %struct.buffer_head*, i64, i32, i32, %struct.ocfs2_chain_list*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
