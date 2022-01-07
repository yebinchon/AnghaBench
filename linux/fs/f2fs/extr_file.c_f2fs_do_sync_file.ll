; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_do_sync_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_do_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.f2fs_sb_info = type { i32* }
%struct.writeback_control = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@LONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@FI_NEED_IPU = common dso_local global i32 0, align 4
@FI_APPEND_WRITE = common dso_local global i32 0, align 4
@APPEND_INO = common dso_local global i32 0, align 4
@FI_UPDATE_WRITE = common dso_local global i32 0, align 4
@UPDATE_INO = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@FSYNC_MODE_NOBARRIER = common dso_local global i64 0, align 8
@FLUSH_INO = common dso_local global i32 0, align 4
@REQ_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32, i32)* @f2fs_do_sync_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_do_sync_file(%struct.file* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.f2fs_sb_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.writeback_control, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.file*, %struct.file** %7, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %12, align 8
  %25 = load %struct.inode*, %struct.inode** %12, align 8
  %26 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %25)
  store %struct.f2fs_sb_info* %26, %struct.f2fs_sb_info** %13, align 8
  %27 = load %struct.inode*, %struct.inode** %12, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %17, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %17, i32 0, i32 1
  %32 = load i32, i32* @LONG_MAX, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %17, i32 0, i32 2
  %34 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %34, i32* %33, align 4
  store i32 0, i32* %18, align 4
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @f2fs_readonly(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %5
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %42 = load i32, i32* @SBI_CP_DISABLED, align 4
  %43 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %5
  %46 = phi i1 [ true, %5 ], [ %44, %40 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %259

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = call i32 @trace_f2fs_sync_file_enter(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %12, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @S_ISDIR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %131

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.inode*, %struct.inode** %12, align 8
  %65 = call i64 @get_dirty_pages(%struct.inode* %64)
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %67 = call %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %65, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63, %60
  %72 = load %struct.inode*, %struct.inode** %12, align 8
  %73 = load i32, i32* @FI_NEED_IPU, align 4
  %74 = call i32 @set_inode_flag(%struct.inode* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %63
  %76 = load %struct.file*, %struct.file** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @file_write_and_wait_range(%struct.file* %76, i32 %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = load i32, i32* @FI_NEED_IPU, align 4
  %82 = call i32 @clear_inode_flag(%struct.inode* %80, i32 %81)
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @trace_f2fs_sync_file_exit(%struct.inode* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %6, align 4
  br label %259

92:                                               ; preds = %75
  %93 = load %struct.inode*, %struct.inode** %12, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @f2fs_skip_inode_update(%struct.inode* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load %struct.inode*, %struct.inode** %12, align 8
  %99 = call i32 @f2fs_write_inode(%struct.inode* %98, i32* null)
  br label %131

100:                                              ; preds = %92
  %101 = load %struct.inode*, %struct.inode** %12, align 8
  %102 = load i32, i32* @FI_APPEND_WRITE, align 4
  %103 = call i64 @is_inode_flag_set(%struct.inode* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %100
  %106 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @APPEND_INO, align 4
  %109 = call i64 @f2fs_exist_written_data(%struct.f2fs_sb_info* %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %105
  %112 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @need_inode_page_update(%struct.f2fs_sb_info* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %131

117:                                              ; preds = %111
  %118 = load %struct.inode*, %struct.inode** %12, align 8
  %119 = load i32, i32* @FI_UPDATE_WRITE, align 4
  %120 = call i64 @is_inode_flag_set(%struct.inode* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* @UPDATE_INO, align 4
  %126 = call i64 @f2fs_exist_written_data(%struct.f2fs_sb_info* %123, i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122, %117
  br label %215

129:                                              ; preds = %122
  br label %251

130:                                              ; preds = %105, %100
  br label %131

131:                                              ; preds = %130, %116, %97, %59
  %132 = load %struct.inode*, %struct.inode** %12, align 8
  %133 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = call i32 @down_read(i32* %134)
  %136 = load %struct.inode*, %struct.inode** %12, align 8
  %137 = call i32 @need_do_checkpoint(%struct.inode* %136)
  store i32 %137, i32* %16, align 4
  %138 = load %struct.inode*, %struct.inode** %12, align 8
  %139 = call %struct.TYPE_8__* @F2FS_I(%struct.inode* %138)
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = call i32 @up_read(i32* %140)
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %131
  %145 = load %struct.inode*, %struct.inode** %12, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @f2fs_sync_fs(i32 %147, i32 1)
  store i32 %148, i32* %15, align 4
  %149 = load %struct.inode*, %struct.inode** %12, align 8
  %150 = call i32 @try_to_fix_pino(%struct.inode* %149)
  %151 = load %struct.inode*, %struct.inode** %12, align 8
  %152 = load i32, i32* @FI_APPEND_WRITE, align 4
  %153 = call i32 @clear_inode_flag(%struct.inode* %151, i32 %152)
  %154 = load %struct.inode*, %struct.inode** %12, align 8
  %155 = load i32, i32* @FI_UPDATE_WRITE, align 4
  %156 = call i32 @clear_inode_flag(%struct.inode* %154, i32 %155)
  br label %251

157:                                              ; preds = %131
  br label %158

158:                                              ; preds = %191, %157
  %159 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %160 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @NODE, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = call i32 @atomic_inc(i32* %163)
  %165 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %166 = load %struct.inode*, %struct.inode** %12, align 8
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @f2fs_fsync_node_pages(%struct.f2fs_sb_info* %165, %struct.inode* %166, %struct.writeback_control* %17, i32 %167, i32* %18)
  store i32 %168, i32* %15, align 4
  %169 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %170 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @NODE, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = call i32 @atomic_dec(i32* %173)
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %158
  br label %251

178:                                              ; preds = %158
  %179 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %180 = call i32 @f2fs_cp_error(%struct.f2fs_sb_info* %179)
  %181 = call i64 @unlikely(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %15, align 4
  br label %251

186:                                              ; preds = %178
  %187 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i64 @f2fs_need_inode_block_update(%struct.f2fs_sb_info* %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load %struct.inode*, %struct.inode** %12, align 8
  %193 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %192, i32 1)
  %194 = load %struct.inode*, %struct.inode** %12, align 8
  %195 = call i32 @f2fs_write_inode(%struct.inode* %194, i32* null)
  br label %158

196:                                              ; preds = %186
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @f2fs_wait_on_node_pages_writeback(%struct.f2fs_sb_info* %200, i32 %201)
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %251

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206, %196
  %208 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* @APPEND_INO, align 4
  %211 = call i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info* %208, i32 %209, i32 %210)
  %212 = load %struct.inode*, %struct.inode** %12, align 8
  %213 = load i32, i32* @FI_APPEND_WRITE, align 4
  %214 = call i32 @clear_inode_flag(%struct.inode* %212, i32 %213)
  br label %215

215:                                              ; preds = %207, %128
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %232, label %218

218:                                              ; preds = %215
  %219 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %220 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %219)
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i64 %220, i64* %221, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @FSYNC_MODE_NOBARRIER, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %232

226:                                              ; preds = %218
  %227 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %228 = load %struct.inode*, %struct.inode** %12, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @f2fs_issue_flush(%struct.f2fs_sb_info* %227, i32 %230)
  store i32 %231, i32* %15, align 4
  br label %232

232:                                              ; preds = %226, %218, %215
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %232
  %236 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* @UPDATE_INO, align 4
  %239 = call i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info* %236, i32 %237, i32 %238)
  %240 = load %struct.inode*, %struct.inode** %12, align 8
  %241 = load i32, i32* @FI_UPDATE_WRITE, align 4
  %242 = call i32 @clear_inode_flag(%struct.inode* %240, i32 %241)
  %243 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* @FLUSH_INO, align 4
  %246 = call i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info* %243, i32 %244, i32 %245)
  br label %247

247:                                              ; preds = %235, %232
  %248 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %13, align 8
  %249 = load i32, i32* @REQ_TIME, align 4
  %250 = call i32 @f2fs_update_time(%struct.f2fs_sb_info* %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %205, %183, %177, %144, %129
  %252 = load %struct.inode*, %struct.inode** %12, align 8
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @trace_f2fs_sync_file_exit(%struct.inode* %252, i32 %253, i32 %254, i32 %255)
  %257 = call i32 @f2fs_trace_ios(i32* null, i32 1)
  %258 = load i32, i32* %15, align 4
  store i32 %258, i32* %6, align 4
  br label %259

259:                                              ; preds = %251, %85, %50
  %260 = load i32, i32* %6, align 4
  ret i32 %260
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @f2fs_readonly(i32) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @trace_f2fs_sync_file_enter(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @get_dirty_pages(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @file_write_and_wait_range(%struct.file*, i32, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @trace_f2fs_sync_file_exit(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @f2fs_skip_inode_update(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_write_inode(%struct.inode*, i32*) #1

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @f2fs_exist_written_data(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @need_inode_page_update(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_8__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @need_do_checkpoint(%struct.inode*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @f2fs_sync_fs(i32, i32) #1

declare dso_local i32 @try_to_fix_pino(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @f2fs_fsync_node_pages(%struct.f2fs_sb_info*, %struct.inode*, %struct.writeback_control*, i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @f2fs_cp_error(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_need_inode_block_update(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_wait_on_node_pages_writeback(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_remove_ino_entry(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_issue_flush(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_update_time(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_trace_ios(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
