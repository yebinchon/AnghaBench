; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c___read_extent_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c___read_extent_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i64, i32 }
%struct.ext4_extent_header = type { i32 }
%struct.ext4_extent = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@__GFP_MOVABLE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@EXT4_EX_FORCE_CACHE = common dso_local global i32 0, align 4
@EXT4_EX_NOCACHE = common dso_local global i32 0, align 4
@EXTENT_STATUS_WRITTEN = common dso_local global i32 0, align 4
@EXTENT_STATUS_HOLE = common dso_local global i32 0, align 4
@EXTENT_STATUS_UNWRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i8*, i32, %struct.inode*, i32, i32, i32)* @__read_extent_tree_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @__read_extent_tree_block(i8* %0, i32 %1, %struct.inode* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_extent_header*, align 8
  %17 = alloca %struct.ext4_extent*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @__GFP_MOVABLE, align 4
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.buffer_head* @sb_getblk_gfp(i32 %25, i32 %26, i32 %29)
  store %struct.buffer_head* %30, %struct.buffer_head** %14, align 8
  %31 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %32 = icmp ne %struct.buffer_head* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %6
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.buffer_head* @ERR_PTR(i32 %39)
  store %struct.buffer_head* %40, %struct.buffer_head** %7, align 8
  br label %176

41:                                               ; preds = %6
  %42 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %43 = call i32 @bh_uptodate_or_lock(%struct.buffer_head* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @_RET_IP_, align 4
  %49 = call i32 @trace_ext4_ext_load_extent(%struct.inode* %46, i32 %47, i32 %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %51 = call i32 @bh_submit_read(%struct.buffer_head* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %171

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %41
  %57 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %58 = call i64 @buffer_verified(%struct.buffer_head* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @EXT4_EX_FORCE_CACHE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %7, align 8
  br label %176

67:                                               ; preds = %60, %56
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ext4_has_feature_journal(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %67
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.TYPE_4__* @EXT4_SB(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le32_to_cpu(i32 %84)
  %86 = icmp ne i64 %76, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %73, %67
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.inode*, %struct.inode** %10, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %92 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %91)
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @__ext4_ext_check(i8* %88, i32 %89, %struct.inode* %90, %struct.ext4_extent_header* %92, i32 %93, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %171

99:                                               ; preds = %87
  br label %100

100:                                              ; preds = %99, %73
  %101 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %102 = call i32 @set_buffer_verified(%struct.buffer_head* %101)
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @EXT4_EX_NOCACHE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %169, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %169

110:                                              ; preds = %107
  %111 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %112 = call %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head* %111)
  store %struct.ext4_extent_header* %112, %struct.ext4_extent_header** %16, align 8
  %113 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %114 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %113)
  store %struct.ext4_extent* %114, %struct.ext4_extent** %17, align 8
  store i64 0, i64* %18, align 8
  %115 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %16, align 8
  %116 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le16_to_cpu(i32 %117)
  store i32 %118, i32* %19, align 4
  br label %119

119:                                              ; preds = %163, %110
  %120 = load i32, i32* %19, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %168

122:                                              ; preds = %119
  %123 = load i32, i32* @EXTENT_STATUS_WRITTEN, align 4
  store i32 %123, i32* %20, align 4
  %124 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %125 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @le32_to_cpu(i32 %126)
  store i64 %127, i64* %21, align 8
  %128 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %129 = call i32 @ext4_ext_get_actual_len(%struct.ext4_extent* %128)
  store i32 %129, i32* %22, align 4
  %130 = load i64, i64* %18, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %122
  %133 = load i64, i64* %18, align 8
  %134 = load i64, i64* %21, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* %21, align 8
  %140 = load i64, i64* %18, align 8
  %141 = sub nsw i64 %139, %140
  %142 = trunc i64 %141 to i32
  %143 = load i32, i32* @EXTENT_STATUS_HOLE, align 4
  %144 = call i32 @ext4_es_cache_extent(%struct.inode* %137, i64 %138, i32 %142, i32 -1, i32 %143)
  br label %145

145:                                              ; preds = %136, %132, %122
  %146 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %147 = call i64 @ext4_ext_is_unwritten(%struct.ext4_extent* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @EXTENT_STATUS_UNWRITTEN, align 4
  store i32 %150, i32* %20, align 4
  br label %151

151:                                              ; preds = %149, %145
  %152 = load %struct.inode*, %struct.inode** %10, align 8
  %153 = load i64, i64* %21, align 8
  %154 = load i32, i32* %22, align 4
  %155 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %156 = call i32 @ext4_ext_pblock(%struct.ext4_extent* %155)
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @ext4_es_cache_extent(%struct.inode* %152, i64 %153, i32 %154, i32 %156, i32 %157)
  %159 = load i64, i64* %21, align 8
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  store i64 %162, i64* %18, align 8
  br label %163

163:                                              ; preds = %151
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %19, align 4
  %166 = load %struct.ext4_extent*, %struct.ext4_extent** %17, align 8
  %167 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %166, i32 1
  store %struct.ext4_extent* %167, %struct.ext4_extent** %17, align 8
  br label %119

168:                                              ; preds = %119
  br label %169

169:                                              ; preds = %168, %107, %100
  %170 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %170, %struct.buffer_head** %7, align 8
  br label %176

171:                                              ; preds = %98, %54
  %172 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %173 = call i32 @put_bh(%struct.buffer_head* %172)
  %174 = load i32, i32* %15, align 4
  %175 = call %struct.buffer_head* @ERR_PTR(i32 %174)
  store %struct.buffer_head* %175, %struct.buffer_head** %7, align 8
  br label %176

176:                                              ; preds = %171, %169, %65, %37
  %177 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  ret %struct.buffer_head* %177
}

declare dso_local %struct.buffer_head* @sb_getblk_gfp(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head*) #1

declare dso_local i32 @trace_ext4_ext_load_extent(%struct.inode*, i32, i32) #1

declare dso_local i32 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i64 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @ext4_has_feature_journal(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_SB(i32) #1

declare dso_local i32 @__ext4_ext_check(i8*, i32, %struct.inode*, %struct.ext4_extent_header*, i32, i32) #1

declare dso_local %struct.ext4_extent_header* @ext_block_hdr(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_ext_get_actual_len(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_es_cache_extent(%struct.inode*, i64, i32, i32, i32) #1

declare dso_local i64 @ext4_ext_is_unwritten(%struct.ext4_extent*) #1

declare dso_local i32 @ext4_ext_pblock(%struct.ext4_extent*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
