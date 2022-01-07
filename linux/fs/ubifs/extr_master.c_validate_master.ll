; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_master.c_validate_master.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_master.c_validate_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@SQNUM_WATERMARK = common dso_local global i64 0, align 8
@INUM_WATERMARK = common dso_local global i64 0, align 8
@UBIFS_LOG_LNUM = common dso_local global i64 0, align 8
@UBIFS_IDX_NODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"bad master node at offset %d error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @validate_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_master(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SQNUM_WATERMARK, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %574

12:                                               ; preds = %1
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 2, i32* %5, align 4
  br label %574

21:                                               ; preds = %12
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @INUM_WATERMARK, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 3, i32* %5, align 4
  br label %574

28:                                               ; preds = %21
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @UBIFS_LOG_LNUM, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %67, label %34

34:                                               ; preds = %28
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UBIFS_LOG_LNUM, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = icmp sge i64 %37, %42
  br i1 %43, label %67, label %44

44:                                               ; preds = %34
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %67, label %49

49:                                               ; preds = %44
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %67, label %57

57:                                               ; preds = %49
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %60, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57, %49, %44, %34, %28
  store i32 4, i32* %5, align 4
  br label %574

68:                                               ; preds = %57
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 34
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %102, label %77

77:                                               ; preds = %68
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 34
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %102, label %86

86:                                               ; preds = %77
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 34
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %90, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %86
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 34
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, 7
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %86, %77, %68
  store i32 5, i32* %5, align 4
  br label %574

103:                                              ; preds = %95
  %104 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %105 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %104, i32 0, i32 34
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 33
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load i64, i64* @UBIFS_IDX_NODE, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %107, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %103
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 34
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 33
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = load i64, i64* @UBIFS_IDX_NODE, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %120, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %116, %103
  store i32 6, i32* %5, align 4
  br label %574

130:                                              ; preds = %116
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %135 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %133, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 9
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %138, %130
  store i32 7, i32* %5, align 4
  br label %574

147:                                              ; preds = %138
  %148 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %149 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %148, i32 0, i32 11
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 8
  %153 = load i64, i64* %152, align 8
  %154 = icmp sge i64 %150, %153
  br i1 %154, label %191, label %155

155:                                              ; preds = %147
  %156 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %157 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %156, i32 0, i32 11
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 9
  %161 = load i64, i64* %160, align 8
  %162 = icmp slt i64 %158, %161
  br i1 %162, label %191, label %163

163:                                              ; preds = %155
  %164 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %165 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 7
  %169 = load i32, i32* %168, align 8
  %170 = srem i32 %166, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %163
  %173 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %174 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %173, i32 0, i32 12
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %172
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %179 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %182 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %191, label %185

185:                                              ; preds = %177
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = and i32 %188, 7
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185, %177, %172, %163, %155, %147
  store i32 8, i32* %5, align 4
  br label %574

192:                                              ; preds = %185
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %196, %200
  store i64 %201, i64* %4, align 8
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %203 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %202, i32 0, i32 31
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, 7
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %192
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %210 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %209, i32 0, i32 31
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %4, align 8
  %215 = icmp sge i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208, %192
  store i32 9, i32* %5, align 4
  br label %574

217:                                              ; preds = %208
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %219 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %218, i32 0, i32 14
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %222 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %221, i32 0, i32 15
  %223 = load i64, i64* %222, align 8
  %224 = icmp slt i64 %220, %223
  br i1 %224, label %251, label %225

225:                                              ; preds = %217
  %226 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %227 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %226, i32 0, i32 14
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %230 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %229, i32 0, i32 16
  %231 = load i64, i64* %230, align 8
  %232 = icmp sgt i64 %228, %231
  br i1 %232, label %251, label %233

233:                                              ; preds = %225
  %234 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %235 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %234, i32 0, i32 17
  %236 = load i64, i64* %235, align 8
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %251, label %238

238:                                              ; preds = %233
  %239 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %240 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %239, i32 0, i32 17
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %243 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %242, i32 0, i32 18
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %241, %244
  %246 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %247 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = icmp sgt i64 %245, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %238, %233, %225, %217
  store i32 10, i32* %5, align 4
  br label %574

252:                                              ; preds = %238
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %254 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %253, i32 0, i32 19
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %257 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %256, i32 0, i32 15
  %258 = load i64, i64* %257, align 8
  %259 = icmp slt i64 %255, %258
  br i1 %259, label %290, label %260

260:                                              ; preds = %252
  %261 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %262 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %261, i32 0, i32 19
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %265 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %264, i32 0, i32 16
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %263, %266
  br i1 %267, label %290, label %268

268:                                              ; preds = %260
  %269 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %270 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %269, i32 0, i32 20
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %290, label %273

273:                                              ; preds = %268
  %274 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %275 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %274, i32 0, i32 20
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %278 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %277, i32 0, i32 7
  %279 = load i32, i32* %278, align 8
  %280 = srem i32 %276, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %273
  %283 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %284 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %283, i32 0, i32 20
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %287 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = icmp sgt i32 %285, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %282, %273, %268, %260, %252
  store i32 11, i32* %5, align 4
  br label %574

291:                                              ; preds = %282
  %292 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %293 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %292, i32 0, i32 21
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %296 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %295, i32 0, i32 15
  %297 = load i64, i64* %296, align 8
  %298 = icmp slt i64 %294, %297
  br i1 %298, label %325, label %299

299:                                              ; preds = %291
  %300 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %301 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %300, i32 0, i32 21
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %304 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %303, i32 0, i32 16
  %305 = load i64, i64* %304, align 8
  %306 = icmp sgt i64 %302, %305
  br i1 %306, label %325, label %307

307:                                              ; preds = %299
  %308 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %309 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %308, i32 0, i32 22
  %310 = load i64, i64* %309, align 8
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %325, label %312

312:                                              ; preds = %307
  %313 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %314 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %313, i32 0, i32 22
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %317 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %316, i32 0, i32 23
  %318 = load i64, i64* %317, align 8
  %319 = add nsw i64 %315, %318
  %320 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %321 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = icmp sgt i64 %319, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %312, %307, %299, %291
  store i32 12, i32* %5, align 4
  br label %574

326:                                              ; preds = %312
  %327 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %328 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %327, i32 0, i32 32
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %366

331:                                              ; preds = %326
  %332 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %333 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %332, i32 0, i32 24
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %336 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %335, i32 0, i32 15
  %337 = load i64, i64* %336, align 8
  %338 = icmp slt i64 %334, %337
  br i1 %338, label %365, label %339

339:                                              ; preds = %331
  %340 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %341 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %340, i32 0, i32 24
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %344 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %343, i32 0, i32 16
  %345 = load i64, i64* %344, align 8
  %346 = icmp sgt i64 %342, %345
  br i1 %346, label %365, label %347

347:                                              ; preds = %339
  %348 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %349 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %348, i32 0, i32 25
  %350 = load i64, i64* %349, align 8
  %351 = icmp slt i64 %350, 0
  br i1 %351, label %365, label %352

352:                                              ; preds = %347
  %353 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %354 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %353, i32 0, i32 25
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %357 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %356, i32 0, i32 26
  %358 = load i64, i64* %357, align 8
  %359 = add nsw i64 %355, %358
  %360 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %361 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = icmp sgt i64 %359, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %352, %347, %339, %331
  store i32 13, i32* %5, align 4
  br label %574

366:                                              ; preds = %352, %326
  %367 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %368 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %367, i32 0, i32 27
  %369 = load i64, i64* %368, align 8
  %370 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %371 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %370, i32 0, i32 9
  %372 = load i64, i64* %371, align 8
  %373 = icmp slt i64 %369, %372
  br i1 %373, label %382, label %374

374:                                              ; preds = %366
  %375 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %376 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %375, i32 0, i32 27
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %379 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %378, i32 0, i32 8
  %380 = load i64, i64* %379, align 8
  %381 = icmp sge i64 %377, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %374, %366
  store i32 14, i32* %5, align 4
  br label %574

383:                                              ; preds = %374
  %384 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %385 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %384, i32 0, i32 30
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp slt i64 %387, 0
  br i1 %388, label %400, label %389

389:                                              ; preds = %383
  %390 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %391 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %390, i32 0, i32 30
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %395 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %394, i32 0, i32 13
  %396 = load i32, i32* %395, align 4
  %397 = sub nsw i32 %396, 2
  %398 = sext i32 %397 to i64
  %399 = icmp sgt i64 %393, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %389, %383
  store i32 15, i32* %5, align 4
  br label %574

401:                                              ; preds = %389
  %402 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %403 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %402, i32 0, i32 30
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %418, label %407

407:                                              ; preds = %401
  %408 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %409 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %408, i32 0, i32 30
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %413 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %412, i32 0, i32 13
  %414 = load i32, i32* %413, align 4
  %415 = sub nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = icmp sgt i64 %411, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %407, %401
  store i32 16, i32* %5, align 4
  br label %574

419:                                              ; preds = %407
  %420 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %421 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %420, i32 0, i32 30
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = icmp slt i64 %423, 0
  br i1 %424, label %439, label %425

425:                                              ; preds = %419
  %426 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %427 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %426, i32 0, i32 30
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* %4, align 8
  %431 = icmp sgt i64 %429, %430
  br i1 %431, label %439, label %432

432:                                              ; preds = %425
  %433 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %434 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %433, i32 0, i32 30
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 2
  %436 = load i64, i64* %435, align 8
  %437 = and i64 %436, 7
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %432, %425, %419
  store i32 17, i32* %5, align 4
  br label %574

440:                                              ; preds = %432
  %441 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %442 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %441, i32 0, i32 30
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = icmp slt i32 %444, 0
  br i1 %445, label %453, label %446

446:                                              ; preds = %440
  %447 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %448 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %447, i32 0, i32 30
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = and i32 %450, 7
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %446, %440
  store i32 18, i32* %5, align 4
  br label %574

454:                                              ; preds = %446
  %455 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %456 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %455, i32 0, i32 30
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = icmp slt i32 %458, 0
  br i1 %459, label %467, label %460

460:                                              ; preds = %454
  %461 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %462 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %461, i32 0, i32 30
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 4
  %464 = load i32, i32* %463, align 4
  %465 = and i32 %464, 7
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %460, %454
  store i32 19, i32* %5, align 4
  br label %574

468:                                              ; preds = %460
  %469 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %470 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %469, i32 0, i32 30
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 2
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %474 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %473, i32 0, i32 30
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 8
  %477 = sext i32 %476 to i64
  %478 = add nsw i64 %472, %477
  %479 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %480 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %479, i32 0, i32 30
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  %484 = add nsw i64 %478, %483
  %485 = load i64, i64* %4, align 8
  %486 = icmp sgt i64 %484, %485
  br i1 %486, label %487, label %488

487:                                              ; preds = %468
  store i32 20, i32* %5, align 4
  br label %574

488:                                              ; preds = %468
  %489 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %490 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %489, i32 0, i32 30
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 5
  %492 = load i64, i64* %491, align 8
  %493 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %494 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %493, i32 0, i32 30
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i32 0, i32 6
  %496 = load i64, i64* %495, align 8
  %497 = add nsw i64 %492, %496
  %498 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %499 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %498, i32 0, i32 30
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 4
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  %503 = add nsw i64 %497, %502
  %504 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %505 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %504, i32 0, i32 31
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = sext i32 %507 to i64
  %509 = add nsw i64 %503, %508
  %510 = load i64, i64* %4, align 8
  %511 = icmp sgt i64 %509, %510
  br i1 %511, label %512, label %513

512:                                              ; preds = %488
  store i32 21, i32* %5, align 4
  br label %574

513:                                              ; preds = %488
  %514 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %515 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %514, i32 0, i32 30
  %516 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %515, i32 0, i32 5
  %517 = load i64, i64* %516, align 8
  %518 = icmp slt i64 %517, 0
  br i1 %518, label %542, label %519

519:                                              ; preds = %513
  %520 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %521 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %520, i32 0, i32 30
  %522 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %521, i32 0, i32 5
  %523 = load i64, i64* %522, align 8
  %524 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %525 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %524, i32 0, i32 30
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 2
  %527 = load i64, i64* %526, align 8
  %528 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %529 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %528, i32 0, i32 30
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 8
  %532 = sext i32 %531 to i64
  %533 = add nsw i64 %527, %532
  %534 = icmp sgt i64 %523, %533
  br i1 %534, label %542, label %535

535:                                              ; preds = %519
  %536 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %537 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %536, i32 0, i32 30
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 5
  %539 = load i64, i64* %538, align 8
  %540 = and i64 %539, 7
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %543

542:                                              ; preds = %535, %519, %513
  store i32 22, i32* %5, align 4
  br label %574

543:                                              ; preds = %535
  %544 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %545 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %544, i32 0, i32 30
  %546 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %545, i32 0, i32 6
  %547 = load i64, i64* %546, align 8
  %548 = icmp slt i64 %547, 0
  br i1 %548, label %572, label %549

549:                                              ; preds = %543
  %550 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %551 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %550, i32 0, i32 30
  %552 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %551, i32 0, i32 6
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %555 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %554, i32 0, i32 30
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %555, i32 0, i32 2
  %557 = load i64, i64* %556, align 8
  %558 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %559 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %558, i32 0, i32 30
  %560 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %559, i32 0, i32 3
  %561 = load i32, i32* %560, align 8
  %562 = sext i32 %561 to i64
  %563 = add nsw i64 %557, %562
  %564 = icmp sgt i64 %553, %563
  br i1 %564, label %572, label %565

565:                                              ; preds = %549
  %566 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %567 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %566, i32 0, i32 30
  %568 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %567, i32 0, i32 6
  %569 = load i64, i64* %568, align 8
  %570 = and i64 %569, 7
  %571 = icmp ne i64 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %565, %549, %543
  store i32 23, i32* %5, align 4
  br label %574

573:                                              ; preds = %565
  store i32 0, i32* %2, align 4
  br label %588

574:                                              ; preds = %572, %542, %512, %487, %467, %453, %439, %418, %400, %382, %365, %325, %290, %251, %216, %191, %146, %129, %102, %67, %27, %20, %11
  %575 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %576 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %577 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %576, i32 0, i32 29
  %578 = load i32, i32* %577, align 4
  %579 = load i32, i32* %5, align 4
  %580 = call i32 @ubifs_err(%struct.ubifs_info* %575, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %578, i32 %579)
  %581 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %582 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %583 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %582, i32 0, i32 28
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @ubifs_dump_node(%struct.ubifs_info* %581, i32 %584)
  %586 = load i32, i32* @EINVAL, align 4
  %587 = sub nsw i32 0, %586
  store i32 %587, i32* %2, align 4
  br label %588

588:                                              ; preds = %574, %573
  %589 = load i32, i32* %2, align 4
  ret i32 %589
}

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
