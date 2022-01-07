; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_mft.c_map_extent_mft_record.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_mft.c_map_extent_mft_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, %struct.TYPE_21__, %struct.TYPE_20__*, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__**, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"Mapping extent mft record 0x%lx (base mft record 0x%lx).\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Done 1.\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Found stale extent mft reference! Corrupt filesystem. Run chkdsk.\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to map extent mft record, error code %ld.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to allocate internal buffer.\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Done 2.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @map_extent_mft_record(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_22__** %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__**, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__**, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_22__** null, %struct.TYPE_22__*** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @MREF(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @MSEQNO(i32 %19)
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %14, align 4
  %21 = load i64, i64* %12, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 2
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 3
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %39, align 8
  store %struct.TYPE_22__** %40, %struct.TYPE_22__*** %10, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %67, %36
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %41
  %48 = load i64, i64* %12, align 8
  %49 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %49, i64 %51
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %48, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %67

58:                                               ; preds = %47
  %59 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %59, i64 %61
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  store %struct.TYPE_22__* %63, %struct.TYPE_22__** %9, align 8
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  %66 = call i32 @atomic_inc(i32* %65)
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %41

70:                                               ; preds = %58, %41
  br label %71

71:                                               ; preds = %70, %3
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %73 = icmp ne %struct.TYPE_22__* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i64 @likely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %71
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 3
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 2
  %83 = call i32 @atomic_dec(i32* %82)
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %85 = call %struct.TYPE_23__* @map_mft_record(%struct.TYPE_22__* %84)
  store %struct.TYPE_23__* %85, %struct.TYPE_23__** %8, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = call i32 @atomic_dec(i32* %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = call i64 @IS_ERR(%struct.TYPE_23__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %77
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @le16_to_cpu(i32 %95)
  %97 = load i64, i64* %13, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i64 @likely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %104, %struct.TYPE_22__** %105, align 8
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %106, %struct.TYPE_23__** %4, align 8
  br label %309

107:                                              ; preds = %92
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %109 = call i32 @unmap_mft_record(%struct.TYPE_22__* %108)
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @ntfs_error(i32 %114, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  %118 = call %struct.TYPE_23__* @ERR_PTR(i32 %117)
  store %struct.TYPE_23__* %118, %struct.TYPE_23__** %4, align 8
  br label %309

119:                                              ; preds = %77
  br label %120

120:                                              ; preds = %175, %119
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 5
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %127 = call i32 @PTR_ERR(%struct.TYPE_23__* %126)
  %128 = sub nsw i32 0, %127
  %129 = call i32 (i32, i8*, ...) @ntfs_error(i32 %125, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %130, %struct.TYPE_23__** %4, align 8
  br label %309

131:                                              ; preds = %71
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* %12, align 8
  %138 = call %struct.TYPE_22__* @ntfs_new_extent_inode(i32 %136, i64 %137)
  store %struct.TYPE_22__* %138, %struct.TYPE_22__** %9, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %140 = icmp ne %struct.TYPE_22__* %139, null
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %131
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 3
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 2
  %151 = call i32 @atomic_dec(i32* %150)
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  %154 = call %struct.TYPE_23__* @ERR_PTR(i32 %153)
  store %struct.TYPE_23__* %154, %struct.TYPE_23__** %4, align 8
  br label %309

155:                                              ; preds = %131
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 5
  store %struct.TYPE_20__* %158, %struct.TYPE_20__** %160, align 8
  %161 = load i64, i64* %13, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 6
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store i32 -1, i32* %165, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %169, align 8
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %171 = call %struct.TYPE_23__* @map_mft_record(%struct.TYPE_22__* %170)
  store %struct.TYPE_23__* %171, %struct.TYPE_23__** %8, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %173 = call i64 @IS_ERR(%struct.TYPE_23__* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %155
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 3
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  %181 = call i32 @atomic_dec(i32* %180)
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %183 = call i32 @ntfs_clear_extent_inode(%struct.TYPE_22__* %182)
  br label %120

184:                                              ; preds = %155
  %185 = load i64, i64* %13, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %184
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @le16_to_cpu(i32 %190)
  %192 = load i64, i64* %13, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %187
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 5
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i32, i8*, ...) @ntfs_error(i32 %199, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %201 = load i32, i32* @EIO, align 4
  %202 = sub nsw i32 0, %201
  %203 = call %struct.TYPE_23__* @ERR_PTR(i32 %202)
  store %struct.TYPE_23__* %203, %struct.TYPE_23__** %8, align 8
  br label %293

204:                                              ; preds = %187, %184
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, 3
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %271, label %210

210:                                              ; preds = %204
  %211 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %16, align 4
  %218 = load i32, i32* %16, align 4
  %219 = load i32, i32* @GFP_NOFS, align 4
  %220 = call %struct.TYPE_22__** @kmalloc(i32 %218, i32 %219)
  store %struct.TYPE_22__** %220, %struct.TYPE_22__*** %15, align 8
  %221 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %222 = icmp ne %struct.TYPE_22__** %221, null
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = call i64 @unlikely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %210
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32, i8*, ...) @ntfs_error(i32 %232, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  %236 = call %struct.TYPE_23__* @ERR_PTR(i32 %235)
  store %struct.TYPE_23__* %236, %struct.TYPE_23__** %8, align 8
  br label %293

237:                                              ; preds = %210
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %266

242:                                              ; preds = %237
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %245, align 8
  %247 = icmp ne %struct.TYPE_22__** %246, null
  %248 = xor i1 %247, true
  %249 = zext i1 %248 to i32
  %250 = call i32 @BUG_ON(i32 %249)
  %251 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %254, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sext i32 %256 to i64
  %258 = sub i64 %257, 32
  %259 = trunc i64 %258 to i32
  %260 = call i32 @memcpy(%struct.TYPE_22__** %251, %struct.TYPE_22__** %255, i32 %259)
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 0
  %264 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %263, align 8
  %265 = call i32 @kfree(%struct.TYPE_22__** %264)
  br label %266

266:                                              ; preds = %242, %237
  %267 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  store %struct.TYPE_22__** %267, %struct.TYPE_22__*** %270, align 8
  br label %271

271:                                              ; preds = %266, %204
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %275, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %276, i64 %281
  store %struct.TYPE_22__* %272, %struct.TYPE_22__** %282, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 3
  %285 = call i32 @mutex_unlock(i32* %284)
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 2
  %288 = call i32 @atomic_dec(i32* %287)
  %289 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %291 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %7, align 8
  store %struct.TYPE_22__* %290, %struct.TYPE_22__** %291, align 8
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %292, %struct.TYPE_23__** %4, align 8
  br label %309

293:                                              ; preds = %227, %194
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %295 = call i32 @unmap_mft_record(%struct.TYPE_22__* %294)
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 3
  %298 = call i32 @mutex_unlock(i32* %297)
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 2
  %301 = call i32 @atomic_dec(i32* %300)
  %302 = load i32, i32* %14, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %293
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %306 = call i32 @ntfs_clear_extent_inode(%struct.TYPE_22__* %305)
  br label %307

307:                                              ; preds = %304, %293
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %308, %struct.TYPE_23__** %4, align 8
  br label %309

309:                                              ; preds = %307, %271, %145, %120, %107, %102
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  ret %struct.TYPE_23__* %310
}

declare dso_local i64 @MREF(i32) #1

declare dso_local i64 @MSEQNO(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.TYPE_23__* @map_mft_record(%struct.TYPE_22__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_23__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @unmap_mft_record(%struct.TYPE_22__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, ...) #1

declare dso_local %struct.TYPE_23__* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ntfs_new_extent_inode(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ntfs_clear_extent_inode(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__** @kmalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_22__**, %struct.TYPE_22__**, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_22__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
