; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_free_branches.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_free_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"invalid indirect mapped block %lu (level %d)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Read failure\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"free child branches\00", align 1
@EXT4_FREE_BLOCKS_METADATA = common dso_local global i32 0, align 4
@EXT4_FREE_BLOCKS_FORGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"free data blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, i64*, i64*, i32)* @ext4_free_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_free_branches(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @ext4_handle_is_aborted(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  br label %143

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %134

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @EXT4_ADDR_PER_BLOCK(i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i64*, i64** %11, align 8
  store i64* %30, i64** %14, align 8
  br label %31

31:                                               ; preds = %132, %64, %42, %25
  %32 = load i64*, i64** %14, align 8
  %33 = getelementptr inbounds i64, i64* %32, i32 -1
  store i64* %33, i64** %14, align 8
  %34 = load i64*, i64** %10, align 8
  %35 = icmp uge i64* %33, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %31
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @le32_to_cpu(i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %31

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @EXT4_SB(i32 %46)
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @ext4_data_block_valid(i32 %47, i64 %48, i32 1)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %43
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @EXT4_ERROR_INODE(%struct.inode* %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %54)
  br label %133

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %13, align 8
  %61 = call %struct.buffer_head* @sb_bread(i32 %59, i64 %60)
  store %struct.buffer_head* %61, %struct.buffer_head** %15, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %63 = icmp ne %struct.buffer_head* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode* %65, i64 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %31

68:                                               ; preds = %56
  %69 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %70 = call i32 @BUFFER_TRACE(%struct.buffer_head* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32*, i32** %7, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i64*
  %78 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i32, i32* %12, align 4
  call void @ext4_free_branches(i32* %71, %struct.inode* %72, %struct.buffer_head* %73, i64* %77, i64* %84, i32 %85)
  %86 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %87 = call i32 @brelse(%struct.buffer_head* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i64 @ext4_handle_is_aborted(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %68
  br label %143

92:                                               ; preds = %68
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = call i64 @try_to_extend_transaction(i32* %93, %struct.inode* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i32*, i32** %7, align 8
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = call i32 @ext4_mark_inode_dirty(i32* %98, %struct.inode* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = call i32 @ext4_blocks_for_truncate(%struct.inode* %103)
  %105 = call i32 @ext4_truncate_restart_trans(i32* %101, %struct.inode* %102, i32 %104)
  br label %106

106:                                              ; preds = %97, %92
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i32, i32* @EXT4_FREE_BLOCKS_METADATA, align 4
  %111 = load i32, i32* @EXT4_FREE_BLOCKS_FORGET, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ext4_free_blocks(i32* %107, %struct.inode* %108, i32* null, i64 %109, i32 1, i32 %112)
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = icmp ne %struct.buffer_head* %114, null
  br i1 %115, label %116, label %132

116:                                              ; preds = %106
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = call i32 @BUFFER_TRACE(%struct.buffer_head* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32*, i32** %7, align 8
  %120 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %121 = call i32 @ext4_journal_get_write_access(i32* %119, %struct.buffer_head* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %131, label %123

123:                                              ; preds = %116
  %124 = load i64*, i64** %14, align 8
  store i64 0, i64* %124, align 8
  %125 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %126 = call i32 @BUFFER_TRACE(%struct.buffer_head* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32*, i32** %7, align 8
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = call i32 @ext4_handle_dirty_metadata(i32* %127, %struct.inode* %128, %struct.buffer_head* %129)
  br label %131

131:                                              ; preds = %123, %116
  br label %132

132:                                              ; preds = %131, %106
  br label %31

133:                                              ; preds = %51, %31
  br label %143

134:                                              ; preds = %21
  %135 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %136 = call i32 @BUFFER_TRACE(%struct.buffer_head* %135, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %137 = load i32*, i32** %7, align 8
  %138 = load %struct.inode*, %struct.inode** %8, align 8
  %139 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %140 = load i64*, i64** %10, align 8
  %141 = load i64*, i64** %11, align 8
  %142 = call i32 @ext4_free_data(i32* %137, %struct.inode* %138, %struct.buffer_head* %139, i64* %140, i64* %141)
  br label %143

143:                                              ; preds = %20, %91, %134, %133
  ret void
}

declare dso_local i64 @ext4_handle_is_aborted(i32*) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ext4_data_block_valid(i32, i64, i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @EXT4_ERROR_INODE(%struct.inode*, i8*, i64, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i32 @EXT4_ERROR_INODE_BLOCK(%struct.inode*, i64, i8*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @try_to_extend_transaction(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_truncate_restart_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_blocks_for_truncate(%struct.inode*) #1

declare dso_local i32 @ext4_free_blocks(i32*, %struct.inode*, i32*, i64, i32, i32) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_free_data(i32*, %struct.inode*, %struct.buffer_head*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
