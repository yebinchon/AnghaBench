; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_new_inode_at_loc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_new_inode_at_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_alloc_context = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.ocfs2_suballoc_result* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.ocfs2_suballoc_result = type { i64, i32, i64, i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_new_inode_at_loc(i32* %0, %struct.inode* %1, %struct.ocfs2_alloc_context* %2, i64* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_suballoc_result*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_group_desc*, align 8
  %18 = alloca %struct.ocfs2_dinode*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %20 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %19, i32 0, i32 3
  %21 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %20, align 8
  store %struct.ocfs2_suballoc_result* %21, %struct.ocfs2_suballoc_result** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  %22 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %27, %struct.ocfs2_dinode** %18, align 8
  %28 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %29 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %36 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %18, align 8
  %39 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %40 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ocfs2_read_group_descriptor(%struct.TYPE_10__* %37, %struct.ocfs2_dinode* %38, i32 %41, %struct.buffer_head** %16)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  br label %140

48:                                               ; preds = %6
  %49 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %52, %struct.ocfs2_group_desc** %17, align 8
  %53 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %54 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %58 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %57, i32 0, i32 1
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %62 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %65 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @ocfs2_alloc_dinode_update_counts(%struct.TYPE_10__* %59, i32* %60, %struct.TYPE_11__* %63, i32 %66, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %48
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %140

74:                                               ; preds = %48
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %77 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %17, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %81 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %82 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %85 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ocfs2_block_group_set_bits(i32* %75, %struct.TYPE_10__* %78, %struct.ocfs2_group_desc* %79, %struct.buffer_head* %80, i32 %83, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %74
  %91 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %92 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %91, i32 0, i32 1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %95 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %94, i32 0, i32 2
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %98 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @ocfs2_rollback_alloc_dinode_counts(%struct.TYPE_10__* %93, %struct.TYPE_11__* %96, i32 %99, i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %140

104:                                              ; preds = %74
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %107 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @trace_ocfs2_claim_new_inode_at_loc(i64 %105, i32 %108)
  %110 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %111 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.TYPE_12__* @OCFS2_SB(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = call i32 @atomic_inc(i32* %117)
  %119 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %120 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %126 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %10, align 8
  store i64 %127, i64* %128, align 8
  %129 = load %struct.ocfs2_suballoc_result*, %struct.ocfs2_suballoc_result** %15, align 8
  %130 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %11, align 8
  store i32 %131, i32* %132, align 4
  %133 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %134 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %139 = call i32 @ocfs2_save_inode_ac_group(%struct.inode* %137, %struct.ocfs2_alloc_context* %138)
  br label %140

140:                                              ; preds = %104, %90, %71, %45
  %141 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %142 = call i32 @brelse(%struct.buffer_head* %141)
  %143 = load i32, i32* %13, align 4
  ret i32 %143
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.TYPE_10__*, %struct.ocfs2_dinode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_alloc_dinode_update_counts(%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ocfs2_block_group_set_bits(i32*, %struct.TYPE_10__*, %struct.ocfs2_group_desc*, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @ocfs2_rollback_alloc_dinode_counts(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_claim_new_inode_at_loc(i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_12__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_save_inode_ac_group(%struct.inode*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
