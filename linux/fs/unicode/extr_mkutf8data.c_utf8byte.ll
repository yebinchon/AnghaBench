; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8byte.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_utf8byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8cursor = type { i8*, i8*, i64, i32, i32, i64, i32*, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@STOPPER = common dso_local global i32 0, align 4
@ages = common dso_local global i64* null, align 8
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

6:                                                ; preds = %380, %171, %1
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
  br label %381

50:                                               ; preds = %43
  %51 = load i32, i32* @STOPPER, align 4
  store i32 %51, i32* %5, align 4
  br label %240

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
  br label %381

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
  %85 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %84, i32 0, i32 10
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %88 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %91 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = call i32* @utf8lookup(%struct.TYPE_3__* %86, i32 %89, i32* %93)
  store i32* %94, i32** %4, align 8
  br label %110

95:                                               ; preds = %78
  %96 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %97 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %96, i32 0, i32 10
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %100 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
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
  br label %381

114:                                              ; preds = %110
  %115 = load i64*, i64** @ages, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = call i64 @LEAF_GEN(i32* %116)
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %121 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %120, i32 0, i32 10
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %119, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %114
  %127 = load i32, i32* @STOPPER, align 4
  store i32 %127, i32* %5, align 4
  br label %189

128:                                              ; preds = %114
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @LEAF_CCC(i32* %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @DECOMPOSE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %188

133:                                              ; preds = %128
  %134 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %135 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = bitcast i8* %136 to i32*
  %138 = call i64 @utf8clen(i32* %137)
  %139 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %140 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, %138
  store i64 %142, i64* %140, align 8
  %143 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %144 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %147 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = bitcast i8* %148 to i32*
  %150 = call i64 @utf8clen(i32* %149)
  %151 = getelementptr inbounds i8, i8* %145, i64 %150
  %152 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %153 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load i32*, i32** %4, align 8
  %155 = call i32* @LEAF_STR(i32* %154)
  %156 = bitcast i32* %155 to i8*
  %157 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %158 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %160 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %133
  %166 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %167 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @STOPPER, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %6

172:                                              ; preds = %165
  %173 = load i32, i32* @STOPPER, align 4
  store i32 %173, i32* %5, align 4
  br label %240

174:                                              ; preds = %133
  %175 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %176 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %175, i32 0, i32 10
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %179 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %182 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = bitcast i8* %183 to i32*
  %185 = call i32* @utf8lookup(%struct.TYPE_3__* %177, i32 %180, i32* %184)
  store i32* %185, i32** %4, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @LEAF_CCC(i32* %186)
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %174, %128
  br label %189

189:                                              ; preds = %188, %126
  %190 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %191 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = bitcast i8* %192 to i32*
  %194 = call i32 @utf8decode(i32* %193)
  %195 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %196 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %195, i32 0, i32 8
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @STOPPER, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %200, label %216

200:                                              ; preds = %189
  %201 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %202 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %200
  %207 = load i32, i32* %5, align 4
  %208 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %209 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %215 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 4
  br label %216

216:                                              ; preds = %212, %206, %200, %189
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %219 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %217, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %216
  %223 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %224 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %222
  %228 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %229 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = add nsw i64 %230, -1
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %227, %222
  %233 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %234 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %234, align 8
  %237 = load i8, i8* %235, align 1
  %238 = zext i8 %237 to i32
  store i32 %238, i32* %2, align 4
  br label %381

239:                                              ; preds = %216
  br label %240

240:                                              ; preds = %239, %172, %50
  %241 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %242 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @STOPPER, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %302

246:                                              ; preds = %240
  %247 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %248 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @STOPPER, align 4
  %251 = icmp eq i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i32 @assert(i32 %252)
  %254 = load i32, i32* @MINCCC, align 4
  %255 = sub nsw i32 %254, 1
  %256 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %257 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %256, i32 0, i32 3
  store i32 %255, i32* %257, align 8
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %260 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %259, i32 0, i32 4
  store i32 %258, i32* %260, align 4
  %261 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %262 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = ptrtoint i8* %263 to i64
  %265 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %266 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %265, i32 0, i32 5
  store i64 %264, i64* %266, align 8
  %267 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %268 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = bitcast i8* %269 to i32*
  %271 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %272 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %271, i32 0, i32 6
  store i32* %270, i32** %272, align 8
  %273 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %274 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %273, i32 0, i32 2
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %277 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %276, i32 0, i32 7
  store i64 %275, i64* %277, align 8
  %278 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %279 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %292, label %282

282:                                              ; preds = %246
  %283 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %284 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %283, i32 0, i32 1
  %285 = load i8*, i8** %284, align 8
  %286 = bitcast i8* %285 to i32*
  %287 = call i64 @utf8clen(i32* %286)
  %288 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %289 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  br label %292

292:                                              ; preds = %282, %246
  %293 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %294 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = bitcast i8* %295 to i32*
  %297 = call i64 @utf8clen(i32* %296)
  %298 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %299 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 %297
  store i8* %301, i8** %299, align 8
  br label %380

302:                                              ; preds = %240
  %303 = load i32, i32* %5, align 4
  %304 = load i32, i32* @STOPPER, align 4
  %305 = icmp ne i32 %303, %304
  br i1 %305, label %306, label %331

306:                                              ; preds = %302
  %307 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %308 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %321, label %311

311:                                              ; preds = %306
  %312 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %313 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %312, i32 0, i32 1
  %314 = load i8*, i8** %313, align 8
  %315 = bitcast i8* %314 to i32*
  %316 = call i64 @utf8clen(i32* %315)
  %317 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %318 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = sub nsw i64 %319, %316
  store i64 %320, i64* %318, align 8
  br label %321

321:                                              ; preds = %311, %306
  %322 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %323 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = bitcast i8* %324 to i32*
  %326 = call i64 @utf8clen(i32* %325)
  %327 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %328 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %327, i32 0, i32 1
  %329 = load i8*, i8** %328, align 8
  %330 = getelementptr inbounds i8, i8* %329, i64 %326
  store i8* %330, i8** %328, align 8
  br label %379

331:                                              ; preds = %302
  %332 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %333 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @MAXCCC, align 4
  %336 = add nsw i32 %335, 1
  %337 = icmp ne i32 %334, %336
  br i1 %337, label %338, label %365

338:                                              ; preds = %331
  %339 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %340 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %343 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 8
  %344 = load i32, i32* @MAXCCC, align 4
  %345 = add nsw i32 %344, 1
  %346 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %347 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 4
  %348 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %349 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %348, i32 0, i32 6
  %350 = load i32*, i32** %349, align 8
  %351 = bitcast i32* %350 to i8*
  %352 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %353 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %352, i32 0, i32 1
  store i8* %351, i8** %353, align 8
  %354 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %355 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %354, i32 0, i32 5
  %356 = load i64, i64* %355, align 8
  %357 = inttoptr i64 %356 to i8*
  %358 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %359 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %358, i32 0, i32 0
  store i8* %357, i8** %359, align 8
  %360 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %361 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %360, i32 0, i32 7
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %364 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %363, i32 0, i32 2
  store i64 %362, i64* %364, align 8
  br label %378

365:                                              ; preds = %331
  %366 = load i32, i32* @STOPPER, align 4
  %367 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %368 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %367, i32 0, i32 3
  store i32 %366, i32* %368, align 8
  %369 = load i32, i32* @STOPPER, align 4
  %370 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %371 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %370, i32 0, i32 4
  store i32 %369, i32* %371, align 4
  %372 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %373 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %372, i32 0, i32 5
  store i64 0, i64* %373, align 8
  %374 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %375 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %374, i32 0, i32 6
  store i32* null, i32** %375, align 8
  %376 = load %struct.utf8cursor*, %struct.utf8cursor** %3, align 8
  %377 = getelementptr inbounds %struct.utf8cursor, %struct.utf8cursor* %376, i32 0, i32 7
  store i64 0, i64* %377, align 8
  br label %378

378:                                              ; preds = %365, %338
  br label %379

379:                                              ; preds = %378, %321
  br label %380

380:                                              ; preds = %379, %292
  br label %6

381:                                              ; preds = %232, %113, %70, %49
  %382 = load i32, i32* %2, align 4
  ret i32 %382
}

declare dso_local i32* @utf8lookup(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32* @utf8nlookup(%struct.TYPE_3__*, i32, i32*, i64) #1

declare dso_local i64 @LEAF_GEN(i32*) #1

declare dso_local i32 @LEAF_CCC(i32*) #1

declare dso_local i64 @utf8clen(i32*) #1

declare dso_local i32* @LEAF_STR(i32*) #1

declare dso_local i32 @utf8decode(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
