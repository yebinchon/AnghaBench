; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_truncate_btree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_truncate_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fnode = type { %struct.bplus_header }
%struct.bplus_header = type { i32, i32, i8*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.anode = type { %struct.bplus_header }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i64 }

@BP_internal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"internal btree %08x doesn't end with -1\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hpfs_truncate_btree\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"there is an allocation error in file %08x, sector %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_truncate_btree(%struct.super_block* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fnode*, align 8
  %10 = alloca %struct.anode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.bplus_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %23, i32 %24, %struct.buffer_head** %11)
  store %struct.fnode* %25, %struct.fnode** %9, align 8
  %26 = icmp ne %struct.fnode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %435

28:                                               ; preds = %22
  %29 = load %struct.fnode*, %struct.fnode** %9, align 8
  %30 = getelementptr inbounds %struct.fnode, %struct.fnode* %29, i32 0, i32 0
  store %struct.bplus_header* %30, %struct.bplus_header** %12, align 8
  br label %40

31:                                               ; preds = %4
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %32, i32 %33, %struct.buffer_head** %11)
  store %struct.anode* %34, %struct.anode** %10, align 8
  %35 = icmp ne %struct.anode* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %435

37:                                               ; preds = %31
  %38 = load %struct.anode*, %struct.anode** %10, align 8
  %39 = getelementptr inbounds %struct.anode, %struct.anode* %38, i32 0, i32 0
  store %struct.bplus_header* %39, %struct.bplus_header** %12, align 8
  br label %40

40:                                               ; preds = %37, %28
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %40
  %44 = load %struct.super_block*, %struct.super_block** %5, align 8
  %45 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %46 = call i32 @hpfs_remove_btree(%struct.super_block* %44, %struct.bplus_header* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %51 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %50, i32 0, i32 0
  store i32 8, i32* %51, align 8
  %52 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %53 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = call i8* @cpu_to_le16(i32 8)
  %55 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %56 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @BP_internal, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %60 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %64 = call i32 @mark_buffer_dirty(%struct.buffer_head* %63)
  br label %69

65:                                               ; preds = %43
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @hpfs_free_sectors(%struct.super_block* %66, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %65, %49
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = call i32 @brelse(%struct.buffer_head* %70)
  br label %435

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %208, %72
  %74 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %75 = call i64 @bp_internal(%struct.bplus_header* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %211

77:                                               ; preds = %73
  %78 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %79 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %82 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %80, %83
  store i32 %84, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %106, %77
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %88 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %93 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = load i32, i32* %8, align 4
  %103 = icmp uge i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %115

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %85

109:                                              ; preds = %85
  %110 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  %112 = load %struct.super_block*, %struct.super_block** %5, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %435

115:                                              ; preds = %104
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %137, %115
  %119 = load i32, i32* %15, align 4
  %120 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %121 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %118
  %125 = load %struct.super_block*, %struct.super_block** %5, align 8
  %126 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %127 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @le32_to_cpu(i32 %134)
  %136 = call i32 @hpfs_ea_remove(%struct.super_block* %125, i32 %135, i32 1, i32 0)
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %118

140:                                              ; preds = %118
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 1
  %143 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %144 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %147 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  %150 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %151 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %153 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 8, %154
  %156 = add nsw i32 8, %155
  %157 = call i8* @cpu_to_le16(i32 %156)
  %158 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %159 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %161 = call i32 @mark_buffer_dirty(%struct.buffer_head* %160)
  %162 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %163 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @cpu_to_le32(i32 %171)
  %173 = icmp eq i32 %170, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %140
  %175 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %176 = call i32 @brelse(%struct.buffer_head* %175)
  br label %435

177:                                              ; preds = %140
  %178 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %179 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @le32_to_cpu(i32 %186)
  store i32 %187, i32* %13, align 4
  %188 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %189 = call i32 @brelse(%struct.buffer_head* %188)
  %190 = load %struct.super_block*, %struct.super_block** %5, align 8
  %191 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %190)
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %177
  %196 = load %struct.super_block*, %struct.super_block** %5, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call i64 @hpfs_stop_cycles(%struct.super_block* %196, i32 %197, i32* %17, i32* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  br label %435

201:                                              ; preds = %195
  br label %202

202:                                              ; preds = %201, %177
  %203 = load %struct.super_block*, %struct.super_block** %5, align 8
  %204 = load i32, i32* %13, align 4
  %205 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %203, i32 %204, %struct.buffer_head** %11)
  store %struct.anode* %205, %struct.anode** %10, align 8
  %206 = icmp ne %struct.anode* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  br label %435

208:                                              ; preds = %202
  %209 = load %struct.anode*, %struct.anode** %10, align 8
  %210 = getelementptr inbounds %struct.anode, %struct.anode* %209, i32 0, i32 0
  store %struct.bplus_header* %210, %struct.bplus_header** %12, align 8
  br label %73

211:                                              ; preds = %73
  %212 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %213 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %216 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %214, %217
  store i32 %218, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %219

219:                                              ; preds = %251, %211
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %222 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %220, %223
  br i1 %224, label %225, label %254

225:                                              ; preds = %219
  %226 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %227 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @le32_to_cpu(i32 %234)
  %236 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %237 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le32_to_cpu(i32 %244)
  %246 = add i32 %235, %245
  %247 = load i32, i32* %8, align 4
  %248 = icmp uge i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %225
  br label %257

250:                                              ; preds = %225
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %14, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %14, align 4
  br label %219

254:                                              ; preds = %219
  %255 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %256 = call i32 @brelse(%struct.buffer_head* %255)
  br label %435

257:                                              ; preds = %249
  %258 = load i32, i32* %8, align 4
  %259 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %260 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @le32_to_cpu(i32 %267)
  %269 = icmp ule i32 %258, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %257
  %271 = load %struct.super_block*, %struct.super_block** %5, align 8
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %271, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %272, i32 %273)
  %275 = load i32, i32* %14, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %270
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %277, %270
  br label %376

281:                                              ; preds = %257
  %282 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %283 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %284, align 8
  %286 = load i32, i32* %14, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @le32_to_cpu(i32 %290)
  %292 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %293 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %294, align 8
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @le32_to_cpu(i32 %300)
  %302 = add i32 %291, %301
  %303 = load i32, i32* %8, align 4
  %304 = icmp ugt i32 %302, %303
  br i1 %304, label %305, label %375

305:                                              ; preds = %281
  %306 = load %struct.super_block*, %struct.super_block** %5, align 8
  %307 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %308 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %309, align 8
  %311 = load i32, i32* %14, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @le32_to_cpu(i32 %315)
  %317 = load i32, i32* %8, align 4
  %318 = add i32 %316, %317
  %319 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %320 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load %struct.TYPE_6__*, %struct.TYPE_6__** %321, align 8
  %323 = load i32, i32* %14, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @le32_to_cpu(i32 %327)
  %329 = sub i32 %318, %328
  %330 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %331 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %332, align 8
  %334 = load i32, i32* %14, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @le32_to_cpu(i32 %338)
  %340 = load i32, i32* %8, align 4
  %341 = sub i32 %339, %340
  %342 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %343 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_6__*, %struct.TYPE_6__** %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @le32_to_cpu(i32 %350)
  %352 = add i32 %341, %351
  %353 = call i32 @hpfs_free_sectors(%struct.super_block* %306, i32 %329, i32 %352)
  %354 = load i32, i32* %8, align 4
  %355 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %356 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %357, align 8
  %359 = load i32, i32* %14, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @le32_to_cpu(i32 %363)
  %365 = sub i32 %354, %364
  %366 = call i32 @cpu_to_le32(i32 %365)
  %367 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %368 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %369, align 8
  %371 = load i32, i32* %14, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 0
  store i32 %366, i32* %374, align 4
  br label %375

375:                                              ; preds = %305, %281
  br label %376

376:                                              ; preds = %375, %280
  %377 = load i32, i32* %14, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %15, align 4
  br label %379

379:                                              ; preds = %408, %376
  %380 = load i32, i32* %15, align 4
  %381 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %382 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %380, %383
  br i1 %384, label %385, label %411

385:                                              ; preds = %379
  %386 = load %struct.super_block*, %struct.super_block** %5, align 8
  %387 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %388 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_6__*, %struct.TYPE_6__** %389, align 8
  %391 = load i32, i32* %15, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @le32_to_cpu(i32 %395)
  %397 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %398 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %397, i32 0, i32 3
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_6__*, %struct.TYPE_6__** %399, align 8
  %401 = load i32, i32* %15, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @le32_to_cpu(i32 %405)
  %407 = call i32 @hpfs_free_sectors(%struct.super_block* %386, i32 %396, i32 %406)
  br label %408

408:                                              ; preds = %385
  %409 = load i32, i32* %15, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %15, align 4
  br label %379

411:                                              ; preds = %379
  %412 = load i32, i32* %14, align 4
  %413 = add nsw i32 %412, 1
  %414 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %415 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %414, i32 0, i32 1
  store i32 %413, i32* %415, align 4
  %416 = load i32, i32* %16, align 4
  %417 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %418 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = sub nsw i32 %416, %419
  %421 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %422 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 8
  %423 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %424 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = mul nsw i32 12, %425
  %427 = add nsw i32 8, %426
  %428 = call i8* @cpu_to_le16(i32 %427)
  %429 = load %struct.bplus_header*, %struct.bplus_header** %12, align 8
  %430 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %429, i32 0, i32 2
  store i8* %428, i8** %430, align 8
  %431 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %432 = call i32 @mark_buffer_dirty(%struct.buffer_head* %431)
  %433 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %434 = call i32 @brelse(%struct.buffer_head* %433)
  br label %435

435:                                              ; preds = %411, %254, %207, %200, %174, %109, %69, %36, %27
  ret void
}

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, %struct.bplus_header*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @bp_internal(%struct.bplus_header*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @hpfs_ea_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i32, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
