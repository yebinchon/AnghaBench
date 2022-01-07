; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___write_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___write_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.bio = type { i32 }
%struct.writeback_control = type { i64 }
%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_io_info = type { i32, i32, i32, i32*, %struct.bio**, %struct.writeback_control*, i32*, %struct.page*, i32, i32, i32, i32, i32, %struct.f2fs_sb_info* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@LOCK_RETRY = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SBI_POR_DOING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BASE_CHECK = common dso_local global i32 0, align 4
@LOCK_DONE = common dso_local global i32 0, align 4
@FI_HOT_DATA = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LOCK_REQ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32*, %struct.bio**, i32*, %struct.writeback_control*, i32)* @__write_data_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__write_data_page(%struct.page* %0, i32* %1, %struct.bio** %2, i32* %3, %struct.writeback_control* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bio**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.writeback_control*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.f2fs_sb_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.f2fs_io_info, align 8
  store %struct.page* %0, %struct.page** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.bio** %2, %struct.bio*** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.writeback_control* %4, %struct.writeback_control** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %14, align 8
  %28 = load %struct.inode*, %struct.inode** %14, align 8
  %29 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %28)
  store %struct.f2fs_sb_info* %29, %struct.f2fs_sb_info** %15, align 8
  %30 = load %struct.inode*, %struct.inode** %14, align 8
  %31 = call i32 @i_size_read(%struct.inode* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %17, align 4
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %40, %42
  store i32 %43, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %44 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 1
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 2
  %48 = load i32, i32* @LOCK_RETRY, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 3
  %50 = load i32*, i32** %11, align 8
  store i32* %50, i32** %49, align 8
  %51 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 4
  %52 = load %struct.bio**, %struct.bio*** %10, align 8
  store %struct.bio** %52, %struct.bio*** %51, align 8
  %53 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 5
  %54 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  store %struct.writeback_control* %54, %struct.writeback_control** %53, align 8
  %55 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 6
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 7
  %57 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %57, %struct.page** %56, align 8
  %58 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 8
  %59 = load i32, i32* @NULL_ADDR, align 4
  store i32 %59, i32* %58, align 8
  %60 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 9
  %61 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %62 = call i32 @wbc_to_write_flags(%struct.writeback_control* %61)
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 10
  %64 = load i32, i32* @REQ_OP_WRITE, align 4
  store i32 %64, i32* %63, align 8
  %65 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 11
  %66 = load i32, i32* @DATA, align 4
  store i32 %66, i32* %65, align 4
  %67 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 12
  %68 = load %struct.inode*, %struct.inode** %14, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %67, align 8
  %71 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 13
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  store %struct.f2fs_sb_info* %72, %struct.f2fs_sb_info** %71, align 8
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = load i32, i32* @DATA, align 4
  %75 = call i32 @trace_f2fs_writepage(%struct.page* %73, i32 %74)
  %76 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %77 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %76)
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %6
  %81 = load %struct.page*, %struct.page** %8, align 8
  %82 = getelementptr inbounds %struct.page, %struct.page* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i32 @mapping_set_error(%struct.TYPE_3__* %83, i32 %85)
  %87 = load %struct.inode*, %struct.inode** %14, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @S_ISDIR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %80
  br label %323

93:                                               ; preds = %80
  br label %251

94:                                               ; preds = %6
  %95 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %96 = load i32, i32* @SBI_POR_DOING, align 4
  %97 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %95, i32 %96)
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %323

101:                                              ; preds = %94
  %102 = load %struct.page*, %struct.page** %8, align 8
  %103 = getelementptr inbounds %struct.page, %struct.page* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load %struct.inode*, %struct.inode** %14, align 8
  %109 = call i64 @f2fs_verity_in_progress(%struct.inode* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %101
  br label %132

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %113, %115
  store i32 %116, i32* %19, align 4
  %117 = load %struct.page*, %struct.page** %8, align 8
  %118 = getelementptr inbounds %struct.page, %struct.page* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  %122 = icmp sge i32 %119, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %19, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123, %112
  br label %251

127:                                              ; preds = %123
  %128 = load %struct.page*, %struct.page** %8, align 8
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* @PAGE_SIZE, align 4
  %131 = call i32 @zero_user_segment(%struct.page* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %111
  %133 = load %struct.inode*, %struct.inode** %14, align 8
  %134 = call i64 @f2fs_is_drop_cache(%struct.inode* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %251

137:                                              ; preds = %132
  %138 = load %struct.inode*, %struct.inode** %14, align 8
  %139 = call i64 @f2fs_is_volatile_file(%struct.inode* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = load %struct.page*, %struct.page** %8, align 8
  %143 = getelementptr inbounds %struct.page, %struct.page* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %141
  %147 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %148 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %153 = load i32, i32* @BASE_CHECK, align 4
  %154 = call i64 @f2fs_available_free_memory(%struct.f2fs_sb_info* %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151, %141
  br label %323

157:                                              ; preds = %151, %146, %137
  %158 = load %struct.inode*, %struct.inode** %14, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @S_ISDIR(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %157
  %164 = load i32, i32* @LOCK_DONE, align 4
  %165 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 2
  store i32 %164, i32* %165, align 8
  %166 = call i32 @f2fs_do_write_data_page(%struct.f2fs_io_info* %22)
  store i32 %166, i32* %21, align 4
  br label %241

167:                                              ; preds = %157
  %168 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %169 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  store i32 1, i32* %20, align 4
  br label %183

173:                                              ; preds = %167
  %174 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %175 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %174, i32 0, i32 0)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  br label %323

178:                                              ; preds = %173
  %179 = load %struct.inode*, %struct.inode** %14, align 8
  %180 = load i32, i32* @FI_HOT_DATA, align 4
  %181 = call i32 @set_inode_flag(%struct.inode* %179, i32 %180)
  br label %182

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182, %172
  %184 = load i32, i32* @EAGAIN, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %21, align 4
  %186 = load %struct.inode*, %struct.inode** %14, align 8
  %187 = call i64 @f2fs_has_inline_data(%struct.inode* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load %struct.inode*, %struct.inode** %14, align 8
  %191 = load %struct.page*, %struct.page** %8, align 8
  %192 = call i32 @f2fs_write_inline_data(%struct.inode* %190, %struct.page* %191)
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %189
  br label %251

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %183
  %198 = load i32, i32* %21, align 4
  %199 = load i32, i32* @EAGAIN, align 4
  %200 = sub nsw i32 0, %199
  %201 = icmp eq i32 %198, %200
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = call i32 @f2fs_do_write_data_page(%struct.f2fs_io_info* %22)
  store i32 %203, i32* %21, align 4
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* @EAGAIN, align 4
  %206 = sub nsw i32 0, %205
  %207 = icmp eq i32 %204, %206
  br i1 %207, label %208, label %212

208:                                              ; preds = %202
  %209 = load i32, i32* @LOCK_REQ, align 4
  %210 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 2
  store i32 %209, i32* %210, align 8
  %211 = call i32 @f2fs_do_write_data_page(%struct.f2fs_io_info* %22)
  store i32 %211, i32* %21, align 4
  br label %212

212:                                              ; preds = %208, %202
  br label %213

213:                                              ; preds = %212, %197
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.inode*, %struct.inode** %14, align 8
  %218 = call i32 @file_set_keep_isize(%struct.inode* %217)
  br label %240

219:                                              ; preds = %213
  %220 = load %struct.inode*, %struct.inode** %14, align 8
  %221 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %220)
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 2
  %223 = call i32 @down_write(i32* %222)
  %224 = load %struct.inode*, %struct.inode** %14, align 8
  %225 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %18, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %219
  %231 = load i32, i32* %18, align 4
  %232 = load %struct.inode*, %struct.inode** %14, align 8
  %233 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %232)
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 0
  store i32 %231, i32* %234, align 4
  br label %235

235:                                              ; preds = %230, %219
  %236 = load %struct.inode*, %struct.inode** %14, align 8
  %237 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %236)
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 2
  %239 = call i32 @up_write(i32* %238)
  br label %240

240:                                              ; preds = %235, %216
  br label %241

241:                                              ; preds = %240, %163
  %242 = load i32, i32* %21, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* @ENOENT, align 4
  %247 = sub nsw i32 0, %246
  %248 = icmp ne i32 %245, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %323

250:                                              ; preds = %244, %241
  br label %251

251:                                              ; preds = %250, %195, %136, %126, %93
  %252 = load %struct.inode*, %struct.inode** %14, align 8
  %253 = call i32 @inode_dec_dirty_pages(%struct.inode* %252)
  %254 = load i32, i32* %21, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.page*, %struct.page** %8, align 8
  %258 = call i32 @ClearPageUptodate(%struct.page* %257)
  %259 = load %struct.page*, %struct.page** %8, align 8
  %260 = call i32 @clear_cold_data(%struct.page* %259)
  br label %261

261:                                              ; preds = %256, %251
  %262 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %263 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %276

266:                                              ; preds = %261
  %267 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %268 = load %struct.page*, %struct.page** %8, align 8
  %269 = load i32, i32* @DATA, align 4
  %270 = call i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info* %267, i32* null, %struct.page* %268, i32 0, i32 %269)
  %271 = load %struct.inode*, %struct.inode** %14, align 8
  %272 = load i32, i32* @FI_HOT_DATA, align 4
  %273 = call i32 @clear_inode_flag(%struct.inode* %271, i32 %272)
  %274 = load %struct.inode*, %struct.inode** %14, align 8
  %275 = call i32 @f2fs_remove_dirty_inode(%struct.inode* %274)
  store i32* null, i32** %9, align 8
  br label %276

276:                                              ; preds = %266, %261
  %277 = load %struct.page*, %struct.page** %8, align 8
  %278 = call i32 @unlock_page(%struct.page* %277)
  %279 = load %struct.inode*, %struct.inode** %14, align 8
  %280 = getelementptr inbounds %struct.inode, %struct.inode* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @S_ISDIR(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %302, label %284

284:                                              ; preds = %276
  %285 = load %struct.inode*, %struct.inode** %14, align 8
  %286 = call i32 @IS_NOQUOTA(%struct.inode* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %302, label %288

288:                                              ; preds = %284
  %289 = load %struct.inode*, %struct.inode** %14, align 8
  %290 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %289)
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %302, label %294

294:                                              ; preds = %288
  %295 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %296 = load %struct.bio**, %struct.bio*** %10, align 8
  %297 = load %struct.page*, %struct.page** %8, align 8
  %298 = call i32 @f2fs_submit_ipu_bio(%struct.f2fs_sb_info* %295, %struct.bio** %296, %struct.page* %297)
  %299 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %300 = load i32, i32* %20, align 4
  %301 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %299, i32 %300)
  br label %302

302:                                              ; preds = %294, %288, %284, %276
  %303 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %304 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %303)
  %305 = call i64 @unlikely(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %309 = load %struct.bio**, %struct.bio*** %10, align 8
  %310 = load %struct.page*, %struct.page** %8, align 8
  %311 = call i32 @f2fs_submit_ipu_bio(%struct.f2fs_sb_info* %308, %struct.bio** %309, %struct.page* %310)
  %312 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %15, align 8
  %313 = load i32, i32* @DATA, align 4
  %314 = call i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info* %312, i32 %313)
  store i32* null, i32** %9, align 8
  br label %315

315:                                              ; preds = %307, %302
  %316 = load i32*, i32** %9, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %22, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load i32*, i32** %9, align 8
  store i32 %320, i32* %321, align 4
  br label %322

322:                                              ; preds = %318, %315
  store i32 0, i32* %7, align 4
  br label %340

323:                                              ; preds = %249, %177, %156, %100, %92
  %324 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %325 = load %struct.page*, %struct.page** %8, align 8
  %326 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %324, %struct.page* %325)
  %327 = load i32, i32* %21, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %323
  %330 = load %struct.writeback_control*, %struct.writeback_control** %12, align 8
  %331 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %329, %323
  %335 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  store i32 %335, i32* %7, align 4
  br label %340

336:                                              ; preds = %329
  %337 = load %struct.page*, %struct.page** %8, align 8
  %338 = call i32 @unlock_page(%struct.page* %337)
  %339 = load i32, i32* %21, align 4
  store i32 %339, i32* %7, align 4
  br label %340

340:                                              ; preds = %336, %334, %322
  %341 = load i32, i32* %7, align 4
  ret i32 %341
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @wbc_to_write_flags(%struct.writeback_control*) #1

declare dso_local i32 @trace_f2fs_writepage(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i32 @mapping_set_error(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_verity_in_progress(%struct.inode*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i64 @f2fs_is_drop_cache(%struct.inode*) #1

declare dso_local i64 @f2fs_is_volatile_file(%struct.inode*) #1

declare dso_local i64 @f2fs_available_free_memory(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_do_write_data_page(%struct.f2fs_io_info*) #1

declare dso_local i64 @has_not_enough_free_secs(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local i32 @f2fs_write_inline_data(%struct.inode*, %struct.page*) #1

declare dso_local i32 @file_set_keep_isize(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @inode_dec_dirty_pages(%struct.inode*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @clear_cold_data(%struct.page*) #1

declare dso_local i32 @f2fs_submit_merged_write_cond(%struct.f2fs_sb_info*, i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_remove_dirty_inode(%struct.inode*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local i32 @f2fs_submit_ipu_bio(%struct.f2fs_sb_info*, %struct.bio**, %struct.page*) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_submit_merged_write(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
