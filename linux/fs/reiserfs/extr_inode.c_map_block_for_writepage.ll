; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_map_block_for_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c_map_block_for_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.inode = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.buffer_head = type { i32, i64, i32 }
%struct.reiserfs_transaction_handle = type { i64 }
%struct.item_head = type { i32 }
%struct.cpu_key = type { i32 }

@path = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TYPE_ANY = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-6002\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"bytes_copied %d\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"clm-6003\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad item inode %lu\00", align 1
@GET_BLOCK_CREATE = common dso_local global i32 0, align 4
@GET_BLOCK_NO_IMUX = common dso_local global i32 0, align 4
@GET_BLOCK_NO_DANGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64)* @map_block_for_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_block_for_writepage(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.reiserfs_transaction_handle, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.item_head, align 4
  %11 = alloca %struct.item_head*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cpu_key, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @path, i32 0, i32 0), align 4
  %26 = call i32 @INITIALIZE_PATH(i32 %25)
  %27 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %29, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %37 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %8, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %39 = call i32 @buffer_uptodate(%struct.buffer_head* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %296

44:                                               ; preds = %3
  %45 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @kmap(i32 %47)
  br label %49

49:                                               ; preds = %268, %44
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 2
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = call i32 @reiserfs_write_lock(%struct.TYPE_19__* %52)
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* @TYPE_ANY, align 4
  %57 = call i32 @make_cpu_key(%struct.cpu_key* %14, %struct.inode* %54, i32 %55, i32 %56, i32 3)
  br label %58

58:                                               ; preds = %210, %170, %148, %49
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %62 = call i32 @search_for_position_by_key(%struct.TYPE_19__* %61, %struct.cpu_key* %14, %struct.TYPE_18__* @path)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @POSITION_FOUND, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 1, i32* %19, align 4
  br label %229

67:                                               ; preds = %58
  %68 = call %struct.buffer_head* @get_last_bh(%struct.TYPE_18__* @path)
  store %struct.buffer_head* %68, %struct.buffer_head** %12, align 8
  %69 = call %struct.item_head* @tp_item_head(%struct.TYPE_18__* @path)
  store %struct.item_head* %69, %struct.item_head** %11, align 8
  %70 = call i32* @tp_item_body(%struct.TYPE_18__* @path)
  store i32* %70, i32** %13, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @path, i32 0, i32 0), align 4
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %18, align 4
  %73 = load %struct.item_head*, %struct.item_head** %11, align 8
  %74 = call i64 @indirect_item_found(i32 %72, %struct.item_head* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %67
  %77 = load i32, i32* %20, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = call i32 @reiserfs_warning(%struct.TYPE_19__* %82, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @get_block_num(i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 1, i32* %19, align 4
  br label %229

91:                                               ; preds = %85
  %92 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @get_block_num(i32* %93, i32 %94)
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call i32 @set_block_dev_mapped(%struct.buffer_head* %92, i32 %95, %struct.inode* %96)
  br label %228

98:                                               ; preds = %67
  %99 = load %struct.item_head*, %struct.item_head** %11, align 8
  %100 = call i64 @is_direct_le_ih(%struct.item_head* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %217

102:                                              ; preds = %98
  %103 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %104 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @page_address(i32 %105)
  store i8* %106, i8** %23, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* @PAGE_SIZE, align 4
  %110 = sub nsw i32 %109, 1
  %111 = and i32 %108, %110
  %112 = load i8*, i8** %23, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  store i8* %114, i8** %23, align 8
  %115 = load %struct.item_head*, %struct.item_head** %11, align 8
  %116 = call i32 @ih_item_len(%struct.item_head* %115)
  %117 = load i32, i32* %15, align 4
  %118 = sub nsw i32 %116, %117
  store i32 %118, i32* %21, align 4
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = call i32 @get_generation(%struct.TYPE_19__* %121)
  store i32 %122, i32* %9, align 4
  %123 = load %struct.item_head*, %struct.item_head** %11, align 8
  %124 = call i32 @copy_item_head(%struct.item_head* %10, %struct.item_head* %123)
  %125 = load i32, i32* %22, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %155, label %127

127:                                              ; preds = %102
  %128 = load %struct.inode*, %struct.inode** %5, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 2
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %8, %struct.TYPE_19__* %130, i32 %131)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %229

136:                                              ; preds = %127
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %137)
  store i32 1, i32* %22, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 2
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %141, align 8
  %143 = call i64 @fs_changed(i32 %139, %struct.TYPE_19__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %136
  %146 = call i64 @item_moved(%struct.item_head* %10, %struct.TYPE_18__* @path)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.inode*, %struct.inode** %5, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 2
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %153 = call i32 @reiserfs_restore_prepared_buffer(%struct.TYPE_19__* %151, %struct.buffer_head* %152)
  br label %58

154:                                              ; preds = %145, %136
  br label %155

155:                                              ; preds = %154, %102
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 2
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %157, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %160 = call i32 @reiserfs_prepare_for_journal(%struct.TYPE_19__* %158, %struct.buffer_head* %159, i32 1)
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.inode*, %struct.inode** %5, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 2
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = call i64 @fs_changed(i32 %161, %struct.TYPE_19__* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %155
  %168 = call i64 @item_moved(%struct.item_head* %10, %struct.TYPE_18__* @path)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.inode*, %struct.inode** %5, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 2
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %172, align 8
  %174 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %175 = call i32 @reiserfs_restore_prepared_buffer(%struct.TYPE_19__* %173, %struct.buffer_head* %174)
  br label %58

176:                                              ; preds = %167, %155
  %177 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %178 = load %struct.item_head*, %struct.item_head** %11, align 8
  %179 = call i64 @ih_item_body(%struct.buffer_head* %177, %struct.item_head* %178)
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %179, %181
  %183 = load i8*, i8** %23, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i32, i32* %21, align 4
  %188 = call i32 @memcpy(i64 %182, i8* %186, i32 %187)
  %189 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %190 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %8, %struct.buffer_head* %189)
  %191 = load i32, i32* %21, align 4
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %20, align 4
  %194 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %195 = load %struct.inode*, %struct.inode** %5, align 8
  %196 = call i32 @set_block_dev_mapped(%struct.buffer_head* %194, i32 0, %struct.inode* %195)
  %197 = load i32, i32* %20, align 4
  %198 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %176
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %203, %204
  %206 = load %struct.inode*, %struct.inode** %5, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %202
  %211 = call i64 @cpu_key_k_offset(%struct.cpu_key* %14)
  %212 = load i32, i32* %21, align 4
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %211, %213
  %215 = call i32 @set_cpu_key_k_offset(%struct.cpu_key* %14, i64 %214)
  br label %58

216:                                              ; preds = %202, %176
  br label %227

217:                                              ; preds = %98
  %218 = load %struct.inode*, %struct.inode** %5, align 8
  %219 = getelementptr inbounds %struct.inode, %struct.inode* %218, i32 0, i32 2
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %219, align 8
  %221 = load %struct.inode*, %struct.inode** %5, align 8
  %222 = getelementptr inbounds %struct.inode, %struct.inode* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @reiserfs_warning(%struct.TYPE_19__* %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @EIO, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %18, align 4
  br label %229

227:                                              ; preds = %216
  br label %228

228:                                              ; preds = %227, %91
  store i32 0, i32* %18, align 4
  br label %229

229:                                              ; preds = %228, %217, %135, %90, %66
  %230 = call i32 @pathrelse(%struct.TYPE_18__* @path)
  %231 = load i32, i32* %22, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %229
  %234 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %8)
  store i32 %234, i32* %24, align 4
  %235 = load i32, i32* %24, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i32, i32* %24, align 4
  store i32 %238, i32* %18, align 4
  br label %239

239:                                              ; preds = %237, %233
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %239, %229
  %241 = load %struct.inode*, %struct.inode** %5, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 2
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %242, align 8
  %244 = call i32 @reiserfs_write_unlock(%struct.TYPE_19__* %243)
  %245 = load i32, i32* %19, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %271

247:                                              ; preds = %240
  %248 = load %struct.inode*, %struct.inode** %5, align 8
  %249 = load i64, i64* %7, align 8
  %250 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %251 = load i32, i32* @GET_BLOCK_CREATE, align 4
  %252 = load i32, i32* @GET_BLOCK_NO_IMUX, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @GET_BLOCK_NO_DANGLE, align 4
  %255 = or i32 %253, %254
  %256 = call i32 @reiserfs_get_block(%struct.inode* %248, i64 %249, %struct.buffer_head* %250, i32 %255)
  store i32 %256, i32* %18, align 4
  %257 = load i32, i32* %18, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %247
  %260 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %261 = call i64 @buffer_mapped(%struct.buffer_head* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %265 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %263, %259
  store i32 0, i32* %19, align 4
  br label %49

269:                                              ; preds = %263
  br label %270

270:                                              ; preds = %269, %247
  br label %271

271:                                              ; preds = %270, %240
  %272 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %273 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @kunmap(i32 %274)
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %294, label %278

278:                                              ; preds = %271
  %279 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %280 = call i64 @buffer_mapped(%struct.buffer_head* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %294

282:                                              ; preds = %278
  %283 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %284 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %282
  %288 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %289 = call i32 @lock_buffer(%struct.buffer_head* %288)
  %290 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %291 = call i32 @clear_buffer_dirty(%struct.buffer_head* %290)
  %292 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %293 = call i32 @unlock_buffer(%struct.buffer_head* %292)
  br label %294

294:                                              ; preds = %287, %282, %278, %271
  %295 = load i32, i32* %18, align 4
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %294, %41
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @INITIALIZE_PATH(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @kmap(i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_19__*) #1

declare dso_local i32 @make_cpu_key(%struct.cpu_key*, %struct.inode*, i32, i32, i32) #1

declare dso_local i32 @search_for_position_by_key(%struct.TYPE_19__*, %struct.cpu_key*, %struct.TYPE_18__*) #1

declare dso_local %struct.buffer_head* @get_last_bh(%struct.TYPE_18__*) #1

declare dso_local %struct.item_head* @tp_item_head(%struct.TYPE_18__*) #1

declare dso_local i32* @tp_item_body(%struct.TYPE_18__*) #1

declare dso_local i64 @indirect_item_found(i32, %struct.item_head*) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_19__*, i8*, i8*, i32) #1

declare dso_local i32 @get_block_num(i32*, i32) #1

declare dso_local i32 @set_block_dev_mapped(%struct.buffer_head*, i32, %struct.inode*) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @get_generation(%struct.TYPE_19__*) #1

declare dso_local i32 @copy_item_head(%struct.item_head*, %struct.item_head*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i64 @fs_changed(i32, %struct.TYPE_19__*) #1

declare dso_local i64 @item_moved(%struct.item_head*, %struct.TYPE_18__*) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(%struct.TYPE_19__*, %struct.buffer_head*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.TYPE_19__*, %struct.buffer_head*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @ih_item_body(%struct.buffer_head*, %struct.item_head*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.buffer_head*) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.cpu_key*, i64) #1

declare dso_local i64 @cpu_key_k_offset(%struct.cpu_key*) #1

declare dso_local i32 @pathrelse(%struct.TYPE_18__*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @reiserfs_get_block(%struct.inode*, i64, %struct.buffer_head*, i32) #1

declare dso_local i64 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @kunmap(i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
