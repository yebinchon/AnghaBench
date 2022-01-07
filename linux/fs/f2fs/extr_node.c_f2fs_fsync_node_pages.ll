; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_fsync_node_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_fsync_node_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.inode = type { i64 }
%struct.writeback_control = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i64, i32 }

@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NODE = common dso_local global i32 0, align 4
@FI_DIRTY_INODE = common dso_local global i32 0, align 4
@FS_NODE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Retry to write fsync mark: ino=%u, idx=%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_fsync_node_pages(%struct.f2fs_sb_info* %0, %struct.inode* %1, %struct.writeback_control* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.writeback_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pagevec, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  %22 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.writeback_control* %2, %struct.writeback_control** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store %struct.page* null, %struct.page** %15, align 8
  store i32 0, i32* %16, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %30 = load i64, i64* %17, align 8
  %31 = call %struct.page* @last_fsync_dnode(%struct.f2fs_sb_info* %29, i64 %30)
  store %struct.page* %31, %struct.page** %15, align 8
  %32 = load %struct.page*, %struct.page** %15, align 8
  %33 = call i64 @IS_ERR_OR_NULL(%struct.page* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.page*, %struct.page** %15, align 8
  %37 = call i32 @PTR_ERR_OR_ZERO(%struct.page* %36)
  store i32 %37, i32* %6, align 4
  br label %257

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %5
  br label %40

40:                                               ; preds = %223, %39
  %41 = call i32 @pagevec_init(%struct.pagevec* %13)
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %213, %40
  %43 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %44 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %43)
  %45 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %46 = call i32 @pagevec_lookup_tag(%struct.pagevec* %13, i64 %44, i64* %12, i32 %45)
  store i32 %46, i32* %18, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %214

48:                                               ; preds = %42
  store i32 0, i32* %20, align 4
  br label %49

49:                                               ; preds = %201, %48
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %204

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 0
  %55 = load %struct.page**, %struct.page*** %54, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.page*, %struct.page** %55, i64 %57
  %59 = load %struct.page*, %struct.page** %58, align 8
  store %struct.page* %59, %struct.page** %21, align 8
  store i32 0, i32* %22, align 4
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %61 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %60)
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load %struct.page*, %struct.page** %15, align 8
  %66 = call i32 @f2fs_put_page(%struct.page* %65, i32 0)
  %67 = call i32 @pagevec_release(%struct.pagevec* %13)
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %14, align 4
  br label %240

70:                                               ; preds = %53
  %71 = load %struct.page*, %struct.page** %21, align 8
  %72 = call i32 @IS_DNODE(%struct.page* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.page*, %struct.page** %21, align 8
  %76 = call i32 @is_cold_node(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74, %70
  br label %201

79:                                               ; preds = %74
  %80 = load %struct.page*, %struct.page** %21, align 8
  %81 = call i64 @ino_of_node(%struct.page* %80)
  %82 = load i64, i64* %17, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %201

85:                                               ; preds = %79
  %86 = load %struct.page*, %struct.page** %21, align 8
  %87 = call i32 @lock_page(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %21, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %92 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %91)
  %93 = icmp ne i64 %90, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %163, %115, %106, %97
  %99 = load %struct.page*, %struct.page** %21, align 8
  %100 = call i32 @unlock_page(%struct.page* %99)
  br label %201

101:                                              ; preds = %85
  %102 = load %struct.page*, %struct.page** %21, align 8
  %103 = call i64 @ino_of_node(%struct.page* %102)
  %104 = load i64, i64* %17, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %98

107:                                              ; preds = %101
  %108 = load %struct.page*, %struct.page** %21, align 8
  %109 = call i32 @PageDirty(%struct.page* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %107
  %112 = load %struct.page*, %struct.page** %21, align 8
  %113 = load %struct.page*, %struct.page** %15, align 8
  %114 = icmp ne %struct.page* %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %98

116:                                              ; preds = %111, %107
  %117 = load %struct.page*, %struct.page** %21, align 8
  %118 = load i32, i32* @NODE, align 4
  %119 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %117, i32 %118, i32 1, i32 1)
  %120 = load %struct.page*, %struct.page** %21, align 8
  %121 = call i32 @set_fsync_mark(%struct.page* %120, i32 0)
  %122 = load %struct.page*, %struct.page** %21, align 8
  %123 = call i32 @set_dentry_mark(%struct.page* %122, i32 0)
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load %struct.page*, %struct.page** %21, align 8
  %128 = load %struct.page*, %struct.page** %15, align 8
  %129 = icmp eq %struct.page* %127, %128
  br i1 %129, label %130, label %159

130:                                              ; preds = %126, %116
  %131 = load %struct.page*, %struct.page** %21, align 8
  %132 = call i32 @set_fsync_mark(%struct.page* %131, i32 1)
  %133 = load %struct.page*, %struct.page** %21, align 8
  %134 = call i64 @IS_INODE(%struct.page* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %130
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = load i32, i32* @FI_DIRTY_INODE, align 4
  %139 = call i64 @is_inode_flag_set(%struct.inode* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = load %struct.page*, %struct.page** %21, align 8
  %144 = call i32 @f2fs_update_inode(%struct.inode* %142, %struct.page* %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load %struct.page*, %struct.page** %21, align 8
  %147 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %148 = load i64, i64* %17, align 8
  %149 = call i32 @f2fs_need_dentry_mark(%struct.f2fs_sb_info* %147, i64 %148)
  %150 = call i32 @set_dentry_mark(%struct.page* %146, i32 %149)
  br label %151

151:                                              ; preds = %145, %130
  %152 = load %struct.page*, %struct.page** %21, align 8
  %153 = call i32 @PageDirty(%struct.page* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load %struct.page*, %struct.page** %21, align 8
  %157 = call i32 @set_page_dirty(%struct.page* %156)
  br label %158

158:                                              ; preds = %155, %151
  br label %159

159:                                              ; preds = %158, %126
  %160 = load %struct.page*, %struct.page** %21, align 8
  %161 = call i32 @clear_page_dirty_for_io(%struct.page* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %98

164:                                              ; preds = %159
  %165 = load %struct.page*, %struct.page** %21, align 8
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load %struct.page*, %struct.page** %21, align 8
  %170 = load %struct.page*, %struct.page** %15, align 8
  %171 = icmp eq %struct.page* %169, %170
  br label %172

172:                                              ; preds = %168, %164
  %173 = phi i1 [ false, %164 ], [ %171, %168 ]
  %174 = zext i1 %173 to i32
  %175 = load %struct.writeback_control*, %struct.writeback_control** %9, align 8
  %176 = load i32, i32* @FS_NODE_IO, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @__write_node_page(%struct.page* %165, i32 %174, i32* %22, %struct.writeback_control* %175, i32 1, i32 %176, i32* %177)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %172
  %182 = load %struct.page*, %struct.page** %21, align 8
  %183 = call i32 @unlock_page(%struct.page* %182)
  %184 = load %struct.page*, %struct.page** %15, align 8
  %185 = call i32 @f2fs_put_page(%struct.page* %184, i32 0)
  br label %204

186:                                              ; preds = %172
  %187 = load i32, i32* %22, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.page*, %struct.page** %21, align 8
  %195 = load %struct.page*, %struct.page** %15, align 8
  %196 = icmp eq %struct.page* %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load %struct.page*, %struct.page** %21, align 8
  %199 = call i32 @f2fs_put_page(%struct.page* %198, i32 0)
  store i32 1, i32* %16, align 4
  br label %204

200:                                              ; preds = %193
  br label %201

201:                                              ; preds = %200, %98, %84, %78
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %20, align 4
  br label %49

204:                                              ; preds = %197, %181, %49
  %205 = call i32 @pagevec_release(%struct.pagevec* %13)
  %206 = call i32 (...) @cond_resched()
  %207 = load i32, i32* %14, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209, %204
  br label %214

213:                                              ; preds = %209
  br label %42

214:                                              ; preds = %212, %42
  %215 = load i32, i32* %14, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %239, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %217
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %239, label %223

223:                                              ; preds = %220
  %224 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %225 = load i64, i64* %17, align 8
  %226 = load %struct.page*, %struct.page** %15, align 8
  %227 = getelementptr inbounds %struct.page, %struct.page* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @f2fs_debug(%struct.f2fs_sb_info* %224, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %225, i32 %228)
  %230 = load %struct.page*, %struct.page** %15, align 8
  %231 = call i32 @lock_page(%struct.page* %230)
  %232 = load %struct.page*, %struct.page** %15, align 8
  %233 = load i32, i32* @NODE, align 4
  %234 = call i32 @f2fs_wait_on_page_writeback(%struct.page* %232, i32 %233, i32 1, i32 1)
  %235 = load %struct.page*, %struct.page** %15, align 8
  %236 = call i32 @set_page_dirty(%struct.page* %235)
  %237 = load %struct.page*, %struct.page** %15, align 8
  %238 = call i32 @unlock_page(%struct.page* %237)
  br label %40

239:                                              ; preds = %220, %217, %214
  br label %240

240:                                              ; preds = %239, %64
  %241 = load i32, i32* %19, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %245 = load i64, i64* %17, align 8
  %246 = load i32, i32* @NODE, align 4
  %247 = call i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info* %244, i32* null, i32* null, i64 %245, i32 %246)
  br label %248

248:                                              ; preds = %243, %240
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  br label %255

254:                                              ; preds = %248
  br label %255

255:                                              ; preds = %254, %251
  %256 = phi i32 [ %253, %251 ], [ 0, %254 ]
  store i32 %256, i32* %6, align 4
  br label %257

257:                                              ; preds = %255, %35
  %258 = load i32, i32* %6, align 4
  ret i32 %258
}

declare dso_local %struct.page* @last_fsync_dnode(%struct.f2fs_sb_info*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.page*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.page*) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_tag(%struct.pagevec*, i64, i64*, i32) #1

declare dso_local i64 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @IS_DNODE(%struct.page*) #1

declare dso_local i32 @is_cold_node(%struct.page*) #1

declare dso_local i64 @ino_of_node(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @f2fs_wait_on_page_writeback(%struct.page*, i32, i32, i32) #1

declare dso_local i32 @set_fsync_mark(%struct.page*, i32) #1

declare dso_local i32 @set_dentry_mark(%struct.page*, i32) #1

declare dso_local i64 @IS_INODE(%struct.page*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_update_inode(%struct.inode*, %struct.page*) #1

declare dso_local i32 @f2fs_need_dentry_mark(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @__write_node_page(%struct.page*, i32, i32*, %struct.writeback_control*, i32, i32, i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @f2fs_debug(%struct.f2fs_sb_info*, i8*, i64, i32) #1

declare dso_local i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info*, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
