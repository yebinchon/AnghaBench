; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { %struct.xfs_attr_leaf_entry }
%struct.xfs_attr_leaf_entry = type { i32 }
%struct.xfs_da_args = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@XFS_ATTR_LEAF_MAPSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_remove(%struct.xfs_buf* %0, %struct.xfs_da_args* %1) #0 {
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_da_args*, align 8
  %5 = alloca %struct.xfs_attr_leafblock*, align 8
  %6 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  %7 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %4, align 8
  %15 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %16 = call i32 @trace_xfs_attr_leaf_remove(%struct.xfs_da_args* %15)
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 0
  %19 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %18, align 8
  store %struct.xfs_attr_leafblock* %19, %struct.xfs_attr_leafblock** %5, align 8
  %20 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %24 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_5__* %22, %struct.xfs_attr3_icleaf_hdr* %6, %struct.xfs_attr_leafblock* %23)
  %25 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 8
  %37 = icmp slt i32 %30, %36
  br label %38

38:                                               ; preds = %28, %2
  %39 = phi i1 [ false, %2 ], [ %37, %28 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %43 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %48 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %49, %51
  br label %53

53:                                               ; preds = %46, %38
  %54 = phi i1 [ false, %38 ], [ %52, %46 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %65 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %64)
  %66 = sext i32 %65 to i64
  %67 = add i64 %63, %66
  %68 = icmp uge i64 %59, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %72 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %71)
  %73 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %74 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %72, i64 %76
  store %struct.xfs_attr_leaf_entry* %77, %struct.xfs_attr_leaf_entry** %7, align 8
  %78 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %79 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @be16_to_cpu(i32 %80)
  %82 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sge i32 %81, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %88 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be16_to_cpu(i32 %89)
  %91 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %92 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %90, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @ASSERT(i32 %97)
  %99 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %104 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %103)
  %105 = sext i32 %104 to i64
  %106 = add i64 %102, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %12, align 4
  %108 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %13, align 4
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %8, align 4
  %113 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %114 = sub nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  %115 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %116 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %117 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = call i32 @xfs_attr_leaf_entsize(%struct.xfs_attr_leafblock* %115, i64 %119)
  store i32 %120, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %248, %53
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %251

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %134 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %132, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @ASSERT(i32 %139)
  %141 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %149 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %147, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @ASSERT(i32 %154)
  %156 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %186

165:                                              ; preds = %125
  %166 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, 4
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 4
  %176 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 %183, 4
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %181, align 4
  br label %186

186:                                              ; preds = %165, %125
  %187 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %193, %200
  %202 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %203 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @be16_to_cpu(i32 %204)
  %206 = icmp eq i32 %201, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %186
  %208 = load i32, i32* %14, align 4
  store i32 %208, i32* %8, align 4
  br label %247

209:                                              ; preds = %186
  %210 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %218 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @be16_to_cpu(i32 %219)
  %221 = load i32, i32* %11, align 4
  %222 = add nsw i32 %220, %221
  %223 = icmp eq i32 %216, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %209
  %225 = load i32, i32* %14, align 4
  store i32 %225, i32* %9, align 4
  br label %246

226:                                              ; preds = %209
  %227 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %13, align 4
  %235 = icmp slt i32 %233, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %226
  %237 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %14, align 4
  store i32 %244, i32* %10, align 4
  br label %245

245:                                              ; preds = %236, %226
  br label %246

246:                                              ; preds = %245, %224
  br label %247

247:                                              ; preds = %246, %207
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %121

251:                                              ; preds = %121
  %252 = load i32, i32* %8, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %9, align 4
  %256 = icmp sge i32 %255, 0
  br i1 %256, label %257, label %335

257:                                              ; preds = %254, %251
  %258 = load i32, i32* %8, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %300

260:                                              ; preds = %257
  %261 = load i32, i32* %9, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %300

263:                                              ; preds = %260
  %264 = load i32, i32* %11, align 4
  %265 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, %264
  store i32 %272, i32* %270, align 4
  %273 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %274 = load %struct.TYPE_4__*, %struct.TYPE_4__** %273, align 8
  %275 = load i32, i32* %9, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %280, align 8
  %282 = load i32, i32* %8, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, %279
  store i32 %287, i32* %285, align 4
  %288 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 1
  store i32 0, i32* %293, align 4
  %294 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  store i32 0, i32* %299, align 4
  br label %334

300:                                              ; preds = %260, %257
  %301 = load i32, i32* %8, align 4
  %302 = icmp sge i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %300
  %304 = load i32, i32* %11, align 4
  %305 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, %304
  store i32 %312, i32* %310, align 4
  br label %333

313:                                              ; preds = %300
  %314 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %315 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @be16_to_cpu(i32 %316)
  %318 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  store i32 %317, i32* %323, align 4
  %324 = load i32, i32* %11, align 4
  %325 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %325, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, %324
  store i32 %332, i32* %330, align 4
  br label %333

333:                                              ; preds = %313, %303
  br label %334

334:                                              ; preds = %333, %263
  br label %364

335:                                              ; preds = %254
  %336 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %337 = load %struct.TYPE_4__*, %struct.TYPE_4__** %336, align 8
  %338 = load i32, i32* %10, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %11, align 4
  %344 = icmp slt i32 %342, %343
  br i1 %344, label %345, label %363

345:                                              ; preds = %335
  %346 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %347 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @be16_to_cpu(i32 %348)
  %350 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  store i32 %349, i32* %355, align 4
  %356 = load i32, i32* %11, align 4
  %357 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 4
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %357, align 8
  %359 = load i32, i32* %10, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  store i32 %356, i32* %362, align 4
  br label %363

363:                                              ; preds = %345, %335
  br label %364

364:                                              ; preds = %363, %334
  %365 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %366 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @be16_to_cpu(i32 %367)
  %369 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %368, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %364
  store i32 1, i32* %10, align 4
  br label %374

373:                                              ; preds = %364
  store i32 0, i32* %10, align 4
  br label %374

374:                                              ; preds = %373, %372
  %375 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %376 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %377 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_name(%struct.xfs_attr_leafblock* %375, i64 %379)
  %381 = load i32, i32* %11, align 4
  %382 = call i32 @memset(%struct.xfs_attr_leaf_entry* %380, i32 0, i32 %381)
  %383 = load i32, i32* %11, align 4
  %384 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = sub nsw i32 %385, %383
  store i32 %386, i32* %384, align 8
  %387 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %388 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %391 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %392 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %393 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %394 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = sext i32 %395 to i64
  %397 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_name(%struct.xfs_attr_leafblock* %392, i64 %396)
  %398 = load i32, i32* %11, align 4
  %399 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %391, %struct.xfs_attr_leaf_entry* %397, i32 %398)
  %400 = call i32 @xfs_trans_log_buf(i32 %389, %struct.xfs_buf* %390, i32 %399)
  %401 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %404 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = sub nsw i32 %402, %405
  %407 = sext i32 %406 to i64
  %408 = mul i64 %407, 4
  %409 = trunc i64 %408 to i32
  store i32 %409, i32* %13, align 4
  %410 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %411 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %412 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %411, i64 1
  %413 = load i32, i32* %13, align 4
  %414 = call i32 @memmove(%struct.xfs_attr_leaf_entry* %410, %struct.xfs_attr_leaf_entry* %412, i32 %413)
  %415 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = add nsw i32 %416, -1
  store i32 %417, i32* %415, align 8
  %418 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %419 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %422 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %423 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %424 = load i32, i32* %13, align 4
  %425 = sext i32 %424 to i64
  %426 = add i64 %425, 4
  %427 = trunc i64 %426 to i32
  %428 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %422, %struct.xfs_attr_leaf_entry* %423, i32 %427)
  %429 = call i32 @xfs_trans_log_buf(i32 %420, %struct.xfs_buf* %421, i32 %428)
  %430 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %431 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %430)
  %432 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %431, i64 %434
  store %struct.xfs_attr_leaf_entry* %435, %struct.xfs_attr_leaf_entry** %7, align 8
  %436 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %437 = call i32 @memset(%struct.xfs_attr_leaf_entry* %436, i32 0, i32 4)
  %438 = load i32, i32* %10, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %501

440:                                              ; preds = %374
  %441 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %442 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %441, i32 0, i32 1
  %443 = load %struct.TYPE_5__*, %struct.TYPE_5__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  store i32 %445, i32* %13, align 4
  %446 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %447 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %446)
  store %struct.xfs_attr_leaf_entry* %447, %struct.xfs_attr_leaf_entry** %7, align 8
  %448 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = sub nsw i32 %449, 1
  store i32 %450, i32* %14, align 4
  br label %451

451:                                              ; preds = %488, %440
  %452 = load i32, i32* %14, align 4
  %453 = icmp sge i32 %452, 0
  br i1 %453, label %454, label %493

454:                                              ; preds = %451
  %455 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %456 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @be16_to_cpu(i32 %457)
  %459 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = icmp sge i32 %458, %460
  %462 = zext i1 %461 to i32
  %463 = call i32 @ASSERT(i32 %462)
  %464 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %465 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @be16_to_cpu(i32 %466)
  %468 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %469 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %468, i32 0, i32 1
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = icmp slt i32 %467, %472
  %474 = zext i1 %473 to i32
  %475 = call i32 @ASSERT(i32 %474)
  %476 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %477 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = call i32 @be16_to_cpu(i32 %478)
  %480 = load i32, i32* %13, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %487

482:                                              ; preds = %454
  %483 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %484 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = call i32 @be16_to_cpu(i32 %485)
  store i32 %486, i32* %13, align 4
  br label %487

487:                                              ; preds = %482, %454
  br label %488

488:                                              ; preds = %487
  %489 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %490 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %489, i32 1
  store %struct.xfs_attr_leaf_entry* %490, %struct.xfs_attr_leaf_entry** %7, align 8
  %491 = load i32, i32* %14, align 4
  %492 = add nsw i32 %491, -1
  store i32 %492, i32* %14, align 4
  br label %451

493:                                              ; preds = %451
  %494 = load i32, i32* %13, align 4
  %495 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 1
  store i32 %494, i32* %495, align 4
  %496 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = icmp ne i32 %497, 0
  %499 = zext i1 %498 to i32
  %500 = call i32 @ASSERT(i32 %499)
  br label %503

501:                                              ; preds = %374
  %502 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 3
  store i32 1, i32* %502, align 4
  br label %503

503:                                              ; preds = %501, %493
  %504 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %505 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %504, i32 0, i32 1
  %506 = load %struct.TYPE_5__*, %struct.TYPE_5__** %505, align 8
  %507 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %508 = call i32 @xfs_attr3_leaf_hdr_to_disk(%struct.TYPE_5__* %506, %struct.xfs_attr_leafblock* %507, %struct.xfs_attr3_icleaf_hdr* %6)
  %509 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %510 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %513 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %514 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %515 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %514, i32 0, i32 0
  %516 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %517 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %516)
  %518 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %513, %struct.xfs_attr_leaf_entry* %515, i32 %517)
  %519 = call i32 @xfs_trans_log_buf(i32 %511, %struct.xfs_buf* %512, i32 %518)
  %520 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %523 = call i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %522)
  %524 = add nsw i32 %521, %523
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %6, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = sext i32 %527 to i64
  %529 = mul i64 %528, 4
  %530 = add i64 %525, %529
  %531 = trunc i64 %530 to i32
  store i32 %531, i32* %13, align 4
  %532 = load i32, i32* %13, align 4
  %533 = load %struct.xfs_da_args*, %struct.xfs_da_args** %4, align 8
  %534 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %533, i32 0, i32 1
  %535 = load %struct.TYPE_5__*, %struct.TYPE_5__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = icmp slt i32 %532, %537
  %539 = zext i1 %538 to i32
  ret i32 %539
}

declare dso_local i32 @trace_xfs_attr_leaf_remove(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_5__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_attr_leaf_entsize(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i32 @memset(%struct.xfs_attr_leaf_entry*, i32, i32) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_name(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock*, %struct.xfs_attr_leaf_entry*, i32) #1

declare dso_local i32 @memmove(%struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry*, i32) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_to_disk(%struct.TYPE_5__*, %struct.xfs_attr_leafblock*, %struct.xfs_attr3_icleaf_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
