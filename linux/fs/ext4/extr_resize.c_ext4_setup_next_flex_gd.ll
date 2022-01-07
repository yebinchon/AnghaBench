; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_setup_next_flex_gd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_setup_next_flex_gd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_new_flex_group_data = type { i64, i32*, %struct.ext4_new_group_data* }
%struct.ext4_new_group_data = type { i64, i32, i8*, i32 }
%struct.ext4_sb_info = type { %struct.ext4_super_block* }
%struct.ext4_super_block = type { i32 }

@EXT4_BG_BLOCK_UNINIT = common dso_local global i32 0, align 4
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@INIT_INODE_TABLE = common dso_local global i32 0, align 4
@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_new_flex_group_data*, i64, i64)* @ext4_setup_next_flex_gd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_setup_next_flex_gd(%struct.super_block* %0, %struct.ext4_new_flex_group_data* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ext4_new_flex_group_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ext4_sb_info*, align 8
  %11 = alloca %struct.ext4_super_block*, align 8
  %12 = alloca %struct.ext4_new_group_data*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.ext4_new_flex_group_data* %1, %struct.ext4_new_flex_group_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %21)
  store %struct.ext4_sb_info* %22, %struct.ext4_sb_info** %10, align 8
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 0
  %25 = load %struct.ext4_super_block*, %struct.ext4_super_block** %24, align 8
  store %struct.ext4_super_block* %25, %struct.ext4_super_block** %11, align 8
  %26 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %27 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %26, i32 0, i32 2
  %28 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %27, align 8
  store %struct.ext4_new_group_data* %28, %struct.ext4_new_group_data** %12, align 8
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = call i8* @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %18, align 4
  %32 = load %struct.ext4_super_block*, %struct.ext4_super_block** %11, align 8
  %33 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %189

38:                                               ; preds = %4
  %39 = load %struct.super_block*, %struct.super_block** %6, align 8
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %39, i64 %40, i64* %15, i32* %17)
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %44, i64 %46, i64* %14, i32* %17)
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %49, 1
  %51 = or i64 %48, %50
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %38
  %56 = load i64, i64* %14, align 8
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %55, %38
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* %15, align 8
  %60 = sub i64 %58, %59
  %61 = add i64 %60, 1
  %62 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %63 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i64 0, i64* %19, align 8
  br label %64

64:                                               ; preds = %134, %57
  %65 = load i64, i64* %19, align 8
  %66 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %67 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %137

70:                                               ; preds = %64
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %19, align 8
  %73 = add i64 %71, %72
  %74 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %12, align 8
  %75 = load i64, i64* %19, align 8
  %76 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %74, i64 %75
  %77 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  %78 = load %struct.super_block*, %struct.super_block** %6, align 8
  %79 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %78)
  %80 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %12, align 8
  %81 = load i64, i64* %19, align 8
  %82 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %80, i64 %81
  %83 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %82, i32 0, i32 3
  store i32 %79, i32* %83, align 8
  %84 = load %struct.super_block*, %struct.super_block** %6, align 8
  %85 = load i64, i64* %15, align 8
  %86 = load i64, i64* %19, align 8
  %87 = add i64 %85, %86
  %88 = call i32 @ext4_group_overhead_blocks(%struct.super_block* %84, i64 %87)
  store i32 %88, i32* %20, align 4
  %89 = load i32, i32* %20, align 4
  %90 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %12, align 8
  %91 = load i64, i64* %19, align 8
  %92 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %90, i64 %91
  %93 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 8
  %94 = load %struct.super_block*, %struct.super_block** %6, align 8
  %95 = call i8* @EXT4_CLUSTERS_PER_GROUP(%struct.super_block* %94)
  %96 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %12, align 8
  %97 = load i64, i64* %19, align 8
  %98 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %96, i64 %97
  %99 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %98, i32 0, i32 2
  store i8* %95, i8** %99, align 8
  %100 = load %struct.super_block*, %struct.super_block** %6, align 8
  %101 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %70
  %104 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %105 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %108 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load %struct.super_block*, %struct.super_block** %6, align 8
  %113 = load i32, i32* @INIT_INODE_TABLE, align 4
  %114 = call i32 @test_opt(%struct.super_block* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %103
  %117 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %118 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %119 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %19, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %117
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %116, %103
  br label %133

126:                                              ; preds = %70
  %127 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %128 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %129 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %19, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %127, i32* %132, align 4
  br label %133

133:                                              ; preds = %126, %125
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %19, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %19, align 8
  br label %64

137:                                              ; preds = %64
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %14, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load %struct.super_block*, %struct.super_block** %6, align 8
  %143 = call i64 @ext4_has_group_desc_csum(%struct.super_block* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %141
  %146 = load i32, i32* @EXT4_BG_BLOCK_UNINIT, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.ext4_new_flex_group_data*, %struct.ext4_new_flex_group_data** %7, align 8
  %149 = getelementptr inbounds %struct.ext4_new_flex_group_data, %struct.ext4_new_flex_group_data* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* %19, align 8
  %152 = sub i64 %151, 1
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, %147
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %145, %141, %137
  %157 = load i64, i64* %16, align 8
  %158 = load i64, i64* %14, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %156
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = sub nsw i32 %162, 1
  %164 = icmp ne i32 %161, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %160
  %166 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %10, align 8
  %167 = load i32, i32* %17, align 4
  %168 = add nsw i32 %167, 1
  %169 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %166, i32 %168)
  %170 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %12, align 8
  %171 = load i64, i64* %19, align 8
  %172 = sub i64 %171, 1
  %173 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %170, i64 %172
  %174 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %173, i32 0, i32 3
  store i32 %169, i32* %174, align 8
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %17, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %12, align 8
  %180 = load i64, i64* %19, align 8
  %181 = sub i64 %180, 1
  %182 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %179, i64 %181
  %183 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = sext i32 %178 to i64
  %186 = sub i64 0, %185
  %187 = getelementptr i8, i8* %184, i64 %186
  store i8* %187, i8** %183, align 8
  br label %188

188:                                              ; preds = %165, %160, %156
  store i32 1, i32* %5, align 4
  br label %189

189:                                              ; preds = %188, %37
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i8* @EXT4_CLUSTERS_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i32 @ext4_get_group_no_and_offset(%struct.super_block*, i64, i64*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_group_overhead_blocks(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_has_group_desc_csum(%struct.super_block*) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.ext4_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
