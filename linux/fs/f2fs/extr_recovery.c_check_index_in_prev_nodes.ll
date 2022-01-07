; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_check_index_in_prev_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_recovery.c_check_index_in_prev_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i64, i64, i32, i64, %struct.page*, i64, i32 }
%struct.page = type { i64 }
%struct.seg_entry = type { i32 }
%struct.f2fs_summary_block = type { %struct.f2fs_summary* }
%struct.f2fs_summary = type { i32, i32 }
%struct.inode = type { i64 }
%struct.curseg_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.f2fs_summary* }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@LOOKUP_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i64, %struct.dnode_of_data*)* @check_index_in_prev_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_index_in_prev_nodes(%struct.f2fs_sb_info* %0, i64 %1, %struct.dnode_of_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dnode_of_data*, align 8
  %8 = alloca %struct.seg_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca %struct.f2fs_summary_block*, align 8
  %12 = alloca %struct.f2fs_summary, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.dnode_of_data, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.inode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.curseg_info*, align 8
  %23 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.dnode_of_data* %2, %struct.dnode_of_data** %7, align 8
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %24, i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call zeroext i16 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info* %27, i64 %28)
  store i16 %29, i16* %10, align 2
  %30 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %31 = bitcast %struct.dnode_of_data* %15 to i8*
  %32 = bitcast %struct.dnode_of_data* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 56, i1 false)
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %33, i32 %34)
  store %struct.seg_entry* %35, %struct.seg_entry** %8, align 8
  %36 = load i16, i16* %10, align 2
  %37 = load %struct.seg_entry*, %struct.seg_entry** %8, align 8
  %38 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @f2fs_test_bit(i16 zeroext %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %296

43:                                               ; preds = %3
  %44 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %44, i32* %21, align 4
  br label %45

45:                                               ; preds = %70, %43
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = load i32, i32* %21, align 4
  %52 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %50, i32 %51)
  store %struct.curseg_info* %52, %struct.curseg_info** %22, align 8
  %53 = load %struct.curseg_info*, %struct.curseg_info** %22, align 8
  %54 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %49
  %59 = load %struct.curseg_info*, %struct.curseg_info** %22, align 8
  %60 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.f2fs_summary*, %struct.f2fs_summary** %62, align 8
  %64 = load i16, i16* %10, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %63, i64 %65
  %67 = bitcast %struct.f2fs_summary* %12 to i8*
  %68 = bitcast %struct.f2fs_summary* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 8, i1 false)
  br label %97

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %21, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %21, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call %struct.page* @f2fs_get_sum_page(%struct.f2fs_sb_info* %74, i32 %75)
  store %struct.page* %76, %struct.page** %13, align 8
  %77 = load %struct.page*, %struct.page** %13, align 8
  %78 = call i64 @IS_ERR(%struct.page* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.page*, %struct.page** %13, align 8
  %82 = call i32 @PTR_ERR(%struct.page* %81)
  store i32 %82, i32* %4, align 4
  br label %296

83:                                               ; preds = %73
  %84 = load %struct.page*, %struct.page** %13, align 8
  %85 = call i64 @page_address(%struct.page* %84)
  %86 = inttoptr i64 %85 to %struct.f2fs_summary_block*
  store %struct.f2fs_summary_block* %86, %struct.f2fs_summary_block** %11, align 8
  %87 = load %struct.f2fs_summary_block*, %struct.f2fs_summary_block** %11, align 8
  %88 = getelementptr inbounds %struct.f2fs_summary_block, %struct.f2fs_summary_block* %87, i32 0, i32 0
  %89 = load %struct.f2fs_summary*, %struct.f2fs_summary** %88, align 8
  %90 = load i16, i16* %10, align 2
  %91 = zext i16 %90 to i64
  %92 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %89, i64 %91
  %93 = bitcast %struct.f2fs_summary* %12 to i8*
  %94 = bitcast %struct.f2fs_summary* %92 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 8, i1 false)
  %95 = load %struct.page*, %struct.page** %13, align 8
  %96 = call i32 @f2fs_put_page(%struct.page* %95, i32 1)
  br label %97

97:                                               ; preds = %83, %58
  %98 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @le32_to_cpu(i32 %99)
  store i64 %100, i64* %17, align 8
  %101 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %102 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %101, i32 0, i32 4
  %103 = load %struct.page*, %struct.page** %102, align 8
  %104 = getelementptr inbounds %struct.page, %struct.page* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %17, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %97
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 0
  store i64 %109, i64* %110, align 8
  %111 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %112 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %117 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @lock_page(i32 %118)
  br label %120

120:                                              ; preds = %115, %108
  %121 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %122 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 6
  store i32 %123, i32* %124, align 8
  %125 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %12, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @le16_to_cpu(i32 %126)
  %128 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 5
  store i64 %127, i64* %128, align 8
  br label %265

129:                                              ; preds = %97
  %130 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %131 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %17, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %12, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @le16_to_cpu(i32 %137)
  %139 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 5
  store i64 %138, i64* %139, align 8
  br label %265

140:                                              ; preds = %129
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %143 = load i64, i64* %17, align 8
  %144 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %142, i64 %143)
  store %struct.page* %144, %struct.page** %14, align 8
  %145 = load %struct.page*, %struct.page** %14, align 8
  %146 = call i64 @IS_ERR(%struct.page* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.page*, %struct.page** %14, align 8
  %150 = call i32 @PTR_ERR(%struct.page* %149)
  store i32 %150, i32* %4, align 4
  br label %296

151:                                              ; preds = %141
  %152 = load %struct.page*, %struct.page** %14, align 8
  %153 = call i32 @ofs_of_node(%struct.page* %152)
  store i32 %153, i32* %19, align 4
  %154 = load %struct.page*, %struct.page** %14, align 8
  %155 = call i64 @ino_of_node(%struct.page* %154)
  store i64 %155, i64* %16, align 8
  %156 = load %struct.page*, %struct.page** %14, align 8
  %157 = call i32 @f2fs_put_page(%struct.page* %156, i32 1)
  %158 = load i64, i64* %16, align 8
  %159 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %160 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %159, i32 0, i32 4
  %161 = load %struct.page*, %struct.page** %160, align 8
  %162 = getelementptr inbounds %struct.page, %struct.page* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %158, %163
  br i1 %164, label %165, label %192

165:                                              ; preds = %151
  %166 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %167 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i64, i64* %16, align 8
  %170 = call %struct.page* @f2fs_iget_retry(i32 %168, i64 %169)
  %171 = bitcast %struct.page* %170 to %struct.inode*
  store %struct.inode* %171, %struct.inode** %18, align 8
  %172 = load %struct.inode*, %struct.inode** %18, align 8
  %173 = bitcast %struct.inode* %172 to %struct.page*
  %174 = call i64 @IS_ERR(%struct.page* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load %struct.inode*, %struct.inode** %18, align 8
  %178 = bitcast %struct.inode* %177 to %struct.page*
  %179 = call i32 @PTR_ERR(%struct.page* %178)
  store i32 %179, i32* %4, align 4
  br label %296

180:                                              ; preds = %165
  %181 = load %struct.inode*, %struct.inode** %18, align 8
  %182 = bitcast %struct.inode* %181 to %struct.page*
  %183 = call i32 @dquot_initialize(%struct.page* %182)
  store i32 %183, i32* %23, align 4
  %184 = load i32, i32* %23, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load %struct.inode*, %struct.inode** %18, align 8
  %188 = bitcast %struct.inode* %187 to %struct.page*
  %189 = call i32 @iput(%struct.page* %188)
  %190 = load i32, i32* %23, align 4
  store i32 %190, i32* %4, align 4
  br label %296

191:                                              ; preds = %180
  br label %197

192:                                              ; preds = %151
  %193 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %194 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %193, i32 0, i32 4
  %195 = load %struct.page*, %struct.page** %194, align 8
  %196 = bitcast %struct.page* %195 to %struct.inode*
  store %struct.inode* %196, %struct.inode** %18, align 8
  br label %197

197:                                              ; preds = %192, %191
  %198 = load i32, i32* %19, align 4
  %199 = load %struct.inode*, %struct.inode** %18, align 8
  %200 = bitcast %struct.inode* %199 to %struct.page*
  %201 = call i64 @f2fs_start_bidx_of_node(i32 %198, %struct.page* %200)
  %202 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %12, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @le16_to_cpu(i32 %203)
  %205 = add nsw i64 %201, %204
  store i64 %205, i64* %20, align 8
  %206 = load i64, i64* %16, align 8
  %207 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %208 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %207, i32 0, i32 4
  %209 = load %struct.page*, %struct.page** %208, align 8
  %210 = getelementptr inbounds %struct.page, %struct.page* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %206, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %197
  %214 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %215 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %220 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @unlock_page(i32 %221)
  br label %223

223:                                              ; preds = %218, %213, %197
  %224 = load %struct.inode*, %struct.inode** %18, align 8
  %225 = bitcast %struct.inode* %224 to %struct.page*
  %226 = call i32 @set_new_dnode(%struct.dnode_of_data* %15, %struct.page* %225, i32* null, i32* null, i32 0)
  %227 = load i64, i64* %20, align 8
  %228 = load i32, i32* @LOOKUP_NODE, align 4
  %229 = call i64 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %15, i64 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %241

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* %6, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %15, i32 1)
  br label %239

239:                                              ; preds = %237, %232
  %240 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %15)
  br label %241

241:                                              ; preds = %239, %231
  %242 = load i64, i64* %16, align 8
  %243 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %244 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %243, i32 0, i32 4
  %245 = load %struct.page*, %struct.page** %244, align 8
  %246 = getelementptr inbounds %struct.page, %struct.page* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %242, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %241
  %250 = load %struct.inode*, %struct.inode** %18, align 8
  %251 = bitcast %struct.inode* %250 to %struct.page*
  %252 = call i32 @iput(%struct.page* %251)
  br label %264

253:                                              ; preds = %241
  %254 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %255 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %253
  %259 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %260 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @lock_page(i32 %261)
  br label %263

263:                                              ; preds = %258, %253
  br label %264

264:                                              ; preds = %263, %249
  store i32 0, i32* %4, align 4
  br label %296

265:                                              ; preds = %135, %120
  %266 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 4
  %267 = load %struct.page*, %struct.page** %266, align 8
  %268 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %15, i32 0, i32 5
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @datablock_addr(%struct.page* %267, i32 %269, i64 %271)
  %273 = load i64, i64* %6, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %265
  %276 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %15, i32 1)
  br label %277

277:                                              ; preds = %275, %265
  %278 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %279 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %278, i32 0, i32 4
  %280 = load %struct.page*, %struct.page** %279, align 8
  %281 = getelementptr inbounds %struct.page, %struct.page* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* %17, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %277
  %286 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %287 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load %struct.dnode_of_data*, %struct.dnode_of_data** %7, align 8
  %292 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @unlock_page(i32 %293)
  br label %295

295:                                              ; preds = %290, %285, %277
  store i32 0, i32* %4, align 4
  br label %296

296:                                              ; preds = %295, %264, %186, %176, %148, %80, %42
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @GET_SEGNO(%struct.f2fs_sb_info*, i64) #1

declare dso_local zeroext i16 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_test_bit(i16 zeroext, i32) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_get_sum_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @lock_page(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i64) #1

declare dso_local i32 @ofs_of_node(%struct.page*) #1

declare dso_local i64 @ino_of_node(%struct.page*) #1

declare dso_local %struct.page* @f2fs_iget_retry(i32, i64) #1

declare dso_local i32 @dquot_initialize(%struct.page*) #1

declare dso_local i32 @iput(%struct.page*) #1

declare dso_local i64 @f2fs_start_bidx_of_node(i32, %struct.page*) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.page*, i32*, i32*, i32) #1

declare dso_local i64 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data*, i32) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i64 @datablock_addr(%struct.page*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
