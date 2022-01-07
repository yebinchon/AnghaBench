; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate_data_blocks_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate_data_blocks_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode_of_data = type { i32, i32, i32, i32, i64 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_node = type { i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@FI_FIRST_BLOCK_WRITTEN = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %0, i32 %1) #0 {
  %3 = alloca %struct.dnode_of_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.f2fs_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dnode_of_data* %0, %struct.dnode_of_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %15 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.f2fs_sb_info* @F2FS_I_SB(i32 %16)
  store %struct.f2fs_sb_info* %17, %struct.f2fs_sb_info** %5, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %19 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %23 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @IS_INODE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %29 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @f2fs_has_extra_attr(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %35 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @get_extra_isize(i32 %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %27, %2
  %39 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %40 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.f2fs_node* @F2FS_NODE(i32 %41)
  store %struct.f2fs_node* %42, %struct.f2fs_node** %6, align 8
  %43 = load %struct.f2fs_node*, %struct.f2fs_node** %6, align 8
  %44 = call i32* @blkaddr_in_node(%struct.f2fs_node* %43)
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %10, align 8
  br label %51

51:                                               ; preds = %101, %38
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %110

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le32_to_cpu(i32 %56)
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @NULL_ADDR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %101

62:                                               ; preds = %54
  %63 = load i64, i64* @NULL_ADDR, align 8
  %64 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %65 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %67 = call i32 @f2fs_set_data_blkaddr(%struct.dnode_of_data* %66)
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @__is_valid_data_blkaddr(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %75 = call i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %72, i64 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %101

78:                                               ; preds = %71, %62
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info* %79, i64 %80)
  %82 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %83 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %88 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_INODE(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %94 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FI_FIRST_BLOCK_WRITTEN, align 4
  %97 = call i32 @clear_inode_flag(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %86, %78
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %77, %61
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %4, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %10, align 8
  %106 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %107 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %51

110:                                              ; preds = %51
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %115 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ofs_of_node(i32 %116)
  %118 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %119 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @f2fs_start_bidx_of_node(i32 %117, i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  store i64 %124, i64* %13, align 8
  %125 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data* %125, i64 %126, i32 0, i32 %127)
  %129 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %130 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %131 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @dec_valid_block_count(%struct.f2fs_sb_info* %129, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %113, %110
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %138 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %140 = load i32, i32* @REQ_TIME, align 4
  %141 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %139, i32 %140)
  %142 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %143 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %146 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.dnode_of_data*, %struct.dnode_of_data** %3, align 8
  %149 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @trace_f2fs_truncate_data_blocks_range(i32 %144, i32 %147, i32 %150, i32 %151)
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(i32) #1

declare dso_local i64 @IS_INODE(i32) #1

declare dso_local i64 @f2fs_has_extra_attr(i32) #1

declare dso_local i32 @get_extra_isize(i32) #1

declare dso_local %struct.f2fs_node* @F2FS_NODE(i32) #1

declare dso_local i32* @blkaddr_in_node(%struct.f2fs_node*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @f2fs_set_data_blkaddr(%struct.dnode_of_data*) #1

declare dso_local i64 @__is_valid_data_blkaddr(i64) #1

declare dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @clear_inode_flag(i32, i32) #1

declare dso_local i64 @f2fs_start_bidx_of_node(i32, i32) #1

declare dso_local i32 @ofs_of_node(i32) #1

declare dso_local i32 @f2fs_update_extent_cache_range(%struct.dnode_of_data*, i64, i32, i32) #1

declare dso_local i32 @dec_valid_block_count(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_truncate_data_blocks_range(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
