; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_collapse_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_collapse_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@EXT4_HT_TRUNCATE = common dso_local global i32 0, align 4
@EXT_MAX_BLOCKS = common dso_local global i64 0, align 8
@SHIFT_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_collapse_range(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 3
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %8, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %21 = call i32 @ext4_test_inode_flag(%struct.inode* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %252

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.super_block*, %struct.super_block** %8, align 8
  %29 = call i32 @EXT4_CLUSTER_SIZE(%struct.super_block* %28)
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.super_block*, %struct.super_block** %8, align 8
  %36 = call i32 @EXT4_CLUSTER_SIZE(%struct.super_block* %35)
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %26
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %252

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @S_ISREG(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %252

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @trace_ext4_collapse_range(%struct.inode* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.super_block*, %struct.super_block** %8, align 8
  %59 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %58)
  %60 = ashr i32 %57, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.super_block*, %struct.super_block** %8, align 8
  %65 = call i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block* %64)
  %66 = ashr i32 %63, %65
  store i32 %66, i32* %10, align 4
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = call i64 @ext4_should_journal_data(%struct.inode* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %52
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 3
  %73 = load %struct.super_block*, %struct.super_block** %72, align 8
  %74 = call i32 @ext4_force_commit(%struct.super_block* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* %15, align 4
  store i32 %78, i32* %4, align 4
  br label %252

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = call i32 @inode_lock(%struct.inode* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call i32 @i_size_read(%struct.inode* %86)
  %88 = icmp sge i32 %85, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %248

92:                                               ; preds = %80
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %95 = call i32 @ext4_test_inode_flag(%struct.inode* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* @EOPNOTSUPP, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %15, align 4
  br label %248

100:                                              ; preds = %92
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call i32 @inode_dio_wait(%struct.inode* %101)
  %103 = load %struct.inode*, %struct.inode** %5, align 8
  %104 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = call i32 @down_write(i32* %105)
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = call i32 @ext4_break_layouts(%struct.inode* %107)
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %243

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = call i32 @round_down(i32 %113, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @filemap_write_and_wait_range(i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %243

125:                                              ; preds = %112
  %126 = load %struct.inode*, %struct.inode** %5, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* @LLONG_MAX, align 4
  %133 = call i32 @filemap_write_and_wait_range(i32 %128, i32 %131, i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %243

137:                                              ; preds = %125
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @truncate_pagecache(%struct.inode* %138, i32 %139)
  %141 = load %struct.inode*, %struct.inode** %5, align 8
  %142 = call i32 @ext4_writepage_trans_blocks(%struct.inode* %141)
  store i32 %142, i32* %12, align 4
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = load i32, i32* @EXT4_HT_TRUNCATE, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32* @ext4_journal_start(%struct.inode* %143, i32 %144, i32 %145)
  store i32* %146, i32** %11, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i64 @IS_ERR(i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @PTR_ERR(i32* %151)
  store i32 %152, i32* %15, align 4
  br label %243

153:                                              ; preds = %137
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %154)
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 2
  %157 = call i32 @down_write(i32* %156)
  %158 = load %struct.inode*, %struct.inode** %5, align 8
  %159 = call i32 @ext4_discard_preallocations(%struct.inode* %158)
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = load i64, i64* @EXT_MAX_BLOCKS, align 8
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = sub nsw i64 %162, %164
  %166 = call i32 @ext4_es_remove_extent(%struct.inode* %160, i32 %161, i64 %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %153
  %170 = load %struct.inode*, %struct.inode** %5, align 8
  %171 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %170)
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 2
  %173 = call i32 @up_write(i32* %172)
  br label %240

174:                                              ; preds = %153
  %175 = load %struct.inode*, %struct.inode** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = sub nsw i32 %177, 1
  %179 = call i32 @ext4_ext_remove_space(%struct.inode* %175, i32 %176, i32 %178)
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %174
  %183 = load %struct.inode*, %struct.inode** %5, align 8
  %184 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %183)
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 2
  %186 = call i32 @up_write(i32* %185)
  br label %240

187:                                              ; preds = %174
  %188 = load %struct.inode*, %struct.inode** %5, align 8
  %189 = call i32 @ext4_discard_preallocations(%struct.inode* %188)
  %190 = load %struct.inode*, %struct.inode** %5, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %9, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* @SHIFT_LEFT, align 4
  %197 = call i32 @ext4_ext_shift_extents(%struct.inode* %190, i32* %191, i32 %192, i32 %195, i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %187
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %201)
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  %204 = call i32 @up_write(i32* %203)
  br label %240

205:                                              ; preds = %187
  %206 = load %struct.inode*, %struct.inode** %5, align 8
  %207 = call i32 @i_size_read(%struct.inode* %206)
  %208 = load i32, i32* %7, align 4
  %209 = sub nsw i32 %207, %208
  store i32 %209, i32* %13, align 4
  %210 = load %struct.inode*, %struct.inode** %5, align 8
  %211 = load i32, i32* %13, align 4
  %212 = call i32 @i_size_write(%struct.inode* %210, i32 %211)
  %213 = load i32, i32* %13, align 4
  %214 = load %struct.inode*, %struct.inode** %5, align 8
  %215 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %214)
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 0
  store i32 %213, i32* %216, align 4
  %217 = load %struct.inode*, %struct.inode** %5, align 8
  %218 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %217)
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  %220 = call i32 @up_write(i32* %219)
  %221 = load %struct.inode*, %struct.inode** %5, align 8
  %222 = call i64 @IS_SYNC(%struct.inode* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %205
  %225 = load i32*, i32** %11, align 8
  %226 = call i32 @ext4_handle_sync(i32* %225)
  br label %227

227:                                              ; preds = %224, %205
  %228 = load %struct.inode*, %struct.inode** %5, align 8
  %229 = call i32 @current_time(%struct.inode* %228)
  %230 = load %struct.inode*, %struct.inode** %5, align 8
  %231 = getelementptr inbounds %struct.inode, %struct.inode* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 8
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = getelementptr inbounds %struct.inode, %struct.inode* %232, i32 0, i32 1
  store i32 %229, i32* %233, align 4
  %234 = load i32*, i32** %11, align 8
  %235 = load %struct.inode*, %struct.inode** %5, align 8
  %236 = call i32 @ext4_mark_inode_dirty(i32* %234, %struct.inode* %235)
  %237 = load i32*, i32** %11, align 8
  %238 = load %struct.inode*, %struct.inode** %5, align 8
  %239 = call i32 @ext4_update_inode_fsync_trans(i32* %237, %struct.inode* %238, i32 1)
  br label %240

240:                                              ; preds = %227, %200, %182, %169
  %241 = load i32*, i32** %11, align 8
  %242 = call i32 @ext4_journal_stop(i32* %241)
  br label %243

243:                                              ; preds = %240, %150, %136, %124, %111
  %244 = load %struct.inode*, %struct.inode** %5, align 8
  %245 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %244)
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = call i32 @up_write(i32* %246)
  br label %248

248:                                              ; preds = %243, %97, %89
  %249 = load %struct.inode*, %struct.inode** %5, align 8
  %250 = call i32 @inode_unlock(%struct.inode* %249)
  %251 = load i32, i32* %15, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %248, %77, %49, %40, %23
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_CLUSTER_SIZE(%struct.super_block*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @trace_ext4_collapse_range(%struct.inode*, i32, i32) #1

declare dso_local i32 @EXT4_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local i64 @ext4_should_journal_data(%struct.inode*) #1

declare dso_local i32 @ext4_force_commit(%struct.super_block*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_break_layouts(%struct.inode*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @filemap_write_and_wait_range(i32, i32, i32) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i32) #1

declare dso_local i32 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32* @ext4_journal_start(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext4_discard_preallocations(%struct.inode*) #1

declare dso_local i32 @ext4_es_remove_extent(%struct.inode*, i32, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ext4_ext_remove_space(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_ext_shift_extents(%struct.inode*, i32*, i32, i32, i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_update_inode_fsync_trans(i32*, %struct.inode*, i32) #1

declare dso_local i32 @ext4_journal_stop(i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
