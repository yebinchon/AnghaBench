; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8byte.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_utf8-norm.c_utf8byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8cursor = type { i8*, i8*, i64, i32, i32, i64, i32*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@STOPPER = common dso_local global i32 0, align 4
@utf8agetab = common dso_local global i64* null, align 8
@DECOMPOSE = common dso_local global i32 0, align 4
@MINCCC = common dso_local global i32 0, align 4
@MAXCCC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8byte(%struct.utf8cursor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.utf8cursor*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.utf8cursor* %0, %struct.utf8cursor** %3, align 8
  br label %6

6:                                                ; preds = %371, %172, %1
  %7 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %8 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %6
  %12 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %13 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %20 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %23 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %25 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %24, i32 0, i32 0
  store i8* null, i8** %25, align 8
  br label %26

26:                                               ; preds = %18, %11, %6
  %27 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %28 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  %32 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %33 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %38 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36, %31
  %44 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %45 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @STOPPER, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %372

50:                                               ; preds = %43
  %51 = load i32, i32* @STOPPER, align 4
  store i32 %51, i32* %5, align 4
  br label %238

52:                                               ; preds = %36, %26
  %53 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %54 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %57, 192
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  %61 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %62 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %67 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %60
  %71 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %72 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %72, align 8
  %75 = load i8, i8* %73, align 1
  %76 = zext i8 %75 to i32
  store i32 %76, i32* %2, align 4
  br label %372

77:                                               ; preds = %52
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %80 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %85 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %84, i32 0, i32 9
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %88 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %91 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = call i32* @utf8lookup(%struct.TYPE_3__* %86, i32 %89, i32* %93)
  store i32* %94, i32** %4, align 8
  br label %110

95:                                               ; preds = %78
  %96 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %97 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %96, i32 0, i32 9
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %100 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %103 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %107 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32* @utf8nlookup(%struct.TYPE_3__* %98, i32 %101, i32* %105, i64 %108)
  store i32* %109, i32** %4, align 8
  br label %110

110:                                              ; preds = %95, %83
  %111 = load i32*, i32** %4, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  store i32 -1, i32* %2, align 4
  br label %372

114:                                              ; preds = %110
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @LEAF_CCC(i32* %115)
  store i32 %116, i32* %5, align 4
  %117 = load i64*, i64** @utf8agetab, align 8
  %118 = load i32*, i32** %4, align 8
  %119 = call i64 @LEAF_GEN(i32* %118)
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %123 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %122, i32 0, i32 9
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %121, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %114
  %129 = load i32, i32* @STOPPER, align 4
  store i32 %129, i32* %5, align 4
  br label %194

130:                                              ; preds = %114
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @DECOMPOSE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %193

134:                                              ; preds = %130
  %135 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %136 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = bitcast i8* %137 to i32*
  %139 = call i64 @utf8clen(i32* %138)
  %140 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %141 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %145 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %148 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = bitcast i8* %149 to i32*
  %151 = call i64 @utf8clen(i32* %150)
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  %153 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %154 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load i32*, i32** %4, align 8
  %156 = call i32* @LEAF_STR(i32* %155)
  %157 = bitcast i32* %156 to i8*
  %158 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %159 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %161 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %134
  %167 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %168 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @STOPPER, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %6

173:                                              ; preds = %166
  %174 = load i32, i32* @STOPPER, align 4
  store i32 %174, i32* %5, align 4
  br label %238

175:                                              ; preds = %134
  %176 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %177 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %176, i32 0, i32 9
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %177, align 8
  %179 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %180 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %183 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = bitcast i8* %184 to i32*
  %186 = call i32* @utf8lookup(%struct.TYPE_3__* %178, i32 %181, i32* %185)
  store i32* %186, i32** %4, align 8
  %187 = load i32*, i32** %4, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %175
  store i32 -1, i32* %2, align 4
  br label %372

190:                                              ; preds = %175
  %191 = load i32*, i32** %4, align 8
  %192 = call i32 @LEAF_CCC(i32* %191)
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %190, %130
  br label %194

194:                                              ; preds = %193, %128
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @STOPPER, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %194
  %199 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %200 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %5, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %198
  %205 = load i32, i32* %5, align 4
  %206 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %207 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %205, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %204
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %213 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %210, %204, %198, %194
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %217 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %215, %218
  br i1 %219, label %220, label %237

220:                                              ; preds = %214
  %221 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %222 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %227 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, -1
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %225, %220
  %231 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %232 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %232, align 8
  %235 = load i8, i8* %233, align 1
  %236 = zext i8 %235 to i32
  store i32 %236, i32* %2, align 4
  br label %372

237:                                              ; preds = %214
  br label %238

238:                                              ; preds = %237, %173, %50
  %239 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %240 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @STOPPER, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %293

244:                                              ; preds = %238
  %245 = load i32, i32* @MINCCC, align 4
  %246 = sub nsw i32 %245, 1
  %247 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %248 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 8
  %249 = load i32, i32* %5, align 4
  %250 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %251 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 4
  %252 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %253 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = ptrtoint i8* %254 to i64
  %256 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %257 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %256, i32 0, i32 5
  store i64 %255, i64* %257, align 8
  %258 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %259 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = bitcast i8* %260 to i32*
  %262 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %263 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %262, i32 0, i32 6
  store i32* %261, i32** %263, align 8
  %264 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %265 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %268 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %267, i32 0, i32 7
  store i64 %266, i64* %268, align 8
  %269 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %270 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %283, label %273

273:                                              ; preds = %244
  %274 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %275 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = bitcast i8* %276 to i32*
  %278 = call i64 @utf8clen(i32* %277)
  %279 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %280 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = sub nsw i64 %281, %278
  store i64 %282, i64* %280, align 8
  br label %283

283:                                              ; preds = %273, %244
  %284 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %285 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %284, i32 0, i32 1
  %286 = load i8*, i8** %285, align 8
  %287 = bitcast i8* %286 to i32*
  %288 = call i64 @utf8clen(i32* %287)
  %289 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %290 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 %288
  store i8* %292, i8** %290, align 8
  br label %371

293:                                              ; preds = %238
  %294 = load i32, i32* %5, align 4
  %295 = load i32, i32* @STOPPER, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %322

297:                                              ; preds = %293
  %298 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %299 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %312, label %302

302:                                              ; preds = %297
  %303 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %304 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %303, i32 0, i32 1
  %305 = load i8*, i8** %304, align 8
  %306 = bitcast i8* %305 to i32*
  %307 = call i64 @utf8clen(i32* %306)
  %308 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %309 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = sub nsw i64 %310, %307
  store i64 %311, i64* %309, align 8
  br label %312

312:                                              ; preds = %302, %297
  %313 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %314 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %313, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = bitcast i8* %315 to i32*
  %317 = call i64 @utf8clen(i32* %316)
  %318 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %319 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %318, i32 0, i32 1
  %320 = load i8*, i8** %319, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 %317
  store i8* %321, i8** %319, align 8
  br label %370

322:                                              ; preds = %293
  %323 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %324 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @MAXCCC, align 4
  %327 = add nsw i32 %326, 1
  %328 = icmp ne i32 %325, %327
  br i1 %328, label %329, label %356

329:                                              ; preds = %322
  %330 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %331 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %334 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 8
  %335 = load i32, i32* @MAXCCC, align 4
  %336 = add nsw i32 %335, 1
  %337 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %338 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %337, i32 0, i32 4
  store i32 %336, i32* %338, align 4
  %339 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %340 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %339, i32 0, i32 6
  %341 = load i32*, i32** %340, align 8
  %342 = bitcast i32* %341 to i8*
  %343 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %344 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %343, i32 0, i32 1
  store i8* %342, i8** %344, align 8
  %345 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %346 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %345, i32 0, i32 5
  %347 = load i64, i64* %346, align 8
  %348 = inttoptr i64 %347 to i8*
  %349 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %350 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %349, i32 0, i32 0
  store i8* %348, i8** %350, align 8
  %351 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %352 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %351, i32 0, i32 7
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %355 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %354, i32 0, i32 2
  store i64 %353, i64* %355, align 8
  br label %369

356:                                              ; preds = %322
  %357 = load i32, i32* @STOPPER, align 4
  %358 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %359 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %358, i32 0, i32 3
  store i32 %357, i32* %359, align 8
  %360 = load i32, i32* @STOPPER, align 4
  %361 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %362 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %361, i32 0, i32 4
  store i32 %360, i32* %362, align 4
  %363 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %364 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %363, i32 0, i32 5
  store i64 0, i64* %364, align 8
  %365 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %366 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %365, i32 0, i32 6
  store i32* null, i32** %366, align 8
  %367 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %368 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %367, i32 0, i32 7
  store i64 0, i64* %368, align 8
  br label %369

369:                                              ; preds = %356, %329
  br label %370

370:                                              ; preds = %369, %312
  br label %371

371:                                              ; preds = %370, %283
  br label %6

372:                                              ; preds = %230, %189, %113, %70, %49
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local i32* @utf8lookup(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32* @utf8nlookup(%struct.TYPE_3__*, i32, i32*, i64) #1

declare dso_local i32 @LEAF_CCC(i32*) #1

declare dso_local i64 @LEAF_GEN(i32*) #1

declare dso_local i64 @utf8clen(i32*) #1

declare dso_local i32* @LEAF_STR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
