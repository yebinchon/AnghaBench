; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_make_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_data.c_xfs_dir2_data_make_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.xfs_dir2_data_free* (i32*)* }
%struct.xfs_dir2_data_free = type { i64 }
%struct.xfs_buf = type { i32* }
%struct.TYPE_10__ = type { i64, i64 }

@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_data_make_free(%struct.xfs_da_args* %0, %struct.xfs_buf* %1, i64 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.xfs_da_args*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xfs_dir2_data_free*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.xfs_dir2_data_free*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca %struct.xfs_dir2_data_free*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %7, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %13, align 8
  %26 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %27 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i8* @xfs_dir3_data_endp(i32 %28, i32* %29)
  store i8* %30, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = icmp ne i8* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %35, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %6
  %45 = load i32*, i32** %13, align 8
  %46 = bitcast i32* %45 to i8*
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = bitcast i8* %48 to i64*
  %50 = getelementptr inbounds i64, i64* %49, i64 -1
  store i64* %50, i64** %21, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i64*, i64** %21, align 8
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @be16_to_cpu(i64 %54)
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = bitcast i8* %56 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %19, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @be16_to_cpu(i64 %60)
  %62 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %44
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  br label %66

66:                                               ; preds = %65, %44
  br label %68

67:                                               ; preds = %6
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %19, align 8
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32*, i32** %13, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  %75 = load i8*, i8** %15, align 8
  %76 = icmp ult i8* %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %68
  %78 = load i32*, i32** %13, align 8
  %79 = bitcast i32* %78 to i8*
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = bitcast i8* %83 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %18, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i64 @be16_to_cpu(i64 %87)
  %89 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %18, align 8
  br label %93

93:                                               ; preds = %92, %77
  br label %95

94:                                               ; preds = %68
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %18, align 8
  br label %95

95:                                               ; preds = %94, %93
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @ASSERT(i32 %99)
  store i32 0, i32* %16, align 4
  %101 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %102 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %101, i32 0, i32 0
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.xfs_dir2_data_free* (i32*)*, %struct.xfs_dir2_data_free* (i32*)** %106, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call %struct.xfs_dir2_data_free* %107(i32* %108)
  store %struct.xfs_dir2_data_free* %109, %struct.xfs_dir2_data_free** %20, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %111 = icmp ne %struct.TYPE_10__* %110, null
  br i1 %111, label %112, label %228

112:                                              ; preds = %95
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %114 = icmp ne %struct.TYPE_10__* %113, null
  br i1 %114, label %115, label %228

115:                                              ; preds = %112
  %116 = load i32*, i32** %13, align 8
  %117 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %119 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(i32* %116, %struct.xfs_dir2_data_free* %117, %struct.TYPE_10__* %118)
  store %struct.xfs_dir2_data_free* %119, %struct.xfs_dir2_data_free** %14, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %123 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(i32* %120, %struct.xfs_dir2_data_free* %121, %struct.TYPE_10__* %122)
  store %struct.xfs_dir2_data_free* %123, %struct.xfs_dir2_data_free** %22, align 8
  %124 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %125 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %124, i64 2
  %126 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %16, align 4
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i64, i64* %10, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @be16_to_cpu(i64 %135)
  %137 = add nsw i64 %132, %136
  %138 = call i32 @be16_add_cpu(i64* %131, i64 %137)
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %140 = bitcast %struct.TYPE_10__* %139 to i8*
  %141 = load i32*, i32** %13, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = ptrtoint i8* %140 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i8* @cpu_to_be16(i32 %146)
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %149 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_10__* %148)
  store i8* %147, i8** %149, align 8
  %150 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %151 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %153 = call i32 @xfs_dir2_data_log_unused(%struct.xfs_da_args* %150, %struct.xfs_buf* %151, %struct.TYPE_10__* %152)
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %227, label %156

156:                                              ; preds = %115
  %157 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %158 = icmp ne %struct.xfs_dir2_data_free* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %22, align 8
  %161 = icmp ne %struct.xfs_dir2_data_free* %160, null
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i1 [ false, %156 ], [ %161, %159 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @ASSERT(i32 %164)
  %166 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %167 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %168 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %167, i64 1
  %169 = icmp eq %struct.xfs_dir2_data_free* %166, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %162
  %171 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %172 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %171, i64 0
  store %struct.xfs_dir2_data_free* %172, %struct.xfs_dir2_data_free** %14, align 8
  %173 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %22, align 8
  %174 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %175 = icmp eq %struct.xfs_dir2_data_free* %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @ASSERT(i32 %176)
  %178 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %179 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %178, i64 1
  store %struct.xfs_dir2_data_free* %179, %struct.xfs_dir2_data_free** %22, align 8
  br label %180

180:                                              ; preds = %170, %162
  %181 = load i32*, i32** %13, align 8
  %182 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %183 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %22, align 8
  %184 = load i32*, i32** %11, align 8
  %185 = call i32 @xfs_dir2_data_freeremove(i32* %181, %struct.xfs_dir2_data_free* %182, %struct.xfs_dir2_data_free* %183, i32* %184)
  %186 = load i32*, i32** %13, align 8
  %187 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %188 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @xfs_dir2_data_freeremove(i32* %186, %struct.xfs_dir2_data_free* %187, %struct.xfs_dir2_data_free* %188, i32* %189)
  %191 = load i32*, i32** %13, align 8
  %192 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %194 = load i32*, i32** %11, align 8
  %195 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freeinsert(i32* %191, %struct.xfs_dir2_data_free* %192, %struct.TYPE_10__* %193, i32* %194)
  store %struct.xfs_dir2_data_free* %195, %struct.xfs_dir2_data_free** %14, align 8
  %196 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %197 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %198 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %197, i64 0
  %199 = icmp eq %struct.xfs_dir2_data_free* %196, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @ASSERT(i32 %200)
  %202 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %203 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @ASSERT(i32 %209)
  %211 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %212 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %211, i64 1
  %213 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = call i32 @ASSERT(i32 %217)
  %219 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %220 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %219, i64 2
  %221 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i32 @ASSERT(i32 %225)
  br label %227

227:                                              ; preds = %180, %115
  br label %390

228:                                              ; preds = %112, %95
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %230 = icmp ne %struct.TYPE_10__* %229, null
  br i1 %230, label %231, label %281

231:                                              ; preds = %228
  %232 = load i32*, i32** %13, align 8
  %233 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %235 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(i32* %232, %struct.xfs_dir2_data_free* %233, %struct.TYPE_10__* %234)
  store %struct.xfs_dir2_data_free* %235, %struct.xfs_dir2_data_free** %14, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 1
  %238 = load i64, i64* %10, align 8
  %239 = call i32 @be16_add_cpu(i64* %237, i64 %238)
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %241 = bitcast %struct.TYPE_10__* %240 to i8*
  %242 = load i32*, i32** %13, align 8
  %243 = bitcast i32* %242 to i8*
  %244 = ptrtoint i8* %241 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  %247 = trunc i64 %246 to i32
  %248 = call i8* @cpu_to_be16(i32 %247)
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %250 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_10__* %249)
  store i8* %248, i8** %250, align 8
  %251 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %252 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %254 = call i32 @xfs_dir2_data_log_unused(%struct.xfs_da_args* %251, %struct.xfs_buf* %252, %struct.TYPE_10__* %253)
  %255 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %256 = icmp ne %struct.xfs_dir2_data_free* %255, null
  br i1 %256, label %257, label %268

257:                                              ; preds = %231
  %258 = load i32*, i32** %13, align 8
  %259 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %260 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %261 = load i32*, i32** %11, align 8
  %262 = call i32 @xfs_dir2_data_freeremove(i32* %258, %struct.xfs_dir2_data_free* %259, %struct.xfs_dir2_data_free* %260, i32* %261)
  %263 = load i32*, i32** %13, align 8
  %264 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %266 = load i32*, i32** %11, align 8
  %267 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freeinsert(i32* %263, %struct.xfs_dir2_data_free* %264, %struct.TYPE_10__* %265, i32* %266)
  br label %280

268:                                              ; preds = %231
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = call i64 @be16_to_cpu(i64 %271)
  %273 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %274 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %273, i64 2
  %275 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @be16_to_cpu(i64 %276)
  %278 = icmp sgt i64 %272, %277
  %279 = zext i1 %278 to i32
  store i32 %279, i32* %16, align 4
  br label %280

280:                                              ; preds = %268, %257
  br label %389

281:                                              ; preds = %228
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %283 = icmp ne %struct.TYPE_10__* %282, null
  br i1 %283, label %284, label %351

284:                                              ; preds = %281
  %285 = load i32*, i32** %13, align 8
  %286 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %288 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(i32* %285, %struct.xfs_dir2_data_free* %286, %struct.TYPE_10__* %287)
  store %struct.xfs_dir2_data_free* %288, %struct.xfs_dir2_data_free** %14, align 8
  %289 = load i32*, i32** %13, align 8
  %290 = bitcast i32* %289 to i8*
  %291 = load i64, i64* %9, align 8
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  %293 = bitcast i8* %292 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %293, %struct.TYPE_10__** %17, align 8
  %294 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %295 = call i8* @cpu_to_be16(i32 %294)
  %296 = ptrtoint i8* %295 to i64
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load i64, i64* %10, align 8
  %300 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @be16_to_cpu(i64 %302)
  %304 = add nsw i64 %299, %303
  %305 = trunc i64 %304 to i32
  %306 = call i8* @cpu_to_be16(i32 %305)
  %307 = ptrtoint i8* %306 to i64
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 1
  store i64 %307, i64* %309, align 8
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %311 = bitcast %struct.TYPE_10__* %310 to i8*
  %312 = load i32*, i32** %13, align 8
  %313 = bitcast i32* %312 to i8*
  %314 = ptrtoint i8* %311 to i64
  %315 = ptrtoint i8* %313 to i64
  %316 = sub i64 %314, %315
  %317 = trunc i64 %316 to i32
  %318 = call i8* @cpu_to_be16(i32 %317)
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %320 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_10__* %319)
  store i8* %318, i8** %320, align 8
  %321 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %322 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %323 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %324 = call i32 @xfs_dir2_data_log_unused(%struct.xfs_da_args* %321, %struct.xfs_buf* %322, %struct.TYPE_10__* %323)
  %325 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %326 = icmp ne %struct.xfs_dir2_data_free* %325, null
  br i1 %326, label %327, label %338

327:                                              ; preds = %284
  %328 = load i32*, i32** %13, align 8
  %329 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %330 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %14, align 8
  %331 = load i32*, i32** %11, align 8
  %332 = call i32 @xfs_dir2_data_freeremove(i32* %328, %struct.xfs_dir2_data_free* %329, %struct.xfs_dir2_data_free* %330, i32* %331)
  %333 = load i32*, i32** %13, align 8
  %334 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %336 = load i32*, i32** %11, align 8
  %337 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freeinsert(i32* %333, %struct.xfs_dir2_data_free* %334, %struct.TYPE_10__* %335, i32* %336)
  br label %350

338:                                              ; preds = %284
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = call i64 @be16_to_cpu(i64 %341)
  %343 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %344 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %343, i64 2
  %345 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = call i64 @be16_to_cpu(i64 %346)
  %348 = icmp sgt i64 %342, %347
  %349 = zext i1 %348 to i32
  store i32 %349, i32* %16, align 4
  br label %350

350:                                              ; preds = %338, %327
  br label %388

351:                                              ; preds = %281
  %352 = load i32*, i32** %13, align 8
  %353 = bitcast i32* %352 to i8*
  %354 = load i64, i64* %9, align 8
  %355 = getelementptr inbounds i8, i8* %353, i64 %354
  %356 = bitcast i8* %355 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %356, %struct.TYPE_10__** %17, align 8
  %357 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %358 = call i8* @cpu_to_be16(i32 %357)
  %359 = ptrtoint i8* %358 to i64
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 0
  store i64 %359, i64* %361, align 8
  %362 = load i64, i64* %10, align 8
  %363 = trunc i64 %362 to i32
  %364 = call i8* @cpu_to_be16(i32 %363)
  %365 = ptrtoint i8* %364 to i64
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  store i64 %365, i64* %367, align 8
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %369 = bitcast %struct.TYPE_10__* %368 to i8*
  %370 = load i32*, i32** %13, align 8
  %371 = bitcast i32* %370 to i8*
  %372 = ptrtoint i8* %369 to i64
  %373 = ptrtoint i8* %371 to i64
  %374 = sub i64 %372, %373
  %375 = trunc i64 %374 to i32
  %376 = call i8* @cpu_to_be16(i32 %375)
  %377 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %378 = call i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_10__* %377)
  store i8* %376, i8** %378, align 8
  %379 = load %struct.xfs_da_args*, %struct.xfs_da_args** %7, align 8
  %380 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %382 = call i32 @xfs_dir2_data_log_unused(%struct.xfs_da_args* %379, %struct.xfs_buf* %380, %struct.TYPE_10__* %381)
  %383 = load i32*, i32** %13, align 8
  %384 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %386 = load i32*, i32** %11, align 8
  %387 = call %struct.xfs_dir2_data_free* @xfs_dir2_data_freeinsert(i32* %383, %struct.xfs_dir2_data_free* %384, %struct.TYPE_10__* %385, i32* %386)
  br label %388

388:                                              ; preds = %351, %350
  br label %389

389:                                              ; preds = %388, %280
  br label %390

390:                                              ; preds = %389, %227
  %391 = load i32, i32* %16, align 4
  %392 = load i32*, i32** %12, align 8
  store i32 %391, i32* %392, align 4
  ret void
}

declare dso_local i8* @xfs_dir3_data_endp(i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local %struct.xfs_dir2_data_free* @xfs_dir2_data_freefind(i32*, %struct.xfs_dir2_data_free*, %struct.TYPE_10__*) #1

declare dso_local i32 @be16_add_cpu(i64*, i64) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8** @xfs_dir2_data_unused_tag_p(%struct.TYPE_10__*) #1

declare dso_local i32 @xfs_dir2_data_log_unused(%struct.xfs_da_args*, %struct.xfs_buf*, %struct.TYPE_10__*) #1

declare dso_local i32 @xfs_dir2_data_freeremove(i32*, %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free*, i32*) #1

declare dso_local %struct.xfs_dir2_data_free* @xfs_dir2_data_freeinsert(i32*, %struct.xfs_dir2_data_free*, %struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
