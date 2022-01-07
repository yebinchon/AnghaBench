; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_agheader.c_xchk_agi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_4__, %struct.xfs_mount*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_agi = type { i64, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_perag = type { i32, i32 }

@XFS_BTREE_MAXLEVELS = common dso_local global i32 0, align 4
@XFS_AGI_UNLINKED_BUCKETS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_agi(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca %struct.xfs_agi*, align 8
  %5 = alloca %struct.xfs_perag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %16 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %17 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %16, i32 0, i32 1
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %17, align 8
  store %struct.xfs_mount* %18, %struct.xfs_mount** %3, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %25 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 4
  store i32 %23, i32* %6, align 4
  %27 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %30 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %33 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = call i32 @xchk_ag_read_headers(%struct.xfs_scrub* %27, i32 %28, i32* %31, i32* %34, i32* %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %41, i32 0, i32 1
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %42, align 8
  %44 = call i32 @XFS_AGI_BLOCK(%struct.xfs_mount* %43)
  %45 = call i32 @xchk_process_error(%struct.xfs_scrub* %39, i32 %40, i32 %44, i32* %15)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %1
  br label %300

48:                                               ; preds = %1
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %50 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %51 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @xchk_buffer_recheck(%struct.xfs_scrub* %49, i32 %53)
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %56 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.xfs_agi* @XFS_BUF_TO_AGI(i32 %58)
  store %struct.xfs_agi* %59, %struct.xfs_agi** %4, align 8
  %60 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %61 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @be32_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @xfs_ag_block_count(%struct.xfs_mount* %66, i32 %67)
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %48
  %71 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %72 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %73 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %71, i32 %75)
  br label %77

77:                                               ; preds = %70, %48
  %78 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %79 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be32_to_cpu(i32 %80)
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %7, align 8
  %83 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %83, i32 %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %77
  %89 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %90 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %91 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %89, i32 %93)
  br label %95

95:                                               ; preds = %88, %77
  %96 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %97 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @be32_to_cpu(i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %102, %95
  %107 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %108 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %109 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %107, i32 %111)
  br label %113

113:                                              ; preds = %106, %102
  %114 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %115 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %114, i32 0, i32 0
  %116 = call i64 @xfs_sb_version_hasfinobt(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %155

118:                                              ; preds = %113
  %119 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %120 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @be32_to_cpu(i32 %121)
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %7, align 8
  %124 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %124, i32 %125, i64 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %118
  %130 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %131 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %132 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %130, i32 %134)
  br label %136

136:                                              ; preds = %129, %118
  %137 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %138 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @be32_to_cpu(i32 %139)
  store i32 %140, i32* %14, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @XFS_BTREE_MAXLEVELS, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %143, %136
  %148 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %149 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %150 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %148, i32 %152)
  br label %154

154:                                              ; preds = %147, %143
  br label %155

155:                                              ; preds = %154, %113
  %156 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @xfs_agino_range(%struct.xfs_mount* %156, i32 %157, i32* %10, i32* %11)
  %159 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %160 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @be32_to_cpu(i32 %161)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 %164, %165
  %167 = add nsw i32 %166, 1
  %168 = icmp sgt i32 %163, %167
  br i1 %168, label %176, label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %172 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @be32_to_cpu(i32 %173)
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %169, %155
  %177 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %178 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %179 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %177, i32 %181)
  br label %183

183:                                              ; preds = %176, %169
  %184 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %185 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @be32_to_cpu(i32 %186)
  store i32 %187, i32* %9, align 4
  %188 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @xfs_verify_agino_or_null(%struct.xfs_mount* %188, i32 %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %183
  %194 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %195 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %196 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %194, i32 %198)
  br label %200

200:                                              ; preds = %193, %183
  %201 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %202 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @be32_to_cpu(i32 %203)
  store i32 %204, i32* %9, align 4
  %205 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @xfs_verify_agino_or_null(%struct.xfs_mount* %205, i32 %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %200
  %211 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %212 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %213 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %211, i32 %215)
  br label %217

217:                                              ; preds = %210, %200
  store i32 0, i32* %13, align 4
  br label %218

218:                                              ; preds = %244, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* @XFS_AGI_UNLINKED_BUCKETS, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %247

222:                                              ; preds = %218
  %223 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %224 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @be32_to_cpu(i32 %229)
  store i32 %230, i32* %9, align 4
  %231 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @xfs_verify_agino_or_null(%struct.xfs_mount* %231, i32 %232, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %222
  %237 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %238 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %239 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %237, i32 %241)
  br label %243

243:                                              ; preds = %236, %222
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %218

247:                                              ; preds = %218
  %248 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %249 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = call i64 @cpu_to_be32(i32 0)
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %247
  %254 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %255 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %256 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %254, i32 %258)
  br label %260

260:                                              ; preds = %253, %247
  %261 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %262 = load i32, i32* %6, align 4
  %263 = call %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount* %261, i32 %262)
  store %struct.xfs_perag* %263, %struct.xfs_perag** %5, align 8
  %264 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %265 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %268 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @be32_to_cpu(i32 %269)
  %271 = icmp ne i32 %266, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %260
  %273 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %274 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %275 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %273, i32 %277)
  br label %279

279:                                              ; preds = %272, %260
  %280 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %281 = getelementptr inbounds %struct.xfs_perag, %struct.xfs_perag* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.xfs_agi*, %struct.xfs_agi** %4, align 8
  %284 = getelementptr inbounds %struct.xfs_agi, %struct.xfs_agi* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @be32_to_cpu(i32 %285)
  %287 = icmp ne i32 %282, %286
  br i1 %287, label %288, label %295

288:                                              ; preds = %279
  %289 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %290 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %291 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @xchk_block_set_corrupt(%struct.xfs_scrub* %289, i32 %293)
  br label %295

295:                                              ; preds = %288, %279
  %296 = load %struct.xfs_perag*, %struct.xfs_perag** %5, align 8
  %297 = call i32 @xfs_perag_put(%struct.xfs_perag* %296)
  %298 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %299 = call i32 @xchk_agi_xref(%struct.xfs_scrub* %298)
  br label %300

300:                                              ; preds = %295, %47
  %301 = load i32, i32* %15, align 4
  ret i32 %301
}

declare dso_local i32 @xchk_ag_read_headers(%struct.xfs_scrub*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @xchk_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

declare dso_local i32 @XFS_AGI_BLOCK(%struct.xfs_mount*) #1

declare dso_local i32 @xchk_buffer_recheck(%struct.xfs_scrub*, i32) #1

declare dso_local %struct.xfs_agi* @XFS_BUF_TO_AGI(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_ag_block_count(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xchk_block_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i32 @xfs_verify_agbno(%struct.xfs_mount*, i32, i64) #1

declare dso_local i64 @xfs_sb_version_hasfinobt(i32*) #1

declare dso_local i32 @xfs_agino_range(%struct.xfs_mount*, i32, i32*, i32*) #1

declare dso_local i32 @xfs_verify_agino_or_null(%struct.xfs_mount*, i32, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local %struct.xfs_perag* @xfs_perag_get(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_perag_put(%struct.xfs_perag*) #1

declare dso_local i32 @xchk_agi_xref(%struct.xfs_scrub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
