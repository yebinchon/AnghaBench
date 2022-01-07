; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc_discontig.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_block_group_alloc_discontig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_chain_list = type { i32 }
%struct.ocfs2_super = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32*, %struct.inode*, %struct.ocfs2_alloc_context*, %struct.ocfs2_chain_list*)* @ocfs2_block_group_alloc_discontig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ocfs2_block_group_alloc_discontig(i32* %0, %struct.inode* %1, %struct.ocfs2_alloc_context* %2, %struct.ocfs2_chain_list* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_alloc_context*, align 8
  %8 = alloca %struct.ocfs2_chain_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %7, align 8
  store %struct.ocfs2_chain_list* %3, %struct.ocfs2_chain_list** %8, align 8
  %17 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %18 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  %22 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %23 = call i32 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.ocfs2_super* @OCFS2_SB(i32 %26)
  store %struct.ocfs2_super* %27, %struct.ocfs2_super** %16, align 8
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %29 = call i32 @ocfs2_supports_discontig_bg(%struct.ocfs2_super* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOSPC, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %119

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ocfs2_calc_bg_discontig_credits(i32 %38)
  %40 = call i32 @ocfs2_extend_trans(i32* %35, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %119

46:                                               ; preds = %34
  %47 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ocfs2_block_group_claim_bits(%struct.ocfs2_super* %49, i32* %50, %struct.ocfs2_alloc_context* %51, i32 %52, i32* %10, i32* %11)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @mlog_errno(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %119

65:                                               ; preds = %46
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %13, align 4
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @ocfs2_clusters_to_blocks(i32 %69, i32 %70)
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @trace_ocfs2_block_group_alloc_discontig(i64 %72, i32 %73)
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %12, align 8
  %79 = call %struct.buffer_head* @sb_getblk(i32 %77, i64 %78)
  store %struct.buffer_head* %79, %struct.buffer_head** %14, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %81 = icmp ne %struct.buffer_head* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %65
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %119

87:                                               ; preds = %65
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = call i32 @INODE_CACHE(%struct.inode* %88)
  %90 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %91 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %89, %struct.buffer_head* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %99 = call i32 @ocfs2_block_group_fill(i32* %92, %struct.inode* %93, %struct.buffer_head* %94, i64 %95, i32 %96, i32 %97, %struct.ocfs2_chain_list* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %119

105:                                              ; preds = %87
  %106 = load i32*, i32** %5, align 8
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %109 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %110 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %8, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @ocfs2_block_group_grow_discontig(i32* %106, %struct.inode* %107, %struct.buffer_head* %108, %struct.ocfs2_alloc_context* %109, %struct.ocfs2_chain_list* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %118

118:                                              ; preds = %115, %105
  br label %119

119:                                              ; preds = %118, %102, %82, %64, %43, %31
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %7, align 8
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %127 = call i32 @ocfs2_bg_alloc_cleanup(i32* %123, %struct.ocfs2_alloc_context* %124, %struct.inode* %125, %struct.buffer_head* %126)
  br label %128

128:                                              ; preds = %122, %119
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %9, align 4
  %133 = call %struct.buffer_head* @ERR_PTR(i32 %132)
  br label %136

134:                                              ; preds = %128
  %135 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  br label %136

136:                                              ; preds = %134, %131
  %137 = phi %struct.buffer_head* [ %133, %131 ], [ %135, %134 ]
  ret %struct.buffer_head* %137
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_supports_discontig_bg(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_extend_trans(i32*, i32) #1

declare dso_local i32 @ocfs2_calc_bg_discontig_credits(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_block_group_claim_bits(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @trace_ocfs2_block_group_alloc_discontig(i64, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(i32, i64) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_block_group_fill(i32*, %struct.inode*, %struct.buffer_head*, i64, i32, i32, %struct.ocfs2_chain_list*) #1

declare dso_local i32 @ocfs2_block_group_grow_discontig(i32*, %struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*, %struct.ocfs2_chain_list*, i32) #1

declare dso_local i32 @ocfs2_bg_alloc_cleanup(i32*, %struct.ocfs2_alloc_context*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
