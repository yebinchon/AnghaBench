; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_grow_discontig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_grow_discontig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_chain_list = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_group_desc = type { i32, %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32, i32 }

@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_chain_list*, i32)* @ocfs2_block_group_grow_discontig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_block_group_grow_discontig(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_alloc_context* %3, %struct.ocfs2_chain_list* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ocfs2_alloc_context*, align 8
  %11 = alloca %struct.ocfs2_chain_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_group_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_extent_list*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %10, align 8
  store %struct.ocfs2_chain_list* %4, %struct.ocfs2_chain_list** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %14, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %28, %struct.ocfs2_group_desc** %15, align 8
  %29 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %11, align 8
  %30 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %34 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %11, align 8
  %38 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = udiv i32 %36, %40
  %42 = sub i32 %32, %41
  store i32 %42, i32* %16, align 4
  %43 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %44 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %43, i32 0, i32 1
  store %struct.ocfs2_extent_list* %44, %struct.ocfs2_extent_list** %20, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @INODE_CACHE(%struct.inode* %46)
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %50 = call i32 @ocfs2_journal_access_gd(i32* %45, i32 %47, %struct.buffer_head* %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %6
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %132

56:                                               ; preds = %6
  br label %57

57:                                               ; preds = %95, %56
  %58 = load i32, i32* %16, align 4
  %59 = icmp ugt i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %62 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %20, align 8
  %66 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = icmp ult i32 %64, %68
  br label %70

70:                                               ; preds = %60, %57
  %71 = phi i1 [ false, %57 ], [ %69, %60 ]
  br i1 %71, label %72, label %122

72:                                               ; preds = %70
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @ocfs2_block_group_claim_bits(%struct.ocfs2_super* %79, i32* %80, %struct.ocfs2_alloc_context* %81, i32 %82, i32* %17, i32* %18)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %78
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @mlog_errno(i32 %92)
  br label %94

94:                                               ; preds = %91, %86
  br label %132

95:                                               ; preds = %78
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %97 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @ocfs2_clusters_to_blocks(i32 %98, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %102 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %103 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %11, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @ocfs2_bg_discontig_add_extent(%struct.ocfs2_super* %101, %struct.ocfs2_group_desc* %102, %struct.ocfs2_chain_list* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %18, align 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %11, align 8
  %109 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %15, align 8
  %113 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le16_to_cpu(i32 %114)
  %116 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %11, align 8
  %117 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = udiv i32 %115, %119
  %121 = sub i32 %111, %120
  store i32 %121, i32* %16, align 4
  br label %57

122:                                              ; preds = %70
  %123 = load i32, i32* %16, align 4
  %124 = icmp ugt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @ENOSPC, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %13, align 4
  br label %132

128:                                              ; preds = %122
  %129 = load i32*, i32** %7, align 8
  %130 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %131 = call i32 @ocfs2_journal_dirty(i32* %129, %struct.buffer_head* %130)
  br label %132

132:                                              ; preds = %128, %125, %94, %53
  %133 = load i32, i32* %13, align 4
  ret i32 %133
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_gd(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_block_group_claim_bits(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_bg_discontig_add_extent(%struct.ocfs2_super*, %struct.ocfs2_group_desc*, %struct.ocfs2_chain_list*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
