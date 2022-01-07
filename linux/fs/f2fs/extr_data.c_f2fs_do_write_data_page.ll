; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_do_write_data_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_do_write_data_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_io_info = type { i64, i64, i32, i32, %struct.page*, i32 }
%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.dnode_of_data = type { i64, i32 }
%struct.extent_info = type { i64, i64, i32, i32, i32 }
%struct.node_info = type { i32 }

@DATA_GENERIC_ENHANCE = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@LOCK_DONE = common dso_local global i64 0, align 8
@LOCK_REQ = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@FI_UPDATE_WRITE = common dso_local global i32 0, align 4
@IPU = common dso_local global i32 0, align 4
@LOCK_RETRY = common dso_local global i64 0, align 8
@OPU = common dso_local global i32 0, align 4
@FI_APPEND_WRITE = common dso_local global i32 0, align 4
@FI_FIRST_BLOCK_WRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_do_write_data_page(%struct.f2fs_io_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_io_info*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dnode_of_data, align 8
  %7 = alloca %struct.extent_info, align 8
  %8 = alloca %struct.node_info, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.f2fs_io_info* %0, %struct.f2fs_io_info** %3, align 8
  %11 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %12 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %11, i32 0, i32 4
  %13 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %13, %struct.page** %4, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %5, align 8
  %19 = bitcast %struct.extent_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @set_new_dnode(%struct.dnode_of_data* %6, %struct.inode* %20, i32* null, i32* null, i32 0)
  %22 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %23 = call i64 @need_inplace_update(%struct.f2fs_io_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = getelementptr inbounds %struct.page, %struct.page* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @f2fs_lookup_extent_cache(%struct.inode* %26, i64 %29, %struct.extent_info* %7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = getelementptr inbounds %struct.page, %struct.page* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %7, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %38, %40
  %42 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %43 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %45 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %48 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %51 = call i32 @f2fs_is_valid_blkaddr(i32 %46, i64 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %32
  %54 = load i32, i32* @EFSCORRUPTED, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %262

56:                                               ; preds = %32
  store i32 1, i32* %9, align 4
  %57 = load i64, i64* @LOCK_DONE, align 8
  %58 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %59 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %100

60:                                               ; preds = %25, %1
  %61 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %62 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LOCK_REQ, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %68 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @f2fs_trylock_op(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @EAGAIN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %262

75:                                               ; preds = %66, %60
  %76 = load %struct.page*, %struct.page** %4, align 8
  %77 = getelementptr inbounds %struct.page, %struct.page* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @LOOKUP_NODE, align 4
  %80 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %6, i64 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %249

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %6, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %88 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %90 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NULL_ADDR, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %84
  %95 = load %struct.page*, %struct.page** %4, align 8
  %96 = call i32 @ClearPageUptodate(%struct.page* %95)
  %97 = load %struct.page*, %struct.page** %4, align 8
  %98 = call i32 @clear_cold_data(%struct.page* %97)
  br label %247

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %56
  %101 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %102 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @__is_valid_data_blkaddr(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %100
  %107 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %108 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %111 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* @DATA_GENERIC_ENHANCE, align 4
  %114 = call i32 @f2fs_is_valid_blkaddr(i32 %109, i64 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %106
  %117 = load i32, i32* @EFSCORRUPTED, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %247

119:                                              ; preds = %106, %100
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %124 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @__is_valid_data_blkaddr(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %186

128:                                              ; preds = %122
  %129 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %130 = call i64 @need_inplace_update(%struct.f2fs_io_info* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %186

132:                                              ; preds = %128, %119
  %133 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %134 = call i32 @encrypt_one_page(%struct.f2fs_io_info* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %247

138:                                              ; preds = %132
  %139 = load %struct.page*, %struct.page** %4, align 8
  %140 = call i32 @set_page_writeback(%struct.page* %139)
  %141 = load %struct.page*, %struct.page** %4, align 8
  %142 = call i32 @ClearPageError(%struct.page* %141)
  %143 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %6)
  %144 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %145 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @LOCK_REQ, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %138
  %150 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %151 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @f2fs_unlock_op(i32 %152)
  br label %154

154:                                              ; preds = %149, %138
  %155 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %156 = call i32 @f2fs_inplace_write_data(%struct.f2fs_io_info* %155)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %175

159:                                              ; preds = %154
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = call i64 @f2fs_encrypted_file(%struct.inode* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %165 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %164, i32 0, i32 5
  %166 = call i32 @fscrypt_finalize_bounce_page(i32* %165)
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.page*, %struct.page** %4, align 8
  %169 = call i64 @PageWriteback(%struct.page* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load %struct.page*, %struct.page** %4, align 8
  %173 = call i32 @end_page_writeback(%struct.page* %172)
  br label %174

174:                                              ; preds = %171, %167
  br label %179

175:                                              ; preds = %154
  %176 = load %struct.inode*, %struct.inode** %5, align 8
  %177 = load i32, i32* @FI_UPDATE_WRITE, align 4
  %178 = call i32 @set_inode_flag(%struct.inode* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %174
  %180 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %181 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %180, i32 0, i32 4
  %182 = load %struct.page*, %struct.page** %181, align 8
  %183 = load i32, i32* @IPU, align 4
  %184 = call i32 @trace_f2fs_do_write_data_page(%struct.page* %182, i32 %183)
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %2, align 4
  br label %262

186:                                              ; preds = %128, %122
  %187 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %188 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @LOCK_RETRY, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %186
  %193 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %194 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @f2fs_trylock_op(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %192
  %199 = load i32, i32* @EAGAIN, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %10, align 4
  br label %247

201:                                              ; preds = %192
  %202 = load i64, i64* @LOCK_REQ, align 8
  %203 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %204 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %203, i32 0, i32 1
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %186
  %206 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %207 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %6, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @f2fs_get_node_info(i32 %208, i32 %210, %struct.node_info* %8)
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %205
  br label %247

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.node_info, %struct.node_info* %8, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %219 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 4
  %220 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %221 = call i32 @encrypt_one_page(%struct.f2fs_io_info* %220)
  store i32 %221, i32* %10, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %215
  br label %247

225:                                              ; preds = %215
  %226 = load %struct.page*, %struct.page** %4, align 8
  %227 = call i32 @set_page_writeback(%struct.page* %226)
  %228 = load %struct.page*, %struct.page** %4, align 8
  %229 = call i32 @ClearPageError(%struct.page* %228)
  %230 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %231 = call i32 @f2fs_outplace_write_data(%struct.dnode_of_data* %6, %struct.f2fs_io_info* %230)
  %232 = load %struct.page*, %struct.page** %4, align 8
  %233 = load i32, i32* @OPU, align 4
  %234 = call i32 @trace_f2fs_do_write_data_page(%struct.page* %232, i32 %233)
  %235 = load %struct.inode*, %struct.inode** %5, align 8
  %236 = load i32, i32* @FI_APPEND_WRITE, align 4
  %237 = call i32 @set_inode_flag(%struct.inode* %235, i32 %236)
  %238 = load %struct.page*, %struct.page** %4, align 8
  %239 = getelementptr inbounds %struct.page, %struct.page* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %225
  %243 = load %struct.inode*, %struct.inode** %5, align 8
  %244 = load i32, i32* @FI_FIRST_BLOCK_WRITTEN, align 4
  %245 = call i32 @set_inode_flag(%struct.inode* %243, i32 %244)
  br label %246

246:                                              ; preds = %242, %225
  br label %247

247:                                              ; preds = %246, %224, %214, %198, %137, %116, %94
  %248 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %6)
  br label %249

249:                                              ; preds = %247, %83
  %250 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %251 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @LOCK_REQ, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %249
  %256 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %3, align 8
  %257 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @f2fs_unlock_op(i32 %258)
  br label %260

260:                                              ; preds = %255, %249
  %261 = load i32, i32* %10, align 4
  store i32 %261, i32* %2, align 4
  br label %262

262:                                              ; preds = %260, %179, %72, %53
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #2

declare dso_local i64 @need_inplace_update(%struct.f2fs_io_info*) #2

declare dso_local i64 @f2fs_lookup_extent_cache(%struct.inode*, i64, %struct.extent_info*) #2

declare dso_local i32 @f2fs_is_valid_blkaddr(i32, i64, i32) #2

declare dso_local i32 @f2fs_trylock_op(i32) #2

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #2

declare dso_local i32 @ClearPageUptodate(%struct.page*) #2

declare dso_local i32 @clear_cold_data(%struct.page*) #2

declare dso_local i64 @__is_valid_data_blkaddr(i64) #2

declare dso_local i32 @encrypt_one_page(%struct.f2fs_io_info*) #2

declare dso_local i32 @set_page_writeback(%struct.page*) #2

declare dso_local i32 @ClearPageError(%struct.page*) #2

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #2

declare dso_local i32 @f2fs_unlock_op(i32) #2

declare dso_local i32 @f2fs_inplace_write_data(%struct.f2fs_io_info*) #2

declare dso_local i64 @f2fs_encrypted_file(%struct.inode*) #2

declare dso_local i32 @fscrypt_finalize_bounce_page(i32*) #2

declare dso_local i64 @PageWriteback(%struct.page*) #2

declare dso_local i32 @end_page_writeback(%struct.page*) #2

declare dso_local i32 @set_inode_flag(%struct.inode*, i32) #2

declare dso_local i32 @trace_f2fs_do_write_data_page(%struct.page*, i32) #2

declare dso_local i32 @f2fs_get_node_info(i32, i32, %struct.node_info*) #2

declare dso_local i32 @f2fs_outplace_write_data(%struct.dnode_of_data*, %struct.f2fs_io_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
