; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_precache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_precache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode_info = type { i32 }
%struct.ext4_ext_path = type { i64, i32, %struct.buffer_head* }
%struct.buffer_head = type { i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_EX_FORCE_CACHE = common dso_local global i32 0, align 4
@EXT4_STATE_EXT_PRECACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_precache(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext4_inode_info*, align 8
  %5 = alloca %struct.ext4_ext_path*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %10)
  store %struct.ext4_inode_info* %11, %struct.ext4_inode_info** %4, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %14 = call i32 @ext4_test_inode_flag(%struct.inode* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call i32 @ext_depth(%struct.inode* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call %struct.ext4_ext_path* @kcalloc(i32 %24, i32 24, i32 %25)
  store %struct.ext4_ext_path* %26, %struct.ext4_ext_path** %5, align 8
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %28 = icmp eq %struct.ext4_ext_path* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %17
  %30 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %31 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %30, i32 0, i32 0
  %32 = call i32 @up_read(i32* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %167

35:                                               ; preds = %17
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %158

39:                                               ; preds = %35
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call i32 @ext_inode_hdr(%struct.inode* %40)
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %42, i64 0
  %44 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %47 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i64 0
  %48 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ext4_ext_check(%struct.inode* %45, i32 %49, i32 %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %158

55:                                               ; preds = %39
  %56 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %57 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %56, i64 0
  %58 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @EXT_FIRST_INDEX(i32 %59)
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %63 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %62, i64 0
  %64 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %63, i32 0, i32 0
  store i64 %61, i64* %64, align 8
  br label %65

65:                                               ; preds = %125, %87, %55
  %66 = load i32, i32* %7, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %154

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %87, label %72

72:                                               ; preds = %68
  %73 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %73, i64 %75
  %77 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %79, i64 %81
  %83 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @EXT_LAST_INDEX(i32 %84)
  %86 = icmp sgt i64 %78, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %72, %68
  %88 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %88, i64 %90
  %92 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %91, i32 0, i32 2
  %93 = load %struct.buffer_head*, %struct.buffer_head** %92, align 8
  %94 = call i32 @brelse(%struct.buffer_head* %93)
  %95 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %95, i64 %97
  %99 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %98, i32 0, i32 2
  store %struct.buffer_head* null, %struct.buffer_head** %99, align 8
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %7, align 4
  br label %65

102:                                              ; preds = %72
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %104, i64 %106
  %108 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = trunc i64 %109 to i32
  %112 = call i32 @ext4_idx_pblock(i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* @EXT4_EX_FORCE_CACHE, align 4
  %118 = call %struct.buffer_head* @read_extent_tree_block(%struct.inode* %103, i32 %112, i32 %116, i32 %117)
  store %struct.buffer_head* %118, %struct.buffer_head** %6, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %120 = call i64 @IS_ERR(%struct.buffer_head* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %102
  %123 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %124 = call i32 @PTR_ERR(%struct.buffer_head* %123)
  store i32 %124, i32* %9, align 4
  br label %154

125:                                              ; preds = %102
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %129 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %129, i64 %131
  %133 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %132, i32 0, i32 2
  store %struct.buffer_head* %128, %struct.buffer_head** %133, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %135 = call i32 @ext_block_hdr(%struct.buffer_head* %134)
  %136 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %136, i64 %138
  %140 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 8
  %141 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %141, i64 %143
  %145 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = call i8* @EXT_FIRST_INDEX(i32 %146)
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %149, i64 %151
  %153 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %152, i32 0, i32 0
  store i64 %148, i64* %153, align 8
  br label %65

154:                                              ; preds = %122, %65
  %155 = load %struct.inode*, %struct.inode** %3, align 8
  %156 = load i32, i32* @EXT4_STATE_EXT_PRECACHED, align 4
  %157 = call i32 @ext4_set_inode_state(%struct.inode* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %54, %38
  %159 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %4, align 8
  %160 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %159, i32 0, i32 0
  %161 = call i32 @up_read(i32* %160)
  %162 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %163 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %162)
  %164 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %5, align 8
  %165 = call i32 @kfree(%struct.ext4_ext_path* %164)
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %158, %29, %16
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local %struct.ext4_ext_path* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext_inode_hdr(%struct.inode*) #1

declare dso_local i32 @ext4_ext_check(%struct.inode*, i32, i32, i32) #1

declare dso_local i8* @EXT_FIRST_INDEX(i32) #1

declare dso_local i64 @EXT_LAST_INDEX(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @read_extent_tree_block(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @ext4_idx_pblock(i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
