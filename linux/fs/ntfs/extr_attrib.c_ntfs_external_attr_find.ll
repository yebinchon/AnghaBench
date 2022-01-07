; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_external_attr_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_external_attr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_18__*, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i64, i32, i64, i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, %struct.TYPE_20__, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, i64, i32, i64, i32, i32, i32 }

@ntfs_external_attr_find.es = internal global i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [25 x i8] c" Unmount and run chkdsk.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Entering for inode 0x%lx, type 0x%x.\00", align 1
@AT_END = common dso_local global i64 0, align 8
@IGNORE_CASE = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"Found stale mft reference in attribute list of base inode 0x%lx.%s\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"Failed to map extent mft record 0x%lx of base inode 0x%lx.%s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Done, found.\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"Base inode 0x%lx contains corrupt attribute list attribute.%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Done, not found.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i64, i32, i64, i32*, i64, %struct.TYPE_23__*)* @ntfs_external_attr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntfs_external_attr_find(i64 %0, i32* %1, i64 %2, i32 %3, i64 %4, i32* %5, i64 %6, %struct.TYPE_23__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_25__*, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, i64* %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %17, align 8
  store i32 0, i32* %28, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %19, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %18, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %42 = icmp ne %struct.TYPE_22__* %41, null
  br i1 %42, label %54, label %43

43:                                               ; preds = %8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 3
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %48, align 8
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %18, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 5
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %53, align 8
  br label %54

54:                                               ; preds = %43, %8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %57 = icmp eq %struct.TYPE_22__* %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %60, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  store %struct.TYPE_24__* %61, %struct.TYPE_24__** %63, align 8
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @AT_END, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %629

69:                                               ; preds = %64
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %71, align 8
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %20, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %23, align 8
  %76 = load i32*, i32** %23, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %24, align 8
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 7
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %83, align 8
  %85 = icmp ne %struct.TYPE_25__* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %69
  %87 = load i32*, i32** %23, align 8
  %88 = bitcast i32* %87 to %struct.TYPE_25__*
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 7
  store %struct.TYPE_25__* %88, %struct.TYPE_25__** %90, align 8
  br label %91

91:                                               ; preds = %86, %69
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  store %struct.TYPE_25__* %99, %struct.TYPE_25__** %21, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %116

102:                                              ; preds = %91
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %104, align 8
  %106 = bitcast %struct.TYPE_25__* %105 to i32*
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 7
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @le16_to_cpu(i32 %111)
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %106, i64 %113
  %115 = bitcast i32* %114 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %115, %struct.TYPE_25__** %21, align 8
  br label %116

116:                                              ; preds = %102, %96
  br label %117

117:                                              ; preds = %579, %116
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %119 = bitcast %struct.TYPE_25__* %118 to i32*
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ult i32* %119, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %117
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %126 = bitcast %struct.TYPE_25__* %125 to i32*
  %127 = load i32*, i32** %24, align 8
  %128 = icmp ugt i32* %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %117
  br label %581

130:                                              ; preds = %124
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 7
  store %struct.TYPE_25__* %131, %struct.TYPE_25__** %133, align 8
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %135 = bitcast %struct.TYPE_25__* %134 to i32*
  %136 = load i32*, i32** %24, align 8
  %137 = icmp eq i32* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %629

139:                                              ; preds = %130
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %581

145:                                              ; preds = %139
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %147 = bitcast %struct.TYPE_25__* %146 to i32*
  %148 = getelementptr inbounds i32, i32* %147, i64 6
  %149 = load i32*, i32** %24, align 8
  %150 = icmp ugt i32* %148, %149
  br i1 %150, label %162, label %151

151:                                              ; preds = %145
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %153 = bitcast %struct.TYPE_25__* %152 to i32*
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @le16_to_cpu(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %153, i64 %158
  %160 = load i32*, i32** %24, align 8
  %161 = icmp ugt i32* %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %151, %145
  br label %581

163:                                              ; preds = %151
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %165 = bitcast %struct.TYPE_25__* %164 to i32*
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @le16_to_cpu(i32 %168)
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = bitcast i32* %171 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %172, %struct.TYPE_25__** %22, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @le32_to_cpu(i64 %175)
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @le32_to_cpu(i64 %177)
  %179 = icmp sgt i32 %176, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %163
  br label %629

181:                                              ; preds = %163
  %182 = load i64, i64* %10, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %182, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %579

188:                                              ; preds = %181
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %27, align 8
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %193 = bitcast %struct.TYPE_25__* %192 to i32*
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  store i32* %198, i32** %26, align 8
  %199 = load i32*, i32** %11, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %206, label %201

201:                                              ; preds = %188
  %202 = load i64, i64* %27, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  br label %629

205:                                              ; preds = %201
  br label %262

206:                                              ; preds = %188
  %207 = load i32*, i32** %26, align 8
  %208 = load i64, i64* %27, align 8
  %209 = load i32*, i32** %11, align 8
  %210 = load i64, i64* %12, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @ntfs_are_names_equal(i32* %207, i64 %208, i32* %209, i64 %210, i32 %211, i32 %214, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %261, label %220

220:                                              ; preds = %206
  %221 = load i32*, i32** %11, align 8
  %222 = load i64, i64* %12, align 8
  %223 = load i32*, i32** %26, align 8
  %224 = load i64, i64* %27, align 8
  %225 = load i32, i32* @IGNORE_CASE, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ntfs_collate_names(i32* %221, i64 %222, i32* %223, i64 %224, i32 1, i32 %225, i32 %228, i32 %231)
  store i32 %232, i32* %29, align 4
  %233 = load i32, i32* %29, align 4
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %236

235:                                              ; preds = %220
  br label %629

236:                                              ; preds = %220
  %237 = load i32, i32* %29, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %579

240:                                              ; preds = %236
  %241 = load i32*, i32** %11, align 8
  %242 = load i64, i64* %12, align 8
  %243 = load i32*, i32** %26, align 8
  %244 = load i64, i64* %27, align 8
  %245 = load i32, i32* @CASE_SENSITIVE, align 4
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @ntfs_collate_names(i32* %241, i64 %242, i32* %243, i64 %244, i32 1, i32 %245, i32 %248, i32 %251)
  store i32 %252, i32* %29, align 4
  %253 = load i32, i32* %29, align 4
  %254 = icmp eq i32 %253, -1
  br i1 %254, label %255, label %256

255:                                              ; preds = %240
  br label %629

256:                                              ; preds = %240
  %257 = load i32, i32* %29, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  br label %579

260:                                              ; preds = %256
  br label %261

261:                                              ; preds = %260, %206
  br label %262

262:                                              ; preds = %261, %205
  %263 = load i64, i64* %14, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %331

265:                                              ; preds = %262
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %267 = bitcast %struct.TYPE_25__* %266 to i32*
  %268 = load i32*, i32** %23, align 8
  %269 = icmp uge i32* %267, %268
  br i1 %269, label %270, label %331

270:                                              ; preds = %265
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %272 = bitcast %struct.TYPE_25__* %271 to i32*
  %273 = getelementptr inbounds i32, i32* %272, i64 6
  %274 = load i32*, i32** %24, align 8
  %275 = icmp ult i32* %273, %274
  br i1 %275, label %276, label %331

276:                                              ; preds = %270
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %278 = bitcast %struct.TYPE_25__* %277 to i32*
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 6
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @le16_to_cpu(i32 %281)
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %278, i64 %283
  %285 = load i32*, i32** %24, align 8
  %286 = icmp ule i32* %284, %285
  br i1 %286, label %287, label %331

287:                                              ; preds = %276
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 5
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @sle64_to_cpu(i32 %290)
  %292 = load i64, i64* %14, align 8
  %293 = icmp sle i64 %291, %292
  br i1 %293, label %294, label %331

294:                                              ; preds = %287
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp eq i64 %297, %300
  br i1 %301, label %302, label %331

302:                                              ; preds = %294
  %303 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %304 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %27, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %331

308:                                              ; preds = %302
  %309 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %310 = bitcast %struct.TYPE_25__* %309 to i32*
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %310, i64 %314
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i32*, i32** %26, align 8
  %320 = load i64, i64* %27, align 8
  %321 = load i32, i32* @CASE_SENSITIVE, align 4
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %326 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = call i64 @ntfs_are_names_equal(i32* %315, i64 %318, i32* %319, i64 %320, i32 %321, i32 %324, i32 %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %308
  br label %579

331:                                              ; preds = %308, %302, %294, %287, %276, %270, %265, %262
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 8
  %335 = call i64 @MREF_LE(i32 %334)
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp eq i64 %335, %338
  br i1 %339, label %340, label %361

340:                                              ; preds = %331
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 4
  %343 = load i32, i32* %342, align 8
  %344 = call i64 @MSEQNO_LE(i32 %343)
  %345 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 2
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %344, %347
  br i1 %348, label %349, label %360

349:                                              ; preds = %340
  %350 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %351 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i8*, i8** @ntfs_external_attr_find.es, align 8
  %357 = call i32 (i32, i8*, i64, i8*, ...) @ntfs_error(i32 %352, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %355, i8* %356)
  %358 = load i32, i32* @EIO, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %28, align 4
  br label %581

360:                                              ; preds = %340
  br label %446

361:                                              ; preds = %331
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %364 = icmp ne %struct.TYPE_22__* %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %361
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %367 = call i32 @unmap_extent_mft_record(%struct.TYPE_22__* %366)
  br label %368

368:                                              ; preds = %365, %361
  %369 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %370 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %369, i32 0, i32 4
  %371 = load i32, i32* %370, align 8
  %372 = call i64 @MREF_LE(i32 %371)
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp eq i64 %372, %375
  br i1 %376, label %377, label %386

377:                                              ; preds = %368
  %378 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 4
  store %struct.TYPE_22__* %378, %struct.TYPE_22__** %380, align 8
  store %struct.TYPE_22__* %378, %struct.TYPE_22__** %19, align 8
  %381 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %382, align 8
  %384 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %385 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %384, i32 0, i32 5
  store %struct.TYPE_18__* %383, %struct.TYPE_18__** %385, align 8
  br label %430

386:                                              ; preds = %368
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @le64_to_cpu(i32 %390)
  %392 = call %struct.TYPE_18__* @map_extent_mft_record(%struct.TYPE_22__* %387, i32 %391, %struct.TYPE_22__** %19)
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 5
  store %struct.TYPE_18__* %392, %struct.TYPE_18__** %394, align 8
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 5
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %396, align 8
  %398 = call i64 @IS_ERR(%struct.TYPE_18__* %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %426

400:                                              ; preds = %386
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 8
  %407 = call i64 @MREF_LE(i32 %406)
  %408 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %409 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = inttoptr i64 %410 to i8*
  %412 = load i8*, i8** @ntfs_external_attr_find.es, align 8
  %413 = call i32 (i32, i8*, i64, i8*, ...) @ntfs_error(i32 %403, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %407, i8* %411, i8* %412)
  %414 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %415 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %414, i32 0, i32 5
  %416 = load %struct.TYPE_18__*, %struct.TYPE_18__** %415, align 8
  %417 = call i32 @PTR_ERR(%struct.TYPE_18__* %416)
  store i32 %417, i32* %28, align 4
  %418 = load i32, i32* %28, align 4
  %419 = load i32, i32* @ENOENT, align 4
  %420 = sub nsw i32 0, %419
  %421 = icmp eq i32 %418, %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %400
  %423 = load i32, i32* @EIO, align 4
  %424 = sub nsw i32 0, %423
  store i32 %424, i32* %28, align 4
  br label %425

425:                                              ; preds = %422, %400
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %19, align 8
  br label %581

426:                                              ; preds = %386
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %429 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %428, i32 0, i32 4
  store %struct.TYPE_22__* %427, %struct.TYPE_22__** %429, align 8
  br label %430

430:                                              ; preds = %426, %377
  %431 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %431, i32 0, i32 5
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %432, align 8
  %434 = bitcast %struct.TYPE_18__* %433 to i32*
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 5
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @le16_to_cpu(i32 %439)
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %434, i64 %441
  %443 = bitcast i32* %442 to %struct.TYPE_24__*
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 6
  store %struct.TYPE_24__* %443, %struct.TYPE_24__** %445, align 8
  br label %446

446:                                              ; preds = %430, %360
  %447 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %447, i32 0, i32 6
  %449 = load %struct.TYPE_24__*, %struct.TYPE_24__** %448, align 8
  store %struct.TYPE_24__* %449, %struct.TYPE_24__** %25, align 8
  br label %450

450:                                              ; preds = %569, %446
  %451 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %452 = bitcast %struct.TYPE_24__* %451 to i32*
  %453 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %454 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %453, i32 0, i32 5
  %455 = load %struct.TYPE_18__*, %struct.TYPE_18__** %454, align 8
  %456 = bitcast %struct.TYPE_18__* %455 to i32*
  %457 = icmp ult i32* %452, %456
  br i1 %457, label %474, label %458

458:                                              ; preds = %450
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %460 = bitcast %struct.TYPE_24__* %459 to i32*
  %461 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %462 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %461, i32 0, i32 5
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %462, align 8
  %464 = bitcast %struct.TYPE_18__* %463 to i32*
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %466 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %465, i32 0, i32 5
  %467 = load %struct.TYPE_18__*, %struct.TYPE_18__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %467, i32 0, i32 0
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @le32_to_cpu(i64 %469)
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %464, i64 %471
  %473 = icmp ugt i32* %460, %472
  br i1 %473, label %474, label %475

474:                                              ; preds = %458, %450
  br label %581

475:                                              ; preds = %458
  %476 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %477 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @AT_END, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %482

481:                                              ; preds = %475
  br label %581

482:                                              ; preds = %475
  %483 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %488, label %487

487:                                              ; preds = %482
  br label %581

488:                                              ; preds = %482
  %489 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %490 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %489, i32 0, i32 3
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 2
  %494 = load i64, i64* %493, align 8
  %495 = icmp ne i64 %491, %494
  br i1 %495, label %496, label %497

496:                                              ; preds = %488
  br label %569

497:                                              ; preds = %488
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 0
  %500 = load i64, i64* %499, align 8
  %501 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %502 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %501, i32 0, i32 0
  %503 = load i64, i64* %502, align 8
  %504 = icmp ne i64 %500, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %497
  br label %581

506:                                              ; preds = %497
  %507 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %508 = bitcast %struct.TYPE_24__* %507 to i32*
  %509 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %510 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %509, i32 0, i32 6
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @le16_to_cpu(i32 %511)
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %508, i64 %513
  %515 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %516 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %515, i32 0, i32 3
  %517 = load i64, i64* %516, align 8
  %518 = load i32*, i32** %26, align 8
  %519 = load i64, i64* %27, align 8
  %520 = load i32, i32* @CASE_SENSITIVE, align 4
  %521 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %522 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %525 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %524, i32 0, i32 1
  %526 = load i32, i32* %525, align 4
  %527 = call i64 @ntfs_are_names_equal(i32* %514, i64 %517, i32* %518, i64 %519, i32 %520, i32 %523, i32 %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %530, label %529

529:                                              ; preds = %506
  br label %581

530:                                              ; preds = %506
  %531 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %532 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %533 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %532, i32 0, i32 6
  store %struct.TYPE_24__* %531, %struct.TYPE_24__** %533, align 8
  %534 = load i32*, i32** %15, align 8
  %535 = icmp ne i32* %534, null
  br i1 %535, label %536, label %566

536:                                              ; preds = %530
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 5
  %539 = load i32, i32* %538, align 8
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %568, label %541

541:                                              ; preds = %536
  %542 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %543 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %542, i32 0, i32 4
  %544 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %544, i32 0, i32 0
  %546 = load i64, i64* %545, align 8
  %547 = call i32 @le32_to_cpu(i64 %546)
  %548 = sext i32 %547 to i64
  %549 = load i64, i64* %16, align 8
  %550 = icmp eq i64 %548, %549
  br i1 %550, label %551, label %568

551:                                              ; preds = %541
  %552 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %553 = bitcast %struct.TYPE_24__* %552 to i32*
  %554 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %555 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %554, i32 0, i32 4
  %556 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = call i32 @le16_to_cpu(i32 %558)
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %553, i64 %560
  %562 = load i32*, i32** %15, align 8
  %563 = load i64, i64* %16, align 8
  %564 = call i32 @memcmp(i32* %561, i32* %562, i64 %563)
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %568, label %566

566:                                              ; preds = %551, %530
  %567 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %699

568:                                              ; preds = %551, %541, %536
  br label %569

569:                                              ; preds = %568, %496
  %570 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %571 = bitcast %struct.TYPE_24__* %570 to i32*
  %572 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %572, i32 0, i32 1
  %574 = load i64, i64* %573, align 8
  %575 = call i32 @le32_to_cpu(i64 %574)
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32, i32* %571, i64 %576
  %578 = bitcast i32* %577 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %578, %struct.TYPE_24__** %25, align 8
  br label %450

579:                                              ; preds = %330, %259, %239, %187
  %580 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  store %struct.TYPE_25__* %580, %struct.TYPE_25__** %21, align 8
  br label %117

581:                                              ; preds = %529, %505, %487, %481, %474, %425, %349, %162, %144, %129
  %582 = load i32, i32* %28, align 4
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %595, label %584

584:                                              ; preds = %581
  %585 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %586 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %589 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %588, i32 0, i32 0
  %590 = load i64, i64* %589, align 8
  %591 = load i8*, i8** @ntfs_external_attr_find.es, align 8
  %592 = call i32 (i32, i8*, i64, i8*, ...) @ntfs_error(i32 %587, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i64 %590, i8* %591)
  %593 = load i32, i32* @EIO, align 4
  %594 = sub nsw i32 0, %593
  store i32 %594, i32* %28, align 4
  br label %595

595:                                              ; preds = %584, %581
  %596 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %597 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %598 = icmp ne %struct.TYPE_22__* %596, %597
  br i1 %598, label %599, label %619

599:                                              ; preds = %595
  %600 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %601 = icmp ne %struct.TYPE_22__* %600, null
  br i1 %601, label %602, label %605

602:                                              ; preds = %599
  %603 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %604 = call i32 @unmap_extent_mft_record(%struct.TYPE_22__* %603)
  br label %605

605:                                              ; preds = %602, %599
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %607 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %608 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %607, i32 0, i32 4
  store %struct.TYPE_22__* %606, %struct.TYPE_22__** %608, align 8
  %609 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %610 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %609, i32 0, i32 2
  %611 = load %struct.TYPE_18__*, %struct.TYPE_18__** %610, align 8
  %612 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %613 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %612, i32 0, i32 5
  store %struct.TYPE_18__* %611, %struct.TYPE_18__** %613, align 8
  %614 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %615 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %614, i32 0, i32 1
  %616 = load %struct.TYPE_24__*, %struct.TYPE_24__** %615, align 8
  %617 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %618 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %617, i32 0, i32 6
  store %struct.TYPE_24__* %616, %struct.TYPE_24__** %618, align 8
  br label %619

619:                                              ; preds = %605, %595
  %620 = load i32, i32* %28, align 4
  %621 = load i32, i32* @ENOMEM, align 4
  %622 = sub nsw i32 0, %621
  %623 = icmp ne i32 %620, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %619
  %625 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %626 = call i32 @NVolSetErrors(%struct.TYPE_21__* %625)
  br label %627

627:                                              ; preds = %624, %619
  %628 = load i32, i32* %28, align 4
  store i32 %628, i32* %9, align 4
  br label %699

629:                                              ; preds = %255, %235, %204, %180, %138, %68
  %630 = load i64, i64* %10, align 8
  %631 = load i64, i64* @AT_END, align 8
  %632 = icmp eq i64 %630, %631
  br i1 %632, label %633, label %644

633:                                              ; preds = %629
  %634 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %635 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_23__* %634)
  %636 = load i64, i64* @AT_END, align 8
  %637 = load i32*, i32** %11, align 8
  %638 = load i64, i64* %12, align 8
  %639 = load i32, i32* %13, align 4
  %640 = load i32*, i32** %15, align 8
  %641 = load i64, i64* %16, align 8
  %642 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %643 = call i32 @ntfs_attr_find(i64 %636, i32* %637, i64 %638, i32 %639, i32* %640, i64 %641, %struct.TYPE_23__* %642)
  store i32 %643, i32* %9, align 4
  br label %699

644:                                              ; preds = %629
  %645 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %646 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %647 = icmp ne %struct.TYPE_22__* %645, %646
  br i1 %647, label %648, label %651

648:                                              ; preds = %644
  %649 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %650 = call i32 @unmap_extent_mft_record(%struct.TYPE_22__* %649)
  br label %651

651:                                              ; preds = %648, %644
  %652 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %653 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %652, i32 0, i32 2
  %654 = load %struct.TYPE_18__*, %struct.TYPE_18__** %653, align 8
  %655 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %656 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %655, i32 0, i32 5
  store %struct.TYPE_18__* %654, %struct.TYPE_18__** %656, align 8
  %657 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %658 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %657, i32 0, i32 5
  %659 = load %struct.TYPE_18__*, %struct.TYPE_18__** %658, align 8
  %660 = bitcast %struct.TYPE_18__* %659 to i32*
  %661 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %662 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %661, i32 0, i32 5
  %663 = load %struct.TYPE_18__*, %struct.TYPE_18__** %662, align 8
  %664 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %663, i32 0, i32 1
  %665 = load i32, i32* %664, align 8
  %666 = call i32 @le16_to_cpu(i32 %665)
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds i32, i32* %660, i64 %667
  %669 = bitcast i32* %668 to %struct.TYPE_24__*
  %670 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %671 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %670, i32 0, i32 6
  store %struct.TYPE_24__* %669, %struct.TYPE_24__** %671, align 8
  %672 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %673 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %672, i32 0, i32 0
  store i32 1, i32* %673, align 8
  %674 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %675 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %676 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %675, i32 0, i32 4
  store %struct.TYPE_22__* %674, %struct.TYPE_22__** %676, align 8
  %677 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %678 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %677, i32 0, i32 3
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %678, align 8
  %679 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %680 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %679, i32 0, i32 2
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %680, align 8
  %681 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %682 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %681, i32 0, i32 1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %682, align 8
  br label %683

683:                                              ; preds = %692, %651
  %684 = load i64, i64* %10, align 8
  %685 = load i32*, i32** %11, align 8
  %686 = load i64, i64* %12, align 8
  %687 = load i32, i32* %13, align 4
  %688 = load i32*, i32** %15, align 8
  %689 = load i64, i64* %16, align 8
  %690 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %691 = call i32 @ntfs_attr_find(i64 %684, i32* %685, i64 %686, i32 %687, i32* %688, i64 %689, %struct.TYPE_23__* %690)
  store i32 %691, i32* %28, align 4
  br label %692

692:                                              ; preds = %683
  %693 = load i32, i32* %28, align 4
  %694 = icmp ne i32 %693, 0
  %695 = xor i1 %694, true
  br i1 %695, label %683, label %696

696:                                              ; preds = %692
  %697 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %698 = load i32, i32* %28, align 4
  store i32 %698, i32* %9, align 4
  br label %699

699:                                              ; preds = %696, %633, %627, %566
  %700 = load i32, i32* %9, align 4
  ret i32 %700
}

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i64 @ntfs_are_names_equal(i32*, i64, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @ntfs_collate_names(i32*, i64, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @sle64_to_cpu(i32) #1

declare dso_local i64 @MREF_LE(i32) #1

declare dso_local i64 @MSEQNO_LE(i32) #1

declare dso_local i32 @ntfs_error(i32, i8*, i64, i8*, ...) #1

declare dso_local i32 @unmap_extent_mft_record(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_18__* @map_extent_mft_record(%struct.TYPE_22__*, i32, %struct.TYPE_22__**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_18__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_18__*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @NVolSetErrors(%struct.TYPE_21__*) #1

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_23__*) #1

declare dso_local i32 @ntfs_attr_find(i64, i32*, i64, i32, i32*, i64, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
