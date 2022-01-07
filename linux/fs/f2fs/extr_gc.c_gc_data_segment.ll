; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_gc_data_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_gc_data_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.f2fs_summary = type { i32, i32 }
%struct.gc_inode_list = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.node_info = type { i32 }
%struct.f2fs_inode_info = type { i32* }

@BG_GC = common dso_local global i32 0, align 4
@META_NAT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@REQ_RAHEAD = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@FG_GC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.f2fs_summary*, %struct.gc_inode_list*, i32, i32)* @gc_data_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_data_segment(%struct.f2fs_sb_info* %0, %struct.f2fs_summary* %1, %struct.gc_inode_list* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_sb_info*, align 8
  %8 = alloca %struct.f2fs_summary*, align 8
  %9 = alloca %struct.gc_inode_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca %struct.f2fs_summary*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca %struct.inode*, align 8
  %20 = alloca %struct.node_info, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.f2fs_inode_info*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %7, align 8
  store %struct.f2fs_summary* %1, %struct.f2fs_summary** %8, align 8
  store %struct.gc_inode_list* %2, %struct.gc_inode_list** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %29 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %30 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %29, i32 0, i32 2
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i64 @START_BLOCK(%struct.f2fs_sb_info* %32, i32 %33)
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %325, %5
  %36 = load %struct.f2fs_summary*, %struct.f2fs_summary** %8, align 8
  store %struct.f2fs_summary* %36, %struct.f2fs_summary** %13, align 8
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %316, %35
  %38 = load i32, i32* %15, align 4
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %40 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %321

43:                                               ; preds = %37
  %44 = load %struct.f2fs_summary*, %struct.f2fs_summary** %13, align 8
  %45 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %24, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @BG_GC, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %53 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %52, i32 0, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %6, align 4
  br label %328

57:                                               ; preds = %51, %43
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i64 @check_valid_map(%struct.f2fs_sb_info* %58, i32 %59, i32 %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %316

64:                                               ; preds = %57
  %65 = load i32, i32* %16, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %69 = load i32, i32* %24, align 4
  %70 = call i32 @NAT_BLOCK_OFFSET(i32 %69)
  %71 = load i32, i32* @META_NAT, align 4
  %72 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %68, i32 %70, i32 1, i32 %71, i32 1)
  br label %316

73:                                               ; preds = %64
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %78 = load i32, i32* %24, align 4
  %79 = call i32 @f2fs_ra_node_page(%struct.f2fs_sb_info* %77, i32 %78)
  br label %316

80:                                               ; preds = %73
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %82 = load %struct.f2fs_summary*, %struct.f2fs_summary** %13, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = call i32 @is_alive(%struct.f2fs_sb_info* %81, %struct.f2fs_summary* %82, %struct.node_info* %20, i64 %86, i32* %22)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %316

90:                                               ; preds = %80
  %91 = load i32, i32* %16, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %95 = getelementptr inbounds %struct.node_info, %struct.node_info* %20, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @f2fs_ra_node_page(%struct.f2fs_sb_info* %94, i32 %96)
  br label %316

98:                                               ; preds = %90
  %99 = load %struct.f2fs_summary*, %struct.f2fs_summary** %13, align 8
  %100 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 3
  br i1 %104, label %105, label %203

105:                                              ; preds = %98
  %106 = load %struct.super_block*, %struct.super_block** %12, align 8
  %107 = getelementptr inbounds %struct.node_info, %struct.node_info* %20, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call %struct.page* @f2fs_iget(%struct.super_block* %106, i32 %108)
  %110 = bitcast %struct.page* %109 to %struct.inode*
  store %struct.inode* %110, %struct.inode** %19, align 8
  %111 = load %struct.inode*, %struct.inode** %19, align 8
  %112 = bitcast %struct.inode* %111 to %struct.page*
  %113 = call i64 @IS_ERR(%struct.page* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %105
  %116 = load %struct.inode*, %struct.inode** %19, align 8
  %117 = bitcast %struct.inode* %116 to %struct.page*
  %118 = call i64 @is_bad_inode(%struct.page* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115, %105
  br label %316

121:                                              ; preds = %115
  %122 = load %struct.inode*, %struct.inode** %19, align 8
  %123 = bitcast %struct.inode* %122 to %struct.page*
  %124 = call %struct.f2fs_inode_info* @F2FS_I(%struct.page* %123)
  %125 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @WRITE, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = call i32 @down_write_trylock(i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %121
  %132 = load %struct.inode*, %struct.inode** %19, align 8
  %133 = bitcast %struct.inode* %132 to %struct.page*
  %134 = call i32 @iput(%struct.page* %133)
  %135 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %136 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %316

139:                                              ; preds = %121
  %140 = load i32, i32* %22, align 4
  %141 = load %struct.inode*, %struct.inode** %19, align 8
  %142 = bitcast %struct.inode* %141 to %struct.page*
  %143 = call i64 @f2fs_start_bidx_of_node(i32 %140, %struct.page* %142)
  %144 = load i32, i32* %21, align 4
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  store i64 %146, i64* %23, align 8
  %147 = load %struct.inode*, %struct.inode** %19, align 8
  %148 = bitcast %struct.inode* %147 to %struct.page*
  %149 = call i64 @f2fs_post_read_required(%struct.page* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %139
  %152 = load %struct.inode*, %struct.inode** %19, align 8
  %153 = bitcast %struct.inode* %152 to %struct.page*
  %154 = load i64, i64* %23, align 8
  %155 = call i32 @ra_data_block(%struct.page* %153, i64 %154)
  store i32 %155, i32* %25, align 4
  %156 = load %struct.inode*, %struct.inode** %19, align 8
  %157 = bitcast %struct.inode* %156 to %struct.page*
  %158 = call %struct.f2fs_inode_info* @F2FS_I(%struct.page* %157)
  %159 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @WRITE, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = call i32 @up_write(i32* %162)
  %164 = load i32, i32* %25, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %151
  %167 = load %struct.inode*, %struct.inode** %19, align 8
  %168 = bitcast %struct.inode* %167 to %struct.page*
  %169 = call i32 @iput(%struct.page* %168)
  br label %316

170:                                              ; preds = %151
  %171 = load %struct.gc_inode_list*, %struct.gc_inode_list** %9, align 8
  %172 = load %struct.inode*, %struct.inode** %19, align 8
  %173 = bitcast %struct.inode* %172 to %struct.page*
  %174 = call i32 @add_gc_inode(%struct.gc_inode_list* %171, %struct.page* %173)
  br label %316

175:                                              ; preds = %139
  %176 = load %struct.inode*, %struct.inode** %19, align 8
  %177 = bitcast %struct.inode* %176 to %struct.page*
  %178 = load i64, i64* %23, align 8
  %179 = load i32, i32* @REQ_RAHEAD, align 4
  %180 = call %struct.page* @f2fs_get_read_data_page(%struct.page* %177, i64 %178, i32 %179, i32 1)
  store %struct.page* %180, %struct.page** %18, align 8
  %181 = load %struct.inode*, %struct.inode** %19, align 8
  %182 = bitcast %struct.inode* %181 to %struct.page*
  %183 = call %struct.f2fs_inode_info* @F2FS_I(%struct.page* %182)
  %184 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @WRITE, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = call i32 @up_write(i32* %187)
  %189 = load %struct.page*, %struct.page** %18, align 8
  %190 = call i64 @IS_ERR(%struct.page* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %175
  %193 = load %struct.inode*, %struct.inode** %19, align 8
  %194 = bitcast %struct.inode* %193 to %struct.page*
  %195 = call i32 @iput(%struct.page* %194)
  br label %316

196:                                              ; preds = %175
  %197 = load %struct.page*, %struct.page** %18, align 8
  %198 = call i32 @f2fs_put_page(%struct.page* %197, i32 0)
  %199 = load %struct.gc_inode_list*, %struct.gc_inode_list** %9, align 8
  %200 = load %struct.inode*, %struct.inode** %19, align 8
  %201 = bitcast %struct.inode* %200 to %struct.page*
  %202 = call i32 @add_gc_inode(%struct.gc_inode_list* %199, %struct.page* %201)
  br label %316

203:                                              ; preds = %98
  %204 = load %struct.gc_inode_list*, %struct.gc_inode_list** %9, align 8
  %205 = getelementptr inbounds %struct.node_info, %struct.node_info* %20, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call %struct.page* @find_gc_inode(%struct.gc_inode_list* %204, i32 %206)
  %208 = bitcast %struct.page* %207 to %struct.inode*
  store %struct.inode* %208, %struct.inode** %19, align 8
  %209 = load %struct.inode*, %struct.inode** %19, align 8
  %210 = icmp ne %struct.inode* %209, null
  br i1 %210, label %211, label %315

211:                                              ; preds = %203
  %212 = load %struct.inode*, %struct.inode** %19, align 8
  %213 = bitcast %struct.inode* %212 to %struct.page*
  %214 = call %struct.f2fs_inode_info* @F2FS_I(%struct.page* %213)
  store %struct.f2fs_inode_info* %214, %struct.f2fs_inode_info** %26, align 8
  store i32 0, i32* %27, align 4
  %215 = load %struct.inode*, %struct.inode** %19, align 8
  %216 = getelementptr inbounds %struct.inode, %struct.inode* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @S_ISREG(i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %252

220:                                              ; preds = %211
  %221 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %26, align 8
  %222 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* @READ, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  %226 = call i32 @down_write_trylock(i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %220
  br label %316

229:                                              ; preds = %220
  %230 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %26, align 8
  %231 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i64, i64* @WRITE, align 8
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  %235 = call i32 @down_write_trylock(i32* %234)
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %229
  %238 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %239 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  %242 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %26, align 8
  %243 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @READ, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  %247 = call i32 @up_write(i32* %246)
  br label %316

248:                                              ; preds = %229
  store i32 1, i32* %27, align 4
  %249 = load %struct.inode*, %struct.inode** %19, align 8
  %250 = bitcast %struct.inode* %249 to %struct.page*
  %251 = call i32 @inode_dio_wait(%struct.page* %250)
  br label %252

252:                                              ; preds = %248, %211
  %253 = load i32, i32* %22, align 4
  %254 = load %struct.inode*, %struct.inode** %19, align 8
  %255 = bitcast %struct.inode* %254 to %struct.page*
  %256 = call i64 @f2fs_start_bidx_of_node(i32 %253, %struct.page* %255)
  %257 = load i32, i32* %21, align 4
  %258 = zext i32 %257 to i64
  %259 = add nsw i64 %256, %258
  store i64 %259, i64* %23, align 8
  %260 = load %struct.inode*, %struct.inode** %19, align 8
  %261 = bitcast %struct.inode* %260 to %struct.page*
  %262 = call i64 @f2fs_post_read_required(%struct.page* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %252
  %265 = load %struct.inode*, %struct.inode** %19, align 8
  %266 = bitcast %struct.inode* %265 to %struct.page*
  %267 = load i64, i64* %23, align 8
  %268 = load i32, i32* %11, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %15, align 4
  %271 = call i32 @move_data_block(%struct.page* %266, i64 %267, i32 %268, i32 %269, i32 %270)
  store i32 %271, i32* %28, align 4
  br label %280

272:                                              ; preds = %252
  %273 = load %struct.inode*, %struct.inode** %19, align 8
  %274 = bitcast %struct.inode* %273 to %struct.page*
  %275 = load i64, i64* %23, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %10, align 4
  %278 = load i32, i32* %15, align 4
  %279 = call i32 @move_data_page(%struct.page* %274, i64 %275, i32 %276, i32 %277, i32 %278)
  store i32 %279, i32* %28, align 4
  br label %280

280:                                              ; preds = %272, %264
  %281 = load i32, i32* %28, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %295, label %283

283:                                              ; preds = %280
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @FG_GC, align 4
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %292, label %287

287:                                              ; preds = %283
  %288 = load %struct.inode*, %struct.inode** %19, align 8
  %289 = bitcast %struct.inode* %288 to %struct.page*
  %290 = call i64 @f2fs_post_read_required(%struct.page* %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %287, %283
  %293 = load i32, i32* %17, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %17, align 4
  br label %295

295:                                              ; preds = %292, %287, %280
  %296 = load i32, i32* %27, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %295
  %299 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %26, align 8
  %300 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %299, i32 0, i32 0
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* @WRITE, align 8
  %303 = getelementptr inbounds i32, i32* %301, i64 %302
  %304 = call i32 @up_write(i32* %303)
  %305 = load %struct.f2fs_inode_info*, %struct.f2fs_inode_info** %26, align 8
  %306 = getelementptr inbounds %struct.f2fs_inode_info, %struct.f2fs_inode_info* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* @READ, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  %310 = call i32 @up_write(i32* %309)
  br label %311

311:                                              ; preds = %298, %295
  %312 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @stat_inc_data_blk_count(%struct.f2fs_sb_info* %312, i32 1, i32 %313)
  br label %315

315:                                              ; preds = %311, %203
  br label %316

316:                                              ; preds = %315, %237, %228, %196, %192, %170, %166, %131, %120, %93, %89, %76, %67, %63
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %15, align 4
  %319 = load %struct.f2fs_summary*, %struct.f2fs_summary** %13, align 8
  %320 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %319, i32 1
  store %struct.f2fs_summary* %320, %struct.f2fs_summary** %13, align 8
  br label %37

321:                                              ; preds = %37
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %16, align 4
  %324 = icmp slt i32 %323, 5
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %35

326:                                              ; preds = %321
  %327 = load i32, i32* %17, align 4
  store i32 %327, i32* %6, align 4
  br label %328

328:                                              ; preds = %326, %55
  %329 = load i32, i32* %6, align 4
  ret i32 %329
}

declare dso_local i64 @START_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @has_not_enough_free_secs(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @check_valid_map(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local i32 @f2fs_ra_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @is_alive(%struct.f2fs_sb_info*, %struct.f2fs_summary*, %struct.node_info*, i64, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.page* @f2fs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @is_bad_inode(%struct.page*) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local %struct.f2fs_inode_info* @F2FS_I(%struct.page*) #1

declare dso_local i32 @iput(%struct.page*) #1

declare dso_local i64 @f2fs_start_bidx_of_node(i32, %struct.page*) #1

declare dso_local i64 @f2fs_post_read_required(%struct.page*) #1

declare dso_local i32 @ra_data_block(%struct.page*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @add_gc_inode(%struct.gc_inode_list*, %struct.page*) #1

declare dso_local %struct.page* @f2fs_get_read_data_page(%struct.page*, i64, i32, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @find_gc_inode(%struct.gc_inode_list*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @inode_dio_wait(%struct.page*) #1

declare dso_local i32 @move_data_block(%struct.page*, i64, i32, i32, i32) #1

declare dso_local i32 @move_data_page(%struct.page*, i64, i32, i32, i32) #1

declare dso_local i32 @stat_inc_data_blk_count(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
