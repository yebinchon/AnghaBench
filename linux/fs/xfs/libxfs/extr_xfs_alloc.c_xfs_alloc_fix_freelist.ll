; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_fix_freelist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_alloc_fix_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_alloc_arg = type { i32, i32, i32, i64, i64, %struct.xfs_buf*, i32, i64, i32, %struct.xfs_perag*, i32, %struct.xfs_mount*, %struct.xfs_trans*, i32, i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_perag = type { i64, i64, i64, i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }

@XFS_TRANS_PERM_LOG_RES = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_TRYLOCK = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_FREEING = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_CHECK = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_NORMAP = common dso_local global i32 0, align 4
@XFS_RMAP_OINFO_SKIP_UPDATE = common dso_local global i32 0, align 4
@XFS_RMAP_OINFO_AG = common dso_local global i32 0, align 4
@XFS_ALLOC_FLAG_NOSHRINK = common dso_local global i32 0, align 4
@XFS_ALLOCTYPE_THIS_AG = common dso_local global i32 0, align 4
@XFS_AG_RESV_AGFL = common dso_local global i32 0, align 4
@NULLAGBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_alloc_fix_freelist(%struct.xfs_alloc_arg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_alloc_arg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_perag*, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca %struct.xfs_alloc_arg, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.xfs_alloc_arg* %0, %struct.xfs_alloc_arg** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %15, i32 0, i32 11
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  store %struct.xfs_mount* %17, %struct.xfs_mount** %6, align 8
  %18 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %18, i32 0, i32 9
  %20 = load %struct.xfs_perag*, %struct.xfs_perag** %19, align 8
  store %struct.xfs_perag* %20, %struct.xfs_perag** %7, align 8
  %21 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %21, i32 0, i32 12
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %22, align 8
  store %struct.xfs_trans* %23, %struct.xfs_trans** %8, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %9, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %10, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %25 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_TRANS_PERM_LOG_RES, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %63, label %34

34:                                               ; preds = %2
  %35 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %36 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %37 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %35, %struct.xfs_trans* %36, i32 %39, i32 %40, %struct.xfs_buf** %9)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %293

45:                                               ; preds = %34
  %46 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @XFS_ALLOC_FLAG_TRYLOCK, align 4
  %53 = and i32 %51, %52
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @XFS_ALLOC_FLAG_FREEING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  br label %285

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %65 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %70 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %69, i32 0, i32 14
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @xfs_alloc_is_userdata(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @XFS_ALLOC_FLAG_TRYLOCK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @XFS_ALLOC_FLAG_FREEING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  br label %285

87:                                               ; preds = %74, %68, %63
  %88 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %89 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %90 = call i64 @xfs_alloc_min_freelist(%struct.xfs_mount* %88, %struct.xfs_perag* %89)
  store i64 %90, i64* %13, align 8
  %91 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @XFS_ALLOC_FLAG_CHECK, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @xfs_alloc_space_available(%struct.xfs_alloc_arg* %91, i64 %92, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %87
  br label %285

99:                                               ; preds = %87
  %100 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %101 = icmp ne %struct.xfs_buf* %100, null
  br i1 %101, label %129, label %102

102:                                              ; preds = %99
  %103 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %104 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %105 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %106 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @xfs_alloc_read_agf(%struct.xfs_mount* %103, %struct.xfs_trans* %104, i32 %107, i32 %108, %struct.xfs_buf** %9)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %293

113:                                              ; preds = %102
  %114 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %115 = icmp ne %struct.xfs_buf* %114, null
  br i1 %115, label %128, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @XFS_ALLOC_FLAG_TRYLOCK, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @ASSERT(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @XFS_ALLOC_FLAG_FREEING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 @ASSERT(i32 %126)
  br label %293

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128, %99
  %130 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %131 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %136 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %137 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %138 = call i32 @xfs_agfl_reset(%struct.xfs_trans* %135, %struct.xfs_buf* %136, %struct.xfs_perag* %137)
  br label %139

139:                                              ; preds = %134, %129
  %140 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %141 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %142 = call i64 @xfs_alloc_min_freelist(%struct.xfs_mount* %140, %struct.xfs_perag* %141)
  store i64 %142, i64* %13, align 8
  %143 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %144 = load i64, i64* %13, align 8
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @xfs_alloc_space_available(%struct.xfs_alloc_arg* %143, i64 %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %139
  br label %285

149:                                              ; preds = %139
  %150 = call i32 @memset(%struct.xfs_alloc_arg* %11, i32 0, i32 104)
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @XFS_ALLOC_FLAG_NORMAP, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* @XFS_RMAP_OINFO_SKIP_UPDATE, align 4
  %157 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 13
  store i32 %156, i32* %157, align 8
  br label %161

158:                                              ; preds = %149
  %159 = load i32, i32* @XFS_RMAP_OINFO_AG, align 4
  %160 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 13
  store i32 %159, i32* %160, align 8
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %182, %161
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* @XFS_ALLOC_FLAG_NOSHRINK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %169 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = icmp sgt i64 %170, %171
  br label %173

173:                                              ; preds = %167, %162
  %174 = phi i1 [ false, %162 ], [ %172, %167 ]
  br i1 %174, label %175, label %190

175:                                              ; preds = %173
  %176 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %177 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %178 = call i32 @xfs_alloc_get_freelist(%struct.xfs_trans* %176, %struct.xfs_buf* %177, i64* %12, i32 0)
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %14, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %285

182:                                              ; preds = %175
  %183 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %184 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %185 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* %12, align 8
  %188 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 13
  %189 = call i32 @xfs_defer_agfl_block(%struct.xfs_trans* %183, i32 %186, i64 %187, i32* %188)
  br label %162

190:                                              ; preds = %173
  %191 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %192 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 12
  store %struct.xfs_trans* %191, %struct.xfs_trans** %192, align 8
  %193 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %194 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 11
  store %struct.xfs_mount* %193, %struct.xfs_mount** %194, align 8
  %195 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %196 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 5
  store %struct.xfs_buf* %195, %struct.xfs_buf** %196, align 8
  %197 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %198 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 8
  store i32 %199, i32* %200, align 8
  %201 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 2
  store i32 1, i32* %201, align 8
  %202 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 1
  store i32 1, i32* %202, align 4
  %203 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 0
  store i32 1, i32* %203, align 8
  %204 = load i32, i32* @XFS_ALLOCTYPE_THIS_AG, align 4
  %205 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 10
  store i32 %204, i32* %205, align 8
  %206 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %207 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 9
  store %struct.xfs_perag* %206, %struct.xfs_perag** %207, align 8
  %208 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %209 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %210 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 8
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @xfs_alloc_read_agfl(%struct.xfs_mount* %208, %struct.xfs_trans* %209, i32 %211, %struct.xfs_buf** %10)
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %190
  br label %285

216:                                              ; preds = %190
  br label %217

217:                                              ; preds = %273, %216
  %218 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %219 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %13, align 8
  %222 = icmp slt i64 %220, %221
  br i1 %222, label %223, label %274

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 3
  store i64 0, i64* %224, align 8
  %225 = load i64, i64* %13, align 8
  %226 = load %struct.xfs_perag*, %struct.xfs_perag** %7, align 8
  %227 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %225, %228
  %230 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 7
  store i64 %229, i64* %230, align 8
  %231 = load i32, i32* @XFS_AG_RESV_AGFL, align 4
  %232 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 6
  store i32 %231, i32* %232, align 8
  %233 = call i32 @xfs_alloc_ag_vextent(%struct.xfs_alloc_arg* %11)
  store i32 %233, i32* %14, align 4
  %234 = load i32, i32* %14, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  br label %281

237:                                              ; preds = %223
  %238 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 3
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @NULLAGBLOCK, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load i32, i32* %5, align 4
  %244 = load i32, i32* @XFS_ALLOC_FLAG_FREEING, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242
  br label %274

248:                                              ; preds = %242
  br label %281

249:                                              ; preds = %237
  %250 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %12, align 8
  br label %252

252:                                              ; preds = %270, %249
  %253 = load i64, i64* %12, align 8
  %254 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %11, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %255, %257
  %259 = icmp slt i64 %253, %258
  br i1 %259, label %260, label %273

260:                                              ; preds = %252
  %261 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %262 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %263 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %264 = load i64, i64* %12, align 8
  %265 = call i32 @xfs_alloc_put_freelist(%struct.xfs_trans* %261, %struct.xfs_buf* %262, %struct.xfs_buf* %263, i64 %264, i32 0)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %260
  br label %281

269:                                              ; preds = %260
  br label %270

270:                                              ; preds = %269
  %271 = load i64, i64* %12, align 8
  %272 = add nsw i64 %271, 1
  store i64 %272, i64* %12, align 8
  br label %252

273:                                              ; preds = %252
  br label %217

274:                                              ; preds = %247, %217
  %275 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %276 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %277 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %275, %struct.xfs_buf* %276)
  %278 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %279 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %280 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %279, i32 0, i32 5
  store %struct.xfs_buf* %278, %struct.xfs_buf** %280, align 8
  store i32 0, i32* %3, align 4
  br label %297

281:                                              ; preds = %268, %248, %236
  %282 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %283 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %284 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %282, %struct.xfs_buf* %283)
  br label %285

285:                                              ; preds = %281, %215, %181, %148, %98, %79, %50
  %286 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %287 = icmp ne %struct.xfs_buf* %286, null
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %290 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %291 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %289, %struct.xfs_buf* %290)
  br label %292

292:                                              ; preds = %288, %285
  br label %293

293:                                              ; preds = %292, %116, %112, %44
  %294 = load %struct.xfs_alloc_arg*, %struct.xfs_alloc_arg** %4, align 8
  %295 = getelementptr inbounds %struct.xfs_alloc_arg, %struct.xfs_alloc_arg* %294, i32 0, i32 5
  store %struct.xfs_buf* null, %struct.xfs_buf** %295, align 8
  %296 = load i32, i32* %14, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %293, %274
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_alloc_read_agf(%struct.xfs_mount*, %struct.xfs_trans*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i64 @xfs_alloc_is_userdata(i32) #1

declare dso_local i64 @xfs_alloc_min_freelist(%struct.xfs_mount*, %struct.xfs_perag*) #1

declare dso_local i32 @xfs_alloc_space_available(%struct.xfs_alloc_arg*, i64, i32) #1

declare dso_local i32 @xfs_agfl_reset(%struct.xfs_trans*, %struct.xfs_buf*, %struct.xfs_perag*) #1

declare dso_local i32 @memset(%struct.xfs_alloc_arg*, i32, i32) #1

declare dso_local i32 @xfs_alloc_get_freelist(%struct.xfs_trans*, %struct.xfs_buf*, i64*, i32) #1

declare dso_local i32 @xfs_defer_agfl_block(%struct.xfs_trans*, i32, i64, i32*) #1

declare dso_local i32 @xfs_alloc_read_agfl(%struct.xfs_mount*, %struct.xfs_trans*, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_alloc_ag_vextent(%struct.xfs_alloc_arg*) #1

declare dso_local i32 @xfs_alloc_put_freelist(%struct.xfs_trans*, %struct.xfs_buf*, %struct.xfs_buf*, i64, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
