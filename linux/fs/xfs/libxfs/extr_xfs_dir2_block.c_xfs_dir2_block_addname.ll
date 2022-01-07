; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_addname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_block_addname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_36__* }
%struct.TYPE_36__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 (i32)*, i32* (%struct.TYPE_39__*)*, i32 (%struct.TYPE_39__*, i32)* }
%struct.TYPE_39__ = type { i32, i32, i32 }
%struct.TYPE_37__ = type { i64, i64 }
%struct.xfs_buf = type { i32* }
%struct.TYPE_40__ = type { i64, i64 }
%struct.TYPE_38__ = type { i32 }

@XFS_DA_OP_JUSTCHECK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_block_addname(%struct.TYPE_41__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_41__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_37__*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.TYPE_40__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  store %struct.TYPE_41__* %0, %struct.TYPE_41__** %3, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %22, align 4
  %28 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %29 = call i32 @trace_xfs_dir2_block_addname(%struct.TYPE_41__* %28)
  %30 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %30, i32 0, i32 9
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %31, align 8
  store %struct.TYPE_36__* %32, %struct.TYPE_36__** %10, align 8
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 8
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %26, align 8
  %36 = load i32*, i32** %26, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %38 = call i32 @xfs_dir3_block_read(i32* %36, %struct.TYPE_36__* %37, %struct.xfs_buf** %6)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %2, align 4
  br label %520

43:                                               ; preds = %1
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 %51)
  store i32 %52, i32* %19, align 4
  %53 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %4, align 8
  %56 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = call %struct.TYPE_40__* @xfs_dir2_block_tail_p(i32 %58, i32* %59)
  store %struct.TYPE_40__* %60, %struct.TYPE_40__** %7, align 8
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %62 = call %struct.TYPE_37__* @xfs_dir2_block_leaf_p(%struct.TYPE_40__* %61)
  store %struct.TYPE_37__* %62, %struct.TYPE_37__** %5, align 8
  %63 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i32 @xfs_dir2_block_need_space(%struct.TYPE_36__* %63, i32* %64, %struct.TYPE_40__* %65, %struct.TYPE_37__* %66, i32** %25, %struct.TYPE_38__** %11, %struct.TYPE_38__** %13, i32* %8, i32 %67)
  %69 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @XFS_DA_OP_JUSTCHECK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %43
  %76 = load i32*, i32** %26, align 8
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %78 = call i32 @xfs_trans_brelse(i32* %76, %struct.xfs_buf* %77)
  %79 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %80 = icmp ne %struct.TYPE_38__* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOSPC, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %520

84:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %520

85:                                               ; preds = %43
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %87 = icmp ne %struct.TYPE_38__* %86, null
  br i1 %87, label %107, label %88

88:                                               ; preds = %85
  %89 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* @ENOSPC, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %520

96:                                               ; preds = %88
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %98 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %99 = call i32 @xfs_dir2_block_to_leaf(%struct.TYPE_41__* %97, %struct.xfs_buf* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %2, align 4
  br label %520

104:                                              ; preds = %96
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %106 = call i32 @xfs_dir2_leaf_addname(%struct.TYPE_41__* %105)
  store i32 %106, i32* %2, align 4
  br label %520

107:                                              ; preds = %85
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %112 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %115 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %116 = call i32 @xfs_dir2_block_compact(%struct.TYPE_41__* %111, %struct.xfs_buf* %112, i32* %113, %struct.TYPE_40__* %114, %struct.TYPE_37__* %115, i32* %23, i32* %17, i32* %18)
  %117 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %118 = call %struct.TYPE_37__* @xfs_dir2_block_leaf_p(%struct.TYPE_40__* %117)
  store %struct.TYPE_37__* %118, %struct.TYPE_37__** %5, align 8
  br label %130

119:                                              ; preds = %107
  %120 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @be32_to_cpu(i64 %127)
  store i32 %128, i32* %18, align 4
  store i32 -1, i32* %17, align 4
  br label %129

129:                                              ; preds = %124, %119
  br label %130

130:                                              ; preds = %129, %110
  store i32 0, i32* %20, align 4
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @be32_to_cpu(i64 %133)
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %169, %130
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %170

140:                                              ; preds = %136
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %141, %142
  %144 = ashr i32 %143, 1
  store i32 %144, i32* %22, align 4
  %145 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %146 = load i32, i32* %22, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @be32_to_cpu(i64 %150)
  store i32 %151, i32* %14, align 4
  %152 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %140
  br label %170

157:                                              ; preds = %140
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %157
  %164 = load i32, i32* %22, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %20, align 4
  br label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %22, align 4
  %168 = sub nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %136

170:                                              ; preds = %156, %136
  br label %171

171:                                              ; preds = %188, %170
  %172 = load i32, i32* %22, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %171
  %175 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %176 = load i32, i32* %22, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @be32_to_cpu(i64 %180)
  %182 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp sge i32 %181, %184
  br label %186

186:                                              ; preds = %174, %171
  %187 = phi i1 [ false, %171 ], [ %185, %174 ]
  br i1 %187, label %188, label %191

188:                                              ; preds = %186
  %189 = load i32, i32* %22, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %22, align 4
  br label %171

191:                                              ; preds = %186
  %192 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %248, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %198 = bitcast %struct.TYPE_38__* %197 to i8*
  %199 = load i32*, i32** %4, align 8
  %200 = bitcast i32* %199 to i8*
  %201 = ptrtoint i8* %198 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @be16_to_cpu(i32 %206)
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %203, %208
  %210 = sub i64 %209, 16
  store i64 %210, i64* %27, align 8
  %211 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %212 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %214 = load i64, i64* %27, align 8
  %215 = call i32 @xfs_dir2_data_use_free(%struct.TYPE_41__* %211, %struct.xfs_buf* %212, %struct.TYPE_38__* %213, i64 %214, i64 16, i32* %23, i32* %24)
  store i32 %215, i32* %12, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %196
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %2, align 4
  br label %520

220:                                              ; preds = %196
  %221 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %221, i32 0, i32 1
  %223 = call i32 @be32_add_cpu(i64* %222, i32 1)
  %224 = load i32, i32* %24, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %220
  %227 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %228 = load i32*, i32** %4, align 8
  %229 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_36__* %227, i32* %228, i32* %23)
  store i32 0, i32* %24, align 4
  br label %230

230:                                              ; preds = %226, %220
  %231 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %231, i32 -1
  store %struct.TYPE_37__* %232, %struct.TYPE_37__** %5, align 8
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %22, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %230
  %238 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %239, i64 1
  %241 = load i32, i32* %22, align 4
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 16
  %244 = trunc i64 %243 to i32
  %245 = call i32 @memmove(%struct.TYPE_37__* %238, %struct.TYPE_37__* %240, i32 %244)
  br label %246

246:                                              ; preds = %237, %230
  store i32 0, i32* %18, align 4
  %247 = load i32, i32* %22, align 4
  store i32 %247, i32* %17, align 4
  br label %398

248:                                              ; preds = %191
  %249 = load i32, i32* %22, align 4
  store i32 %249, i32* %21, align 4
  br label %250

250:                                              ; preds = %266, %248
  %251 = load i32, i32* %21, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %250
  %254 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %255 = load i32, i32* %21, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %261 = call i64 @cpu_to_be32(i32 %260)
  %262 = icmp ne i64 %259, %261
  br label %263

263:                                              ; preds = %253, %250
  %264 = phi i1 [ false, %250 ], [ %262, %253 ]
  br i1 %264, label %265, label %269

265:                                              ; preds = %263
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %21, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %21, align 4
  br label %250

269:                                              ; preds = %263
  %270 = load i32, i32* %22, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  br label %272

272:                                              ; preds = %305, %269
  %273 = load i32, i32* %16, align 4
  %274 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @be32_to_cpu(i64 %276)
  %278 = icmp slt i32 %273, %277
  br i1 %278, label %279, label %302

279:                                              ; preds = %272
  %280 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %281 = load i32, i32* %16, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %280, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %287 = call i64 @cpu_to_be32(i32 %286)
  %288 = icmp ne i64 %285, %287
  br i1 %288, label %289, label %302

289:                                              ; preds = %279
  %290 = load i32, i32* %21, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %300, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %22, align 4
  %294 = load i32, i32* %21, align 4
  %295 = sub nsw i32 %293, %294
  %296 = load i32, i32* %16, align 4
  %297 = load i32, i32* %22, align 4
  %298 = sub nsw i32 %296, %297
  %299 = icmp sgt i32 %295, %298
  br label %300

300:                                              ; preds = %292, %289
  %301 = phi i1 [ true, %289 ], [ %299, %292 ]
  br label %302

302:                                              ; preds = %300, %279, %272
  %303 = phi i1 [ false, %279 ], [ false, %272 ], [ %301, %300 ]
  br i1 %303, label %304, label %308

304:                                              ; preds = %302
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %16, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %16, align 4
  br label %272

308:                                              ; preds = %302
  %309 = load i32, i32* %21, align 4
  %310 = icmp sge i32 %309, 0
  br i1 %310, label %311, label %355

311:                                              ; preds = %308
  %312 = load i32, i32* %16, align 4
  %313 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @be32_to_cpu(i64 %315)
  %317 = icmp eq i32 %312, %316
  br i1 %317, label %326, label %318

318:                                              ; preds = %311
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %21, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load i32, i32* %16, align 4
  %323 = load i32, i32* %22, align 4
  %324 = sub nsw i32 %322, %323
  %325 = icmp sle i32 %321, %324
  br i1 %325, label %326, label %355

326:                                              ; preds = %318, %311
  %327 = load i32, i32* %22, align 4
  %328 = load i32, i32* %21, align 4
  %329 = sub nsw i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %348

331:                                              ; preds = %326
  %332 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %333 = load i32, i32* %21, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %332, i64 %334
  %336 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %337 = load i32, i32* %21, align 4
  %338 = add nsw i32 %337, 1
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %336, i64 %339
  %341 = load i32, i32* %22, align 4
  %342 = load i32, i32* %21, align 4
  %343 = sub nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = mul i64 %344, 16
  %346 = trunc i64 %345 to i32
  %347 = call i32 @memmove(%struct.TYPE_37__* %335, %struct.TYPE_37__* %340, i32 %346)
  br label %348

348:                                              ; preds = %331, %326
  %349 = load i32, i32* %21, align 4
  %350 = load i32, i32* %18, align 4
  %351 = call i32 @min(i32 %349, i32 %350)
  store i32 %351, i32* %18, align 4
  %352 = load i32, i32* %22, align 4
  %353 = load i32, i32* %17, align 4
  %354 = call i32 @max(i32 %352, i32 %353)
  store i32 %354, i32* %17, align 4
  br label %394

355:                                              ; preds = %318, %308
  %356 = load i32, i32* %16, align 4
  %357 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = call i32 @be32_to_cpu(i64 %359)
  %361 = icmp slt i32 %356, %360
  %362 = zext i1 %361 to i32
  %363 = call i32 @ASSERT(i32 %362)
  %364 = load i32, i32* %22, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %22, align 4
  %366 = load i32, i32* %16, align 4
  %367 = load i32, i32* %22, align 4
  %368 = sub nsw i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %387

370:                                              ; preds = %355
  %371 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %372 = load i32, i32* %22, align 4
  %373 = add nsw i32 %372, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %371, i64 %374
  %376 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %377 = load i32, i32* %22, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %376, i64 %378
  %380 = load i32, i32* %16, align 4
  %381 = load i32, i32* %22, align 4
  %382 = sub nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = mul i64 %383, 16
  %385 = trunc i64 %384 to i32
  %386 = call i32 @memmove(%struct.TYPE_37__* %375, %struct.TYPE_37__* %379, i32 %385)
  br label %387

387:                                              ; preds = %370, %355
  %388 = load i32, i32* %22, align 4
  %389 = load i32, i32* %18, align 4
  %390 = call i32 @min(i32 %388, i32 %389)
  store i32 %390, i32* %18, align 4
  %391 = load i32, i32* %16, align 4
  %392 = load i32, i32* %17, align 4
  %393 = call i32 @max(i32 %391, i32 %392)
  store i32 %393, i32* %17, align 4
  br label %394

394:                                              ; preds = %387, %348
  %395 = load %struct.TYPE_40__*, %struct.TYPE_40__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %395, i32 0, i32 0
  %397 = call i32 @be32_add_cpu(i64* %396, i32 -1)
  br label %398

398:                                              ; preds = %394, %246
  %399 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %400 = bitcast %struct.TYPE_38__* %399 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %400, %struct.TYPE_39__** %9, align 8
  %401 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = call i64 @cpu_to_be32(i32 %403)
  %405 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %406 = load i32, i32* %22, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %408, i32 0, i32 1
  store i64 %404, i64* %409, align 8
  %410 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %411 = bitcast %struct.TYPE_39__* %410 to i8*
  %412 = load i32*, i32** %4, align 8
  %413 = bitcast i32* %412 to i8*
  %414 = ptrtoint i8* %411 to i64
  %415 = ptrtoint i8* %413 to i64
  %416 = sub i64 %414, %415
  %417 = trunc i64 %416 to i32
  %418 = call i32 @xfs_dir2_byte_to_dataptr(i32 %417)
  %419 = call i64 @cpu_to_be32(i32 %418)
  %420 = load %struct.TYPE_37__*, %struct.TYPE_37__** %5, align 8
  %421 = load i32, i32* %22, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %420, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %423, i32 0, i32 0
  store i64 %419, i64* %424, align 8
  %425 = load i32*, i32** %26, align 8
  %426 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %427 = load i32, i32* %18, align 4
  %428 = load i32, i32* %17, align 4
  %429 = call i32 @xfs_dir2_block_log_leaf(i32* %425, %struct.xfs_buf* %426, i32 %427, i32 %428)
  %430 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %431 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %432 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %433 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %434 = bitcast %struct.TYPE_38__* %433 to i8*
  %435 = load i32*, i32** %4, align 8
  %436 = bitcast i32* %435 to i8*
  %437 = ptrtoint i8* %434 to i64
  %438 = ptrtoint i8* %436 to i64
  %439 = sub i64 %437, %438
  %440 = load i32, i32* %19, align 4
  %441 = sext i32 %440 to i64
  %442 = call i32 @xfs_dir2_data_use_free(%struct.TYPE_41__* %430, %struct.xfs_buf* %431, %struct.TYPE_38__* %432, i64 %439, i64 %441, i32* %23, i32* %24)
  store i32 %442, i32* %12, align 4
  %443 = load i32, i32* %12, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %398
  %446 = load i32, i32* %12, align 4
  store i32 %446, i32* %2, align 4
  br label %520

447:                                              ; preds = %398
  %448 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %448, i32 0, i32 6
  %450 = load i32, i32* %449, align 8
  %451 = call i32 @cpu_to_be64(i32 %450)
  %452 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %453 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %452, i32 0, i32 2
  store i32 %451, i32* %453, align 4
  %454 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %454, i32 0, i32 4
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %457, i32 0, i32 1
  store i32 %456, i32* %458, align 4
  %459 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %460 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %463 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %462, i32 0, i32 5
  %464 = load i32, i32* %463, align 4
  %465 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %466 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %465, i32 0, i32 4
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @memcpy(i32 %461, i32 %464, i32 %467)
  %469 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %469, i32 0, i32 0
  %471 = load %struct.TYPE_35__*, %struct.TYPE_35__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %471, i32 0, i32 2
  %473 = load i32 (%struct.TYPE_39__*, i32)*, i32 (%struct.TYPE_39__*, i32)** %472, align 8
  %474 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %475 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %476 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = call i32 %473(%struct.TYPE_39__* %474, i32 %477)
  %479 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %479, i32 0, i32 0
  %481 = load %struct.TYPE_35__*, %struct.TYPE_35__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %481, i32 0, i32 1
  %483 = load i32* (%struct.TYPE_39__*)*, i32* (%struct.TYPE_39__*)** %482, align 8
  %484 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %485 = call i32* %483(%struct.TYPE_39__* %484)
  store i32* %485, i32** %25, align 8
  %486 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %487 = bitcast %struct.TYPE_39__* %486 to i8*
  %488 = load i32*, i32** %4, align 8
  %489 = bitcast i32* %488 to i8*
  %490 = ptrtoint i8* %487 to i64
  %491 = ptrtoint i8* %489 to i64
  %492 = sub i64 %490, %491
  %493 = trunc i64 %492 to i32
  %494 = call i32 @cpu_to_be16(i32 %493)
  %495 = load i32*, i32** %25, align 8
  store i32 %494, i32* %495, align 4
  %496 = load i32, i32* %24, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %447
  %499 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %500 = load i32*, i32** %4, align 8
  %501 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_36__* %499, i32* %500, i32* %23)
  br label %502

502:                                              ; preds = %498, %447
  %503 = load i32, i32* %23, align 4
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %502
  %506 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %507 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %508 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_41__* %506, %struct.xfs_buf* %507)
  br label %509

509:                                              ; preds = %505, %502
  %510 = load i32*, i32** %26, align 8
  %511 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %512 = call i32 @xfs_dir2_block_log_tail(i32* %510, %struct.xfs_buf* %511)
  %513 = load %struct.TYPE_41__*, %struct.TYPE_41__** %3, align 8
  %514 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %515 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %516 = call i32 @xfs_dir2_data_log_entry(%struct.TYPE_41__* %513, %struct.xfs_buf* %514, %struct.TYPE_39__* %515)
  %517 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  %518 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %519 = call i32 @xfs_dir3_data_check(%struct.TYPE_36__* %517, %struct.xfs_buf* %518)
  store i32 0, i32* %2, align 4
  br label %520

520:                                              ; preds = %509, %445, %218, %104, %102, %93, %84, %81, %41
  %521 = load i32, i32* %2, align 4
  ret i32 %521
}

declare dso_local i32 @trace_xfs_dir2_block_addname(%struct.TYPE_41__*) #1

declare dso_local i32 @xfs_dir3_block_read(i32*, %struct.TYPE_36__*, %struct.xfs_buf**) #1

declare dso_local %struct.TYPE_40__* @xfs_dir2_block_tail_p(i32, i32*) #1

declare dso_local %struct.TYPE_37__* @xfs_dir2_block_leaf_p(%struct.TYPE_40__*) #1

declare dso_local i32 @xfs_dir2_block_need_space(%struct.TYPE_36__*, i32*, %struct.TYPE_40__*, %struct.TYPE_37__*, i32**, %struct.TYPE_38__**, %struct.TYPE_38__**, i32*, i32) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_block_to_leaf(%struct.TYPE_41__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_leaf_addname(%struct.TYPE_41__*) #1

declare dso_local i32 @xfs_dir2_block_compact(%struct.TYPE_41__*, %struct.xfs_buf*, i32*, %struct.TYPE_40__*, %struct.TYPE_37__*, i32*, i32*, i32*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_data_use_free(%struct.TYPE_41__*, %struct.xfs_buf*, %struct.TYPE_38__*, i64, i64, i32*, i32*) #1

declare dso_local i32 @be32_add_cpu(i64*, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_36__*, i32*, i32*) #1

declare dso_local i32 @memmove(%struct.TYPE_37__*, %struct.TYPE_37__*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_byte_to_dataptr(i32) #1

declare dso_local i32 @xfs_dir2_block_log_leaf(i32*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_41__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_block_log_tail(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_data_log_entry(%struct.TYPE_41__*, %struct.xfs_buf*, %struct.TYPE_39__*) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_36__*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
