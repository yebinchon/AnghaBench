; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_facilities.c_x25_create_facilities.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_facilities.c_x25_create_facilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x25_facilities = type { i8, i8, i8, i8, i32, i32 }
%struct.x25_dte_facilities = type { i32, i32, i32, i32 }

@X25_MASK_REVERSE = common dso_local global i64 0, align 8
@X25_FAC_REVERSE = common dso_local global i32 0, align 4
@X25_MASK_THROUGHPUT = common dso_local global i64 0, align 8
@X25_FAC_THROUGHPUT = common dso_local global i32 0, align 4
@X25_MASK_PACKET_SIZE = common dso_local global i64 0, align 8
@X25_FAC_PACKET_SIZE = common dso_local global i32 0, align 4
@X25_MASK_WINDOW_SIZE = common dso_local global i64 0, align 8
@X25_FAC_WINDOW_SIZE = common dso_local global i32 0, align 4
@X25_MASK_CALLING_AE = common dso_local global i64 0, align 8
@X25_MASK_CALLED_AE = common dso_local global i64 0, align 8
@X25_MARKER = common dso_local global i32 0, align 4
@X25_DTE_SERVICES = common dso_local global i32 0, align 4
@X25_FAC_CALLING_AE = common dso_local global i32 0, align 4
@X25_FAC_CALLED_AE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x25_create_facilities(i8* %0, %struct.x25_facilities* %1, %struct.x25_dte_facilities* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.x25_facilities*, align 8
  %8 = alloca %struct.x25_dte_facilities*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.x25_facilities* %1, %struct.x25_facilities** %7, align 8
  store %struct.x25_dte_facilities* %2, %struct.x25_dte_facilities** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %20, align 1
  store i32 1, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %296

22:                                               ; preds = %4
  %23 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %24 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @X25_MASK_REVERSE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* @X25_FAC_REVERSE, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  store i8 %34, i8* %35, align 1
  %37 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %38 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  store i8 %40, i8* %41, align 1
  br label %43

43:                                               ; preds = %32, %27, %22
  %44 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %45 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* @X25_MASK_THROUGHPUT, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32, i32* @X25_FAC_THROUGHPUT, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  store i8 %55, i8* %56, align 1
  %58 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %59 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8 %61, i8* %62, align 1
  br label %64

64:                                               ; preds = %53, %48, %43
  %65 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %66 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 4
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %72 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %71, i32 0, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %118

76:                                               ; preds = %70, %64
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @X25_MASK_PACKET_SIZE, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %118

81:                                               ; preds = %76
  %82 = load i32, i32* @X25_FAC_PACKET_SIZE, align 4
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %10, align 8
  store i8 %83, i8* %84, align 1
  %86 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %87 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 4
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %97

92:                                               ; preds = %81
  %93 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %94 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %93, i32 0, i32 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  br label %97

97:                                               ; preds = %92, %91
  %98 = phi i32 [ %89, %91 ], [ %96, %92 ]
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %10, align 8
  store i8 %99, i8* %100, align 1
  %102 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %103 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  br label %113

108:                                              ; preds = %97
  %109 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %110 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 4
  %112 = sext i8 %111 to i32
  br label %113

113:                                              ; preds = %108, %107
  %114 = phi i32 [ %105, %107 ], [ %112, %108 ]
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %10, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %113, %76, %70
  %119 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %120 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %119, i32 0, i32 2
  %121 = load i8, i8* %120, align 2
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %126 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %125, i32 0, i32 3
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %172

130:                                              ; preds = %124, %118
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* @X25_MASK_WINDOW_SIZE, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %172

135:                                              ; preds = %130
  %136 = load i32, i32* @X25_FAC_WINDOW_SIZE, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  store i8 %137, i8* %138, align 1
  %140 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %141 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %140, i32 0, i32 2
  %142 = load i8, i8* %141, align 2
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %151

146:                                              ; preds = %135
  %147 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %148 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %147, i32 0, i32 3
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  br label %151

151:                                              ; preds = %146, %145
  %152 = phi i32 [ %143, %145 ], [ %150, %146 ]
  %153 = trunc i32 %152 to i8
  %154 = load i8*, i8** %10, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %10, align 8
  store i8 %153, i8* %154, align 1
  %156 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %157 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %156, i32 0, i32 3
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %151
  br label %167

162:                                              ; preds = %151
  %163 = load %struct.x25_facilities*, %struct.x25_facilities** %7, align 8
  %164 = getelementptr inbounds %struct.x25_facilities, %struct.x25_facilities* %163, i32 0, i32 2
  %165 = load i8, i8* %164, align 2
  %166 = sext i8 %165 to i32
  br label %167

167:                                              ; preds = %162, %161
  %168 = phi i32 [ %159, %161 ], [ %166, %162 ]
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %10, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %10, align 8
  store i8 %169, i8* %170, align 1
  br label %172

172:                                              ; preds = %167, %130, %124
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @X25_MASK_CALLING_AE, align 8
  %175 = load i64, i64* @X25_MASK_CALLED_AE, align 8
  %176 = or i64 %174, %175
  %177 = and i64 %173, %176
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %172
  %180 = load i32, i32* @X25_MARKER, align 4
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %10, align 8
  store i8 %181, i8* %182, align 1
  %184 = load i32, i32* @X25_DTE_SERVICES, align 4
  %185 = trunc i32 %184 to i8
  %186 = load i8*, i8** %10, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %10, align 8
  store i8 %185, i8* %186, align 1
  br label %188

188:                                              ; preds = %179, %172
  %189 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %190 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %229

193:                                              ; preds = %188
  %194 = load i64, i64* %9, align 8
  %195 = load i64, i64* @X25_MASK_CALLING_AE, align 8
  %196 = and i64 %194, %195
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %229

198:                                              ; preds = %193
  %199 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %200 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  %203 = ashr i32 %202, 1
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* @X25_FAC_CALLING_AE, align 4
  %205 = trunc i32 %204 to i8
  %206 = load i8*, i8** %10, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %10, align 8
  store i8 %205, i8* %206, align 1
  %208 = load i32, i32* %12, align 4
  %209 = add i32 1, %208
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %10, align 8
  %212 = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %212, i8** %10, align 8
  store i8 %210, i8* %211, align 1
  %213 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %214 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = trunc i32 %215 to i8
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %10, align 8
  store i8 %216, i8* %217, align 1
  %219 = load i8*, i8** %10, align 8
  %220 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %221 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @memcpy(i8* %219, i32 %222, i32 %223)
  %225 = load i32, i32* %12, align 4
  %226 = load i8*, i8** %10, align 8
  %227 = zext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %10, align 8
  br label %229

229:                                              ; preds = %198, %193, %188
  %230 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %231 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %283

234:                                              ; preds = %229
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* @X25_MASK_CALLED_AE, align 8
  %237 = and i64 %235, %236
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %283

239:                                              ; preds = %234
  %240 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %241 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = srem i32 %242, 2
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %239
  %246 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %247 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sdiv i32 %248, 2
  %250 = add nsw i32 %249, 1
  br label %256

251:                                              ; preds = %239
  %252 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %253 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sdiv i32 %254, 2
  br label %256

256:                                              ; preds = %251, %245
  %257 = phi i32 [ %250, %245 ], [ %255, %251 ]
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* @X25_FAC_CALLED_AE, align 4
  %259 = trunc i32 %258 to i8
  %260 = load i8*, i8** %10, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %10, align 8
  store i8 %259, i8* %260, align 1
  %262 = load i32, i32* %13, align 4
  %263 = add i32 1, %262
  %264 = trunc i32 %263 to i8
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %10, align 8
  store i8 %264, i8* %265, align 1
  %267 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %268 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %10, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %10, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i8*, i8** %10, align 8
  %274 = load %struct.x25_dte_facilities*, %struct.x25_dte_facilities** %8, align 8
  %275 = getelementptr inbounds %struct.x25_dte_facilities, %struct.x25_dte_facilities* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %13, align 4
  %278 = call i32 @memcpy(i8* %273, i32 %276, i32 %277)
  %279 = load i32, i32* %13, align 4
  %280 = load i8*, i8** %10, align 8
  %281 = zext i32 %279 to i64
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  store i8* %282, i8** %10, align 8
  br label %283

283:                                              ; preds = %256, %234, %229
  %284 = load i8*, i8** %10, align 8
  %285 = load i8*, i8** %6, align 8
  %286 = ptrtoint i8* %284 to i64
  %287 = ptrtoint i8* %285 to i64
  %288 = sub i64 %286, %287
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = sub nsw i32 %290, 1
  %292 = trunc i32 %291 to i8
  %293 = load i8*, i8** %6, align 8
  %294 = getelementptr inbounds i8, i8* %293, i64 0
  store i8 %292, i8* %294, align 1
  %295 = load i32, i32* %11, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %283, %18
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
