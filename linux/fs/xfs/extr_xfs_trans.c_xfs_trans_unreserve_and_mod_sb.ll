; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_unreserve_and_mod_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans.c_xfs_trans_unreserve_and_mod_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_TRANS_SB_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_unreserve_and_mod_sb(%struct.xfs_trans* %0) #0 {
  %2 = alloca %struct.xfs_trans*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %2, align 8
  %10 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %10, i32 0, i32 15
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %3, align 8
  %13 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %21 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %26 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %31 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %35, i32 0, i32 1
  %37 = call i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_2__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %41 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39, %34
  %47 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %48 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %39, %29
  %55 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %56 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %61 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %66 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %71 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %78 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %76, %69, %64
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %86 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %85, i32 0, i32 1
  %87 = call i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_2__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %84
  %90 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %91 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89, %84
  %97 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %98 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %7, align 4
  %100 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %101 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @xfs_mod_fdblocks(%struct.xfs_mount* %107, i32 %108, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %451

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %103
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @xfs_mod_icount(%struct.xfs_mount* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %441

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %115
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @xfs_mod_ifree(%struct.xfs_mount* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %432

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %126
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %142 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @XFS_TRANS_SB_DIRTY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %140
  br label %456

148:                                              ; preds = %140, %137
  %149 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %150 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %149, i32 0, i32 0
  %151 = call i32 @spin_lock(i32* %150)
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %156 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @xfs_sb_mod64(i32* %157, i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %154
  br label %420

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %148
  %165 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %166 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %165, i32 0, i32 7
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %171 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %174 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @xfs_sb_mod64(i32* %172, i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %409

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180, %164
  %182 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %183 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %182, i32 0, i32 8
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %198

186:                                              ; preds = %181
  %187 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %188 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %191 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %190, i32 0, i32 8
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @xfs_sb_mod32(i32* %189, i32 %192)
  store i32 %193, i32* %9, align 4
  %194 = load i32, i32* %9, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %394

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %181
  %199 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %200 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %199, i32 0, i32 13
  %201 = load i32, i32* %200, align 8
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %205 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 3
  %207 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %208 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %207, i32 0, i32 13
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @xfs_sb_mod8(i32* %206, i32 %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %203
  br label %379

214:                                              ; preds = %203
  br label %215

215:                                              ; preds = %214, %198
  %216 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %217 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %222 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 4
  %224 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %225 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @xfs_sb_mod32(i32* %223, i32 %226)
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %364

231:                                              ; preds = %220
  br label %232

232:                                              ; preds = %231, %215
  %233 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %234 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %233, i32 0, i32 10
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %239 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 5
  %241 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %242 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @xfs_sb_mod32(i32* %240, i32 %243)
  store i32 %244, i32* %9, align 4
  %245 = load i32, i32* %9, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %349

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %232
  %250 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %251 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %250, i32 0, i32 11
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %249
  %255 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %256 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 6
  %258 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %259 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @xfs_sb_mod64(i32* %257, i32 %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %254
  br label %334

265:                                              ; preds = %254
  br label %266

266:                                              ; preds = %265, %249
  %267 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %268 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %267, i32 0, i32 12
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %266
  %272 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %273 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 7
  %275 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %276 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %275, i32 0, i32 12
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @xfs_sb_mod64(i32* %274, i32 %277)
  store i32 %278, i32* %9, align 4
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  br label %319

282:                                              ; preds = %271
  br label %283

283:                                              ; preds = %282, %266
  %284 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %285 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %284, i32 0, i32 14
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %300

288:                                              ; preds = %283
  %289 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %290 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %290, i32 0, i32 8
  %292 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %293 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %292, i32 0, i32 14
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @xfs_sb_mod8(i32* %291, i32 %294)
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %9, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %288
  br label %304

299:                                              ; preds = %288
  br label %300

300:                                              ; preds = %299, %283
  %301 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %302 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %301, i32 0, i32 0
  %303 = call i32 @spin_unlock(i32* %302)
  br label %456

304:                                              ; preds = %298
  %305 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %306 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %305, i32 0, i32 12
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %318

309:                                              ; preds = %304
  %310 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %311 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %310, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 7
  %313 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %314 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %313, i32 0, i32 12
  %315 = load i32, i32* %314, align 4
  %316 = sub nsw i32 0, %315
  %317 = call i32 @xfs_sb_mod64(i32* %312, i32 %316)
  br label %318

318:                                              ; preds = %309, %304
  br label %319

319:                                              ; preds = %318, %281
  %320 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %321 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %320, i32 0, i32 11
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %333

324:                                              ; preds = %319
  %325 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %326 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 6
  %328 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %329 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %328, i32 0, i32 11
  %330 = load i32, i32* %329, align 8
  %331 = sub nsw i32 0, %330
  %332 = call i32 @xfs_sb_mod64(i32* %327, i32 %331)
  br label %333

333:                                              ; preds = %324, %319
  br label %334

334:                                              ; preds = %333, %264
  %335 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %336 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %335, i32 0, i32 10
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %348

339:                                              ; preds = %334
  %340 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %341 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 5
  %343 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %344 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %343, i32 0, i32 10
  %345 = load i32, i32* %344, align 4
  %346 = sub nsw i32 0, %345
  %347 = call i32 @xfs_sb_mod32(i32* %342, i32 %346)
  br label %348

348:                                              ; preds = %339, %334
  br label %349

349:                                              ; preds = %348, %247
  %350 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %351 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %349
  %355 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %356 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %356, i32 0, i32 4
  %358 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %359 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %358, i32 0, i32 9
  %360 = load i32, i32* %359, align 8
  %361 = sub nsw i32 0, %360
  %362 = call i32 @xfs_sb_mod32(i32* %357, i32 %361)
  br label %363

363:                                              ; preds = %354, %349
  br label %364

364:                                              ; preds = %363, %230
  %365 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %366 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %365, i32 0, i32 9
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %364
  %370 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %371 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 3
  %373 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %374 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %373, i32 0, i32 13
  %375 = load i32, i32* %374, align 8
  %376 = sub nsw i32 0, %375
  %377 = call i32 @xfs_sb_mod8(i32* %372, i32 %376)
  br label %378

378:                                              ; preds = %369, %364
  br label %379

379:                                              ; preds = %378, %213
  %380 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %381 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %380, i32 0, i32 8
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %379
  %385 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %386 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 2
  %388 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %389 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %388, i32 0, i32 8
  %390 = load i32, i32* %389, align 4
  %391 = sub nsw i32 0, %390
  %392 = call i32 @xfs_sb_mod32(i32* %387, i32 %391)
  br label %393

393:                                              ; preds = %384, %379
  br label %394

394:                                              ; preds = %393, %196
  %395 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %396 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %395, i32 0, i32 7
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %408

399:                                              ; preds = %394
  %400 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %401 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 1
  %403 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %404 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %403, i32 0, i32 7
  %405 = load i32, i32* %404, align 8
  %406 = sub nsw i32 0, %405
  %407 = call i32 @xfs_sb_mod64(i32* %402, i32 %406)
  br label %408

408:                                              ; preds = %399, %394
  br label %409

409:                                              ; preds = %408, %179
  %410 = load i32, i32* %6, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %409
  %413 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %414 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %414, i32 0, i32 0
  %416 = load i32, i32* %6, align 4
  %417 = sub nsw i32 0, %416
  %418 = call i32 @xfs_sb_mod64(i32* %415, i32 %417)
  br label %419

419:                                              ; preds = %412, %409
  br label %420

420:                                              ; preds = %419, %162
  %421 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %422 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %421, i32 0, i32 0
  %423 = call i32 @spin_unlock(i32* %422)
  %424 = load i32, i32* %8, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %431

426:                                              ; preds = %420
  %427 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %428 = load i32, i32* %8, align 4
  %429 = sub nsw i32 0, %428
  %430 = call i32 @xfs_mod_ifree(%struct.xfs_mount* %427, i32 %429)
  br label %431

431:                                              ; preds = %426, %420
  br label %432

432:                                              ; preds = %431, %135
  %433 = load i32, i32* %7, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %432
  %436 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %437 = load i32, i32* %7, align 4
  %438 = sub nsw i32 0, %437
  %439 = call i32 @xfs_mod_icount(%struct.xfs_mount* %436, i32 %438)
  br label %440

440:                                              ; preds = %435, %432
  br label %441

441:                                              ; preds = %440, %124
  %442 = load i32, i32* %5, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %450

444:                                              ; preds = %441
  %445 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %446 = load i32, i32* %5, align 4
  %447 = sub nsw i32 0, %446
  %448 = load i32, i32* %4, align 4
  %449 = call i32 @xfs_mod_fdblocks(%struct.xfs_mount* %445, i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %444, %441
  br label %451

451:                                              ; preds = %450, %113
  %452 = load i32, i32* %9, align 4
  %453 = icmp eq i32 %452, 0
  %454 = zext i1 %453 to i32
  %455 = call i32 @ASSERT(i32 %454)
  br label %456

456:                                              ; preds = %451, %300, %147
  ret void
}

declare dso_local i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_2__*) #1

declare dso_local i32 @xfs_mod_fdblocks(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @xfs_mod_icount(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_mod_ifree(%struct.xfs_mount*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @xfs_sb_mod64(i32*, i32) #1

declare dso_local i32 @xfs_sb_mod32(i32*, i32) #1

declare dso_local i32 @xfs_sb_mod8(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
