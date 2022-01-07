; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c___nilfs_btree_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c___nilfs_btree_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_btree_readahead_info = type { i32, i32, i32, i32 }
%struct.address_space = type { i32 }
%struct.TYPE_4__ = type { %struct.address_space }

@REQ_OP_READ = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@REQ_RAHEAD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"I/O error reading b-tree node block (ino=%lu, blocknr=%llu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i64, %struct.buffer_head**, %struct.nilfs_btree_readahead_info*)* @__nilfs_btree_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nilfs_btree_get_block(%struct.nilfs_bmap* %0, i64 %1, %struct.buffer_head** %2, %struct.nilfs_btree_readahead_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head**, align 8
  %9 = alloca %struct.nilfs_btree_readahead_info*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %8, align 8
  store %struct.nilfs_btree_readahead_info* %3, %struct.nilfs_btree_readahead_info** %9, align 8
  %18 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %19 = call %struct.TYPE_4__* @NILFS_BMAP_I(%struct.nilfs_bmap* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.address_space* %20, %struct.address_space** %10, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.address_space*, %struct.address_space** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @REQ_OP_READ, align 4
  %24 = call i32 @nilfs_btnode_submit_block(%struct.address_space* %21, i64 %22, i32 0, i32 %23, i32 0, %struct.buffer_head** %11, i32* %13)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @EEXIST, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %145

34:                                               ; preds = %27
  br label %131

35:                                               ; preds = %4
  %36 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %9, align 8
  %37 = icmp ne %struct.nilfs_btree_readahead_info* %36, null
  br i1 %37, label %38, label %105

38:                                               ; preds = %35
  %39 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %9, align 8
  %40 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %16, align 4
  %42 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %9, align 8
  %43 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %99, %38
  %47 = load i32, i32* %16, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %9, align 8
  %52 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i1 [ false, %46 ], [ %54, %49 ]
  br i1 %56, label %57, label %104

57:                                               ; preds = %55
  %58 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %9, align 8
  %59 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.nilfs_btree_readahead_info*, %struct.nilfs_btree_readahead_info** %9, align 8
  %63 = getelementptr inbounds %struct.nilfs_btree_readahead_info, %struct.nilfs_btree_readahead_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @nilfs_btree_node_get_ptr(i32 %60, i32 %61, i32 %64)
  store i64 %65, i64* %17, align 8
  %66 = load %struct.address_space*, %struct.address_space** %10, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i32, i32* @REQ_OP_READ, align 4
  %69 = load i32, i32* @REQ_RAHEAD, align 4
  %70 = call i32 @nilfs_btnode_submit_block(%struct.address_space* %66, i64 %67, i32 0, i32 %68, i32 %69, %struct.buffer_head** %12, i32* %13)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %57
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @EEXIST, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br label %78

78:                                               ; preds = %73, %57
  %79 = phi i1 [ true, %57 ], [ %77, %73 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  br label %93

86:                                               ; preds = %78
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %104

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92, %83
  %94 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %95 = call i32 @buffer_locked(%struct.buffer_head* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %108

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %46

104:                                              ; preds = %91, %55
  br label %105

105:                                              ; preds = %104, %35
  %106 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %107 = call i32 @wait_on_buffer(%struct.buffer_head* %106)
  br label %108

108:                                              ; preds = %105, %97
  %109 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %110 = call i32 @buffer_uptodate(%struct.buffer_head* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %108
  %113 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %114 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %113, i32 0, i32 0
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @KERN_ERR, align 4
  %119 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %120 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %119, i32 0, i32 0
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i64, i64* %7, align 8
  %125 = call i32 @nilfs_msg(i32 %117, i32 %118, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %123, i64 %124)
  %126 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %127 = call i32 @brelse(%struct.buffer_head* %126)
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %145

130:                                              ; preds = %108
  br label %131

131:                                              ; preds = %130, %34
  %132 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %133 = call i64 @nilfs_btree_broken_node_block(%struct.buffer_head* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %137 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %136)
  %138 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %139 = call i32 @brelse(%struct.buffer_head* %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %5, align 4
  br label %145

142:                                              ; preds = %131
  %143 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %144 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  store %struct.buffer_head* %143, %struct.buffer_head** %144, align 8
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %142, %135, %112, %32
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_4__* @NILFS_BMAP_I(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btnode_submit_block(%struct.address_space*, i64, i32, i32, i32, %struct.buffer_head**, i32*) #1

declare dso_local i64 @nilfs_btree_node_get_ptr(i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, i32, i64) #1

declare dso_local i64 @nilfs_btree_broken_node_block(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
