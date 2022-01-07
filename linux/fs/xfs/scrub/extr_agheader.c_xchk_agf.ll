; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_4__, %struct.xfs_mount*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_agf = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.xfs_perag = type { i8*, i8*, i8* }

@XFS_BTNUM_BNO = common dso_local global i64 0, align 8
@XFS_BTNUM_CNT = common dso_local global i64 0, align 8
@XFS_BTREE_MAXLEVELS = common dso_local global i32 0, align 4
@XFS_BTNUM_RMAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_agf(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_agf*, align 8
  %5 = alloca %struct.xfs_perag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %15 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %15, i32 0, i32 1
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  store %struct.xfs_mount* %17, %struct.xfs_mount** %3, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %24 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  store i32 %22, i32* %6, align 4
  %26 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %29 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %32 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %35 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @xchk_ag_read_headers(%struct.xfs_scrub* %26, i32 %27, i32* %30, i32* %33, i32* %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %41 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %40, i32 0, i32 1
  %42 = load %struct.xfs_mount*, %struct.xfs_mount** %41, align 8
  %43 = call i32 @XFS_AGF_BLOCK(%struct.xfs_mount* %42)
  %44 = call i32 @xchk_process_error(%struct.xfs_scrub* %38, i32 %39, i32 %43, i32* %14)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %1
  br label %356

47:                                               ; preds = %1
  %48 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %50 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @xchk_buffer_recheck(%struct.xfs_scrub* %48, i32 %52)
  %54 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %55 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.xfs_agf* @XFS_BUF_TO_AGF(i32 %57)
  store %struct.xfs_agf* %58, %struct.xfs_agf** %4, align 8
  %59 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @xfs_ag_block_count(%struct.xfs_mount* %65, i32 %66)
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %47
  %70 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %71 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %72 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %47
  %77 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %78 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @be32_to_cpu(i32 %82)
  %84 = ptrtoint i8* %83 to i64
  store i64 %84, i64* %7, align 8
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %85, i32 %86, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %76
  %91 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %92 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %93 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %91, i32 %95)
  br label %97

97:                                               ; preds = %90, %76
  %98 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %99 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i8* @be32_to_cpu(i32 %103)
  %105 = ptrtoint i8* %104 to i64
  store i64 %105, i64* %7, align 8
  %106 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i64, i64* %7, align 8
  %109 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %106, i32 %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %97
  %112 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %113 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %114 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %112, i32 %116)
  br label %118

118:                                              ; preds = %111, %97
  %119 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %120 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %119, i32 0, i32 7
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @XFS_BTNUM_BNO, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @be32_to_cpu(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %118
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129, %118
  %134 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %135 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %136 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %134, i32 %138)
  br label %140

140:                                              ; preds = %133, %129
  %141 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %142 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @XFS_BTNUM_CNT, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = call i8* @be32_to_cpu(i32 %146)
  %148 = ptrtoint i8* %147 to i32
  store i32 %148, i32* %13, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %151, %140
  %156 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %157 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %158 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %156, i32 %160)
  br label %162

162:                                              ; preds = %155, %151
  %163 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %164 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %163, i32 0, i32 0
  %165 = call i64 @xfs_sb_version_hasrmapbt(i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %211

167:                                              ; preds = %162
  %168 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %169 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %168, i32 0, i32 8
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @XFS_BTNUM_RMAP, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @be32_to_cpu(i32 %173)
  %175 = ptrtoint i8* %174 to i64
  store i64 %175, i64* %7, align 8
  %176 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %177 = load i32, i32* %6, align 4
  %178 = load i64, i64* %7, align 8
  %179 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %176, i32 %177, i64 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %167
  %182 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %183 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %184 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %182, i32 %186)
  br label %188

188:                                              ; preds = %181, %167
  %189 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %190 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* @XFS_BTNUM_RMAP, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @be32_to_cpu(i32 %194)
  %196 = ptrtoint i8* %195 to i32
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp sle i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %188
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199, %188
  %204 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %205 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %206 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %204, i32 %208)
  br label %210

210:                                              ; preds = %203, %199
  br label %211

211:                                              ; preds = %210, %162
  %212 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %213 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %212, i32 0, i32 0
  %214 = call i64 @xfs_sb_version_hasreflink(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %254

216:                                              ; preds = %211
  %217 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %218 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = call i8* @be32_to_cpu(i32 %219)
  %221 = ptrtoint i8* %220 to i64
  store i64 %221, i64* %7, align 8
  %222 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %223 = load i32, i32* %6, align 4
  %224 = load i64, i64* %7, align 8
  %225 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %222, i32 %223, i64 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %216
  %228 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %229 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %230 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %228, i32 %232)
  br label %234

234:                                              ; preds = %227, %216
  %235 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %236 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @be32_to_cpu(i32 %237)
  %239 = ptrtoint i8* %238 to i32
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp sle i32 %240, 0
  br i1 %241, label %246, label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %245 = icmp sgt i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %242, %234
  %247 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %248 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %249 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %247, i32 %251)
  br label %253

253:                                              ; preds = %246, %242
  br label %254

254:                                              ; preds = %253, %211
  %255 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %256 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = call i8* @be32_to_cpu(i32 %257)
  %259 = ptrtoint i8* %258 to i64
  store i64 %259, i64* %9, align 8
  %260 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %261 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @be32_to_cpu(i32 %262)
  %264 = ptrtoint i8* %263 to i64
  store i64 %264, i64* %10, align 8
  %265 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %266 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @be32_to_cpu(i32 %267)
  %269 = ptrtoint i8* %268 to i64
  store i64 %269, i64* %11, align 8
  %270 = load i64, i64* %10, align 8
  %271 = load i64, i64* %9, align 8
  %272 = icmp sgt i64 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %254
  %274 = load i64, i64* %10, align 8
  %275 = load i64, i64* %9, align 8
  %276 = sub nsw i64 %274, %275
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %12, align 8
  br label %286

278:                                              ; preds = %254
  %279 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %280 = call i64 @xfs_agfl_size(%struct.xfs_mount* %279)
  %281 = load i64, i64* %9, align 8
  %282 = sub nsw i64 %280, %281
  %283 = load i64, i64* %10, align 8
  %284 = add nsw i64 %282, %283
  %285 = add nsw i64 %284, 1
  store i64 %285, i64* %12, align 8
  br label %286

286:                                              ; preds = %278, %273
  %287 = load i64, i64* %11, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %300

289:                                              ; preds = %286
  %290 = load i64, i64* %12, align 8
  %291 = load i64, i64* %11, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %289
  %294 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %295 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %296 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %294, i32 %298)
  br label %300

300:                                              ; preds = %293, %289, %286
  %301 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %302 = load i32, i32* %6, align 4
  %303 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %301, i32 %302)
  store %struct.xfs_perag* %303, %struct.xfs_perag** %5, align 8
  %304 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %305 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %308 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i8* @be32_to_cpu(i32 %309)
  %311 = icmp ne i8* %306, %310
  br i1 %311, label %312, label %319

312:                                              ; preds = %300
  %313 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %314 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %315 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %313, i32 %317)
  br label %319

319:                                              ; preds = %312, %300
  %320 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %321 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %324 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i8* @be32_to_cpu(i32 %325)
  %327 = icmp ne i8* %322, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %319
  %329 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %330 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %331 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %329, i32 %333)
  br label %335

335:                                              ; preds = %328, %319
  %336 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %337 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %336, i32 0, i32 2
  %338 = load i8*, i8** %337, align 8
  %339 = load %struct.xfs_agf*, %struct.xfs_agf** %4, align 8
  %340 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i8* @be32_to_cpu(i32 %341)
  %343 = icmp ne i8* %338, %342
  br i1 %343, label %344, label %351

344:                                              ; preds = %335
  %345 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %346 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %347 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %345, i32 %349)
  br label %351

351:                                              ; preds = %344, %335
  %352 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %353 = call i32 @xfs_perag_put(%struct.xfs_perag* %352)
  %354 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %355 = call i32 @xchk_agf_xref(%struct.xfs_scrub* %354)
  br label %356

356:                                              ; preds = %351, %46
  %357 = load i32, i32* %14, align 4
  ret i32 %357
}

declare dso_local i32 @xchk_ag_read_headers(%struct.xfs_scrub*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @xchk_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

declare dso_local i32 @XFS_AGF_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @xchk_buffer_recheck(%struct.xfs_scrub*, i32) #1

declare dso_local %struct.xfs_agf* @XFS_BUF_TO_AGF(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_ag_block_count(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xchk_block_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xfs_verify_agbno(%struct.xfs_mount*, i32, i64) #1

declare dso_local i64 @xfs_sb_version_hasrmapbt(i32*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i64 @xfs_agfl_size(%struct.xfs_mount*) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xchk_agf_xref(%struct.xfs_scrub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
