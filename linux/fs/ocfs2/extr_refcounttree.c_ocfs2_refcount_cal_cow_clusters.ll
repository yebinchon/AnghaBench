; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cal_cow_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cal_cow_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_extent_list = type { i64, %struct.ocfs2_extent_rec*, i64 }
%struct.ocfs2_extent_rec = type { i32, i32, i64 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list, i64 }

@.str = private unnamed_addr constant [54 x i8] c"Inode %lu has non zero tree depth in leaf block %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Inode %lu has empty record in index %d\0A\00", align 1
@OCFS2_EXT_REFCOUNTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_extent_list*, i32, i32, i32, i32*, i32*)* @ocfs2_refcount_cal_cow_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refcount_cal_cow_clusters(%struct.inode* %0, %struct.ocfs2_extent_list* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_extent_list*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_extent_block*, align 8
  %20 = alloca %struct.ocfs2_extent_rec*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.ocfs2_extent_list* %1, %struct.ocfs2_extent_list** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %26 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @le16_to_cpu(i64 %27)
  store i32 %28, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store %struct.ocfs2_extent_block* null, %struct.ocfs2_extent_block** %19, align 8
  store i32 0, i32* %22, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ocfs2_cow_contig_clusters(i32 %31)
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp ugt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %16, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %7
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @INODE_CACHE(%struct.inode* %43)
  %45 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @ocfs2_find_leaf(i32 %44, %struct.ocfs2_extent_list* %45, i32 %46, %struct.buffer_head** %18)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %383

53:                                               ; preds = %42
  %54 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %57, %struct.ocfs2_extent_block** %19, align 8
  %58 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %59 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %58, i32 0, i32 0
  store %struct.ocfs2_extent_list* %59, %struct.ocfs2_extent_list** %9, align 8
  %60 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %61 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %53
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ocfs2_error(i32 %67, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %70, i64 %73)
  store i32 %74, i32* %15, align 4
  br label %383

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75, %7
  %77 = load i32*, i32** %14, align 8
  store i32 0, i32* %77, align 4
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %379, %76
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %81 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @le16_to_cpu(i64 %82)
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %382

85:                                               ; preds = %78
  %86 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %87 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %86, i32 0, i32 1
  %88 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %87, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %88, i64 %90
  store %struct.ocfs2_extent_rec* %91, %struct.ocfs2_extent_rec** %20, align 8
  %92 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %93 = call i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %85
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @mlog_bug_on_msg(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  br label %379

104:                                              ; preds = %85
  %105 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %106 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %110 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le16_to_cpu(i64 %111)
  %113 = add i32 %108, %112
  %114 = load i32, i32* %10, align 4
  %115 = icmp ule i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %379

117:                                              ; preds = %104
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %123 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUG_ON(i32 %129)
  %131 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %132 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le32_to_cpu(i32 %133)
  %135 = load i32*, i32** %13, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %121, %117
  %137 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %138 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @OCFS2_EXT_REFCOUNTED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %136
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %143
  %148 = load i32, i32* %22, align 4
  %149 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %150 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @le32_to_cpu(i32 %151)
  %153 = icmp ne i32 %148, %152
  br i1 %153, label %161, label %154

154:                                              ; preds = %147, %143
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %157 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = icmp ule i32 %155, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %154, %147, %136
  br label %382

162:                                              ; preds = %154
  %163 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %164 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @le16_to_cpu(i64 %165)
  store i32 %166, i32* %24, align 4
  %167 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %168 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = load i32, i32* %24, align 4
  %172 = add i32 %170, %171
  store i32 %172, i32* %22, align 4
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ugt i32 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %162
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load %struct.ocfs2_extent_rec*, %struct.ocfs2_extent_rec** %20, align 8
  %180 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le32_to_cpu(i32 %181)
  %183 = sub i32 %178, %182
  store i32 %183, i32* %24, align 4
  br label %184

184:                                              ; preds = %176, %162
  %185 = load i32*, i32** %14, align 8
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %11, align 4
  store i32 %189, i32* %21, align 4
  br label %200

190:                                              ; preds = %184
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = add i32 %191, %192
  %194 = load i32*, i32** %13, align 8
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %14, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add i32 %195, %197
  %199 = sub i32 %193, %198
  store i32 %199, i32* %21, align 4
  br label %200

200:                                              ; preds = %190, %188
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* %23, align 4
  %203 = icmp ult i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* %23, align 4
  store i32 %205, i32* %21, align 4
  br label %206

206:                                              ; preds = %204, %200
  %207 = load i32, i32* %24, align 4
  %208 = load i32, i32* %23, align 4
  %209 = icmp sle i32 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = load i32, i32* %24, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %212, align 4
  %214 = add i32 %213, %211
  store i32 %214, i32* %212, align 4
  br label %329

215:                                              ; preds = %206
  %216 = load i32*, i32** %14, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %215
  %220 = load i32*, i32** %13, align 8
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %244

224:                                              ; preds = %219, %215
  %225 = load %struct.inode*, %struct.inode** %8, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %21, align 4
  %229 = call i32 @ocfs2_cow_align_length(i32 %227, i32 %228)
  store i32 %229, i32* %21, align 4
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %21, align 4
  %232 = icmp ult i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %224
  %234 = load i32, i32* %24, align 4
  %235 = load i32*, i32** %14, align 8
  %236 = load i32, i32* %235, align 4
  %237 = add i32 %236, %234
  store i32 %237, i32* %235, align 4
  br label %243

238:                                              ; preds = %224
  %239 = load i32, i32* %21, align 4
  %240 = load i32*, i32** %14, align 8
  %241 = load i32, i32* %240, align 4
  %242 = add i32 %241, %239
  store i32 %242, i32* %240, align 4
  br label %243

243:                                              ; preds = %238, %233
  br label %328

244:                                              ; preds = %219
  %245 = load i32*, i32** %13, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %23, align 4
  %248 = add i32 %246, %247
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %11, align 4
  %251 = add i32 %249, %250
  %252 = icmp uge i32 %248, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %244
  %254 = load i32, i32* %23, align 4
  %255 = load i32*, i32** %14, align 8
  store i32 %254, i32* %255, align 4
  br label %327

256:                                              ; preds = %244
  %257 = load i32, i32* %22, align 4
  %258 = load i32, i32* %10, align 4
  %259 = sub i32 %257, %258
  %260 = load i32, i32* %23, align 4
  %261 = icmp ule i32 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %256
  %263 = load i32, i32* %22, align 4
  %264 = load i32, i32* %23, align 4
  %265 = sub i32 %263, %264
  %266 = load i32*, i32** %13, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32, i32* %23, align 4
  %268 = load i32*, i32** %14, align 8
  store i32 %267, i32* %268, align 4
  br label %326

269:                                              ; preds = %256
  %270 = load i32, i32* %22, align 4
  %271 = load i32, i32* %10, align 4
  %272 = sub i32 %270, %271
  %273 = load i32, i32* %21, align 4
  %274 = icmp ule i32 %272, %273
  br i1 %274, label %275, label %289

275:                                              ; preds = %269
  %276 = load %struct.inode*, %struct.inode** %8, align 8
  %277 = getelementptr inbounds %struct.inode, %struct.inode* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32*, i32** %13, align 8
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %10, align 4
  %282 = call i32 @ocfs2_cow_align_start(i32 %278, i32 %280, i32 %281)
  %283 = load i32*, i32** %13, align 8
  store i32 %282, i32* %283, align 4
  %284 = load i32, i32* %22, align 4
  %285 = load i32*, i32** %13, align 8
  %286 = load i32, i32* %285, align 4
  %287 = sub i32 %284, %286
  %288 = load i32*, i32** %14, align 8
  store i32 %287, i32* %288, align 4
  br label %325

289:                                              ; preds = %269
  %290 = load %struct.inode*, %struct.inode** %8, align 8
  %291 = getelementptr inbounds %struct.inode, %struct.inode* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32*, i32** %13, align 8
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %10, align 4
  %296 = call i32 @ocfs2_cow_align_start(i32 %292, i32 %294, i32 %295)
  %297 = load i32*, i32** %13, align 8
  store i32 %296, i32* %297, align 4
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %11, align 4
  %300 = add i32 %298, %299
  %301 = load i32*, i32** %13, align 8
  %302 = load i32, i32* %301, align 4
  %303 = sub i32 %300, %302
  store i32 %303, i32* %21, align 4
  %304 = load %struct.inode*, %struct.inode** %8, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %21, align 4
  %308 = call i32 @ocfs2_cow_align_length(i32 %306, i32 %307)
  store i32 %308, i32* %21, align 4
  %309 = load i32*, i32** %13, align 8
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %21, align 4
  %312 = add i32 %310, %311
  %313 = load i32, i32* %22, align 4
  %314 = icmp ule i32 %312, %313
  br i1 %314, label %315, label %318

315:                                              ; preds = %289
  %316 = load i32, i32* %21, align 4
  %317 = load i32*, i32** %14, align 8
  store i32 %316, i32* %317, align 4
  br label %324

318:                                              ; preds = %289
  %319 = load i32, i32* %22, align 4
  %320 = load i32*, i32** %13, align 8
  %321 = load i32, i32* %320, align 4
  %322 = sub i32 %319, %321
  %323 = load i32*, i32** %14, align 8
  store i32 %322, i32* %323, align 4
  br label %324

324:                                              ; preds = %318, %315
  br label %325

325:                                              ; preds = %324, %275
  br label %326

326:                                              ; preds = %325, %262
  br label %327

327:                                              ; preds = %326, %253
  br label %328

328:                                              ; preds = %327, %243
  br label %329

329:                                              ; preds = %328, %210
  %330 = load i32*, i32** %13, align 8
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %14, align 8
  %333 = load i32, i32* %332, align 4
  %334 = add i32 %331, %333
  %335 = load i32, i32* %10, align 4
  %336 = load i32, i32* %11, align 4
  %337 = add i32 %335, %336
  %338 = icmp uge i32 %334, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %329
  br label %382

340:                                              ; preds = %329
  %341 = load i32, i32* %17, align 4
  %342 = add nsw i32 %341, 1
  %343 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %9, align 8
  %344 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = call i32 @le16_to_cpu(i64 %345)
  %347 = icmp eq i32 %342, %346
  br i1 %347, label %348, label %378

348:                                              ; preds = %340
  %349 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %350 = icmp ne %struct.ocfs2_extent_block* %349, null
  br i1 %350, label %351, label %378

351:                                              ; preds = %348
  %352 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %353 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %352, i32 0, i32 1
  %354 = load i64, i64* %353, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %378

356:                                              ; preds = %351
  %357 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %358 = call i32 @brelse(%struct.buffer_head* %357)
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %359 = load %struct.inode*, %struct.inode** %8, align 8
  %360 = call i32 @INODE_CACHE(%struct.inode* %359)
  %361 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %362 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %361, i32 0, i32 1
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @le64_to_cpu(i64 %363)
  %365 = call i32 @ocfs2_read_extent_block(i32 %360, i32 %364, %struct.buffer_head** %18)
  store i32 %365, i32* %15, align 4
  %366 = load i32, i32* %15, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %356
  %369 = load i32, i32* %15, align 4
  %370 = call i32 @mlog_errno(i32 %369)
  br label %383

371:                                              ; preds = %356
  %372 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %373 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = inttoptr i64 %374 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %375, %struct.ocfs2_extent_block** %19, align 8
  %376 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %19, align 8
  %377 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %376, i32 0, i32 0
  store %struct.ocfs2_extent_list* %377, %struct.ocfs2_extent_list** %9, align 8
  store i32 -1, i32* %17, align 4
  br label %378

378:                                              ; preds = %371, %351, %348, %340
  br label %379

379:                                              ; preds = %378, %116, %95
  %380 = load i32, i32* %17, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %17, align 4
  br label %78

382:                                              ; preds = %339, %161, %78
  br label %383

383:                                              ; preds = %382, %368, %64, %50
  %384 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %385 = call i32 @brelse(%struct.buffer_head* %384)
  %386 = load i32, i32* %15, align 4
  ret i32 %386
}

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ocfs2_cow_contig_clusters(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_find_leaf(i32, %struct.ocfs2_extent_list*, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64) #1

declare dso_local i64 @ocfs2_is_empty_extent(%struct.ocfs2_extent_rec*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_cow_align_length(i32, i32) #1

declare dso_local i32 @ocfs2_cow_align_start(i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
