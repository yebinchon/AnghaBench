; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_growfs_data_private.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_fsops.c_xfs_growfs_data_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64, i64, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.aghdr_init_data = type { i32, i64, i32, i32 }
%struct.xfs_perag = type { i32 }
%struct.TYPE_19__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XFS_MIN_AG_BLOCKS = common dso_local global i64 0, align 8
@XFS_TRANS_RESERVE = common dso_local global i32 0, align 4
@XFS_TRANS_SB_AGCOUNT = common dso_local global i32 0, align 4
@XFS_TRANS_SB_DBLOCKS = common dso_local global i32 0, align 4
@XFS_TRANS_SB_FDBLOCKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @xfs_growfs_data_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_growfs_data_private(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.aghdr_init_data, align 8
  %16 = alloca %struct.xfs_perag*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 0, i32* %9, align 4
  %17 = bitcast %struct.aghdr_init_data* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 24, i1 false)
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %21, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %302

30:                                               ; preds = %2
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @xfs_sb_validate_fsb_count(%struct.TYPE_22__* %32, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %302

38:                                               ; preds = %30
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @XFS_FSB_TO_BB(%struct.TYPE_20__* %42, i64 %43)
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_20__* %45, i32 1)
  %47 = sub nsw i64 %44, %46
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %49 = call i64 @XFS_FSS_TO_BB(%struct.TYPE_20__* %48, i32 1)
  %50 = call i32 @xfs_buf_read_uncached(i32 %41, i64 %47, i64 %49, i32 0, i32** %6, i32* null)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %302

55:                                               ; preds = %38
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @xfs_buf_relse(i32* %56)
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @do_div(i64 %59, i64 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i64, i64* %11, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %55
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @XFS_MIN_AG_BLOCKS, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = mul nsw i64 %82, %86
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %302

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %74, %55
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %99, %103
  store i64 %104, i64* %12, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %98
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @xfs_initialize_perag(%struct.TYPE_20__* %113, i32 %114, i32* %9)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %3, align 4
  br label %302

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = call %struct.TYPE_19__* @M_RES(%struct.TYPE_20__* %123)
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %127 = call i32 @XFS_GROWFS_SPACE_RES(%struct.TYPE_20__* %126)
  %128 = load i32, i32* @XFS_TRANS_RESERVE, align 4
  %129 = call i32 @xfs_trans_alloc(%struct.TYPE_20__* %122, i32* %125, i32 %127, i32 0, i32 %128, i32** %14)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %121
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %3, align 4
  br label %302

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 3
  %136 = call i32 @INIT_LIST_HEAD(i32* %135)
  %137 = load i32, i32* %8, align 4
  %138 = sub nsw i32 %137, 1
  %139 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  br label %140

140:                                              ; preds = %178, %134
  %141 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %186

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %145
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = mul nsw i64 %155, %159
  %161 = sub nsw i64 %152, %160
  %162 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  br label %169

163:                                              ; preds = %145
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 1
  store i64 %167, i64* %168, align 8
  br label %169

169:                                              ; preds = %163, %151
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = call i32 @xfs_ag_init_headers(%struct.TYPE_20__* %170, %struct.aghdr_init_data* %15)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 3
  %176 = call i32 @xfs_buf_delwri_cancel(i32* %175)
  br label %298

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %179, align 8
  %182 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %12, align 8
  %185 = sub nsw i64 %184, %183
  store i64 %185, i64* %12, align 8
  br label %140

186:                                              ; preds = %140
  %187 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 3
  %188 = call i32 @xfs_buf_delwri_submit(i32* %187)
  store i32 %188, i32* %7, align 4
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  br label %298

192:                                              ; preds = %186
  %193 = load i32*, i32** %14, align 8
  %194 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @xfs_trans_agblocks_delta(i32* %193, i32 %195)
  %197 = load i64, i64* %12, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %192
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = load i32*, i32** %14, align 8
  %202 = load i64, i64* %12, align 8
  %203 = call i32 @xfs_ag_extend_space(%struct.TYPE_20__* %200, i32* %201, %struct.aghdr_init_data* %15, i64 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %298

207:                                              ; preds = %199
  br label %208

208:                                              ; preds = %207, %192
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %13, align 4
  %211 = icmp sgt i32 %209, %210
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = load i32*, i32** %14, align 8
  %214 = load i32, i32* @XFS_TRANS_SB_AGCOUNT, align 4
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* %13, align 4
  %217 = sub nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = call i32 @xfs_trans_mod_sb(i32* %213, i32 %214, i64 %218)
  br label %220

220:                                              ; preds = %212, %208
  %221 = load i64, i64* %10, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %221, %225
  br i1 %226, label %227, label %237

227:                                              ; preds = %220
  %228 = load i32*, i32** %14, align 8
  %229 = load i32, i32* @XFS_TRANS_SB_DBLOCKS, align 4
  %230 = load i64, i64* %10, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = sub nsw i64 %230, %234
  %236 = call i32 @xfs_trans_mod_sb(i32* %228, i32 %229, i64 %235)
  br label %237

237:                                              ; preds = %227, %220
  %238 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* @XFS_TRANS_SB_FDBLOCKS, align 4
  %244 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = call i32 @xfs_trans_mod_sb(i32* %242, i32 %243, i64 %246)
  br label %248

248:                                              ; preds = %241, %237
  %249 = load i32*, i32** %14, align 8
  %250 = call i32 @xfs_trans_set_sync(i32* %249)
  %251 = load i32*, i32** %14, align 8
  %252 = call i32 @xfs_trans_commit(i32* %251)
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %248
  %256 = load i32, i32* %7, align 4
  store i32 %256, i32* %3, align 4
  br label %302

257:                                              ; preds = %248
  %258 = load i32, i32* %9, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load i32, i32* %9, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %260, %257
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %266 = call i32 @xfs_set_low_space_thresholds(%struct.TYPE_20__* %265)
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %268 = call i32 @xfs_alloc_set_aside(%struct.TYPE_20__* %267)
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load i64, i64* %12, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %288

273:                                              ; preds = %264
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %275 = getelementptr inbounds %struct.aghdr_init_data, %struct.aghdr_init_data* %15, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = call %struct.xfs_perag* @xfs_perag_get(%struct.TYPE_20__* %274, i64 %277)
  store %struct.xfs_perag* %278, %struct.xfs_perag** %16, align 8
  %279 = load %struct.xfs_perag*, %struct.xfs_perag** %16, align 8
  %280 = call i32 @xfs_ag_resv_free(%struct.xfs_perag* %279)
  store i32 %280, i32* %7, align 4
  %281 = load %struct.xfs_perag*, %struct.xfs_perag** %16, align 8
  %282 = call i32 @xfs_perag_put(%struct.xfs_perag* %281)
  %283 = load i32, i32* %7, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %273
  %286 = load i32, i32* %7, align 4
  store i32 %286, i32* %3, align 4
  br label %302

287:                                              ; preds = %273
  br label %288

288:                                              ; preds = %287, %264
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %290 = call i32 @xfs_fs_reserve_ag_blocks(%struct.TYPE_20__* %289)
  store i32 %290, i32* %7, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @ENOSPC, align 4
  %293 = sub nsw i32 0, %292
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  store i32 0, i32* %7, align 4
  br label %296

296:                                              ; preds = %295, %288
  %297 = load i32, i32* %7, align 4
  store i32 %297, i32* %3, align 4
  br label %302

298:                                              ; preds = %206, %191, %174
  %299 = load i32*, i32** %14, align 8
  %300 = call i32 @xfs_trans_cancel(i32* %299)
  %301 = load i32, i32* %7, align 4
  store i32 %301, i32* %3, align 4
  br label %302

302:                                              ; preds = %298, %296, %285, %255, %132, %118, %94, %53, %36, %27
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xfs_sb_validate_fsb_count(%struct.TYPE_22__*, i64) #2

declare dso_local i32 @xfs_buf_read_uncached(i32, i64, i64, i32, i32**, i32*) #2

declare dso_local i64 @XFS_FSB_TO_BB(%struct.TYPE_20__*, i64) #2

declare dso_local i64 @XFS_FSS_TO_BB(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @xfs_buf_relse(i32*) #2

declare dso_local i64 @do_div(i64, i64) #2

declare dso_local i32 @xfs_initialize_perag(%struct.TYPE_20__*, i32, i32*) #2

declare dso_local i32 @xfs_trans_alloc(%struct.TYPE_20__*, i32*, i32, i32, i32, i32**) #2

declare dso_local %struct.TYPE_19__* @M_RES(%struct.TYPE_20__*) #2

declare dso_local i32 @XFS_GROWFS_SPACE_RES(%struct.TYPE_20__*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @xfs_ag_init_headers(%struct.TYPE_20__*, %struct.aghdr_init_data*) #2

declare dso_local i32 @xfs_buf_delwri_cancel(i32*) #2

declare dso_local i32 @xfs_buf_delwri_submit(i32*) #2

declare dso_local i32 @xfs_trans_agblocks_delta(i32*, i32) #2

declare dso_local i32 @xfs_ag_extend_space(%struct.TYPE_20__*, i32*, %struct.aghdr_init_data*, i64) #2

declare dso_local i32 @xfs_trans_mod_sb(i32*, i32, i64) #2

declare dso_local i32 @xfs_trans_set_sync(i32*) #2

declare dso_local i32 @xfs_trans_commit(i32*) #2

declare dso_local i32 @xfs_set_low_space_thresholds(%struct.TYPE_20__*) #2

declare dso_local i32 @xfs_alloc_set_aside(%struct.TYPE_20__*) #2

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.TYPE_20__*, i64) #2

declare dso_local i32 @xfs_ag_resv_free(%struct.xfs_perag*) #2

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #2

declare dso_local i32 @xfs_fs_reserve_ag_blocks(%struct.TYPE_20__*) #2

declare dso_local i32 @xfs_trans_cancel(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
