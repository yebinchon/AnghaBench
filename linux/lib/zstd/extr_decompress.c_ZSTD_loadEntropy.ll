; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_loadEntropy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_loadEntropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32, i32, i32, i32, i32 }

@dictionary_corrupted = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i64 0, align 8
@OffFSELog = common dso_local global i64 0, align 8
@MaxML = common dso_local global i32 0, align 4
@MLFSELog = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@LLFSELog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i8*, i64)* @ZSTD_loadEntropy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_loadEntropy(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ule i64 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @dictionary_corrupted, align 4
  %39 = call i64 @ERROR(i32 %38)
  store i64 %39, i64* %4, align 8
  br label %258

40:                                               ; preds = %3
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32* %42, i32** %8, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @HUF_readDTableX4_wksp(i32 %45, i32* %46, i32 %53, i32 %56, i32 4)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @HUF_isError(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %40
  %62 = load i32, i32* @dictionary_corrupted, align 4
  %63 = call i64 @ERROR(i32 %62)
  store i64 %63, i64* %4, align 8
  br label %258

64:                                               ; preds = %40
  %65 = load i64, i64* %10, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 %65
  store i32* %67, i32** %8, align 8
  %68 = load i64, i64* @MaxOff, align 8
  %69 = add nsw i64 %68, 1
  %70 = call i8* @llvm.stacksave()
  store i8* %70, i8** %11, align 8
  %71 = alloca i16, i64 %69, align 16
  store i64 %69, i64* %12, align 8
  %72 = load i64, i64* @MaxOff, align 8
  store i64 %72, i64* %13, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = call i64 (i16*, ...) @FSE_readNCount(i16* %71, i64* %13, i64* %14, i32* %73, i64 %79)
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i64 @FSE_isError(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %64
  %85 = load i32, i32* @dictionary_corrupted, align 4
  %86 = call i64 @ERROR(i32 %85)
  store i64 %86, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %111

87:                                               ; preds = %64
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* @OffFSELog, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @dictionary_corrupted, align 4
  %93 = call i64 @ERROR(i32 %92)
  store i64 %93, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %111

94:                                               ; preds = %87
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %13, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* %14, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @FSE_buildDTable_wksp(i32 %97, i16* %71, i32 %99, i32 %101, i32 %104, i32 4)
  %106 = load i32, i32* @dictionary_corrupted, align 4
  %107 = call i32 @CHECK_E(i32 %105, i32 %106)
  %108 = load i64, i64* %15, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 %108
  store i32* %110, i32** %8, align 8
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %94, %91, %84
  %112 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %16, align 4
  switch i32 %113, label %260 [
    i32 0, label %114
    i32 1, label %258
  ]

114:                                              ; preds = %111
  %115 = load i32, i32* @MaxML, align 4
  %116 = add nsw i32 %115, 1
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %17, align 8
  %119 = alloca i16, i64 %117, align 16
  store i64 %117, i64* %18, align 8
  %120 = load i32, i32* @MaxML, align 4
  store i32 %120, i32* %19, align 4
  %121 = load i32*, i32** %8, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = ptrtoint i32* %122 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = call i64 (i16*, ...) @FSE_readNCount(i16* %119, i32* %19, i32* %20, i32* %121, i64 %127)
  store i64 %128, i64* %21, align 8
  %129 = load i64, i64* %21, align 8
  %130 = call i64 @FSE_isError(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %114
  %133 = load i32, i32* @dictionary_corrupted, align 4
  %134 = call i64 @ERROR(i32 %133)
  store i64 %134, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %157

135:                                              ; preds = %114
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @MLFSELog, align 4
  %138 = icmp ugt i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* @dictionary_corrupted, align 4
  %141 = call i64 @ERROR(i32 %140)
  store i64 %141, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %157

142:                                              ; preds = %135
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @FSE_buildDTable_wksp(i32 %145, i16* %119, i32 %146, i32 %147, i32 %150, i32 4)
  %152 = load i32, i32* @dictionary_corrupted, align 4
  %153 = call i32 @CHECK_E(i32 %151, i32 %152)
  %154 = load i64, i64* %21, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %8, align 8
  store i32 0, i32* %16, align 4
  br label %157

157:                                              ; preds = %142, %139, %132
  %158 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %158)
  %159 = load i32, i32* %16, align 4
  switch i32 %159, label %260 [
    i32 0, label %160
    i32 1, label %258
  ]

160:                                              ; preds = %157
  %161 = load i32, i32* @MaxLL, align 4
  %162 = add nsw i32 %161, 1
  %163 = zext i32 %162 to i64
  %164 = call i8* @llvm.stacksave()
  store i8* %164, i8** %22, align 8
  %165 = alloca i16, i64 %163, align 16
  store i64 %163, i64* %23, align 8
  %166 = load i32, i32* @MaxLL, align 4
  store i32 %166, i32* %24, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32*, i32** %9, align 8
  %169 = load i32*, i32** %8, align 8
  %170 = ptrtoint i32* %168 to i64
  %171 = ptrtoint i32* %169 to i64
  %172 = sub i64 %170, %171
  %173 = sdiv exact i64 %172, 4
  %174 = call i64 (i16*, ...) @FSE_readNCount(i16* %165, i32* %24, i32* %25, i32* %167, i64 %173)
  store i64 %174, i64* %26, align 8
  %175 = load i64, i64* %26, align 8
  %176 = call i64 @FSE_isError(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %160
  %179 = load i32, i32* @dictionary_corrupted, align 4
  %180 = call i64 @ERROR(i32 %179)
  store i64 %180, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %203

181:                                              ; preds = %160
  %182 = load i32, i32* %25, align 4
  %183 = load i32, i32* @LLFSELog, align 4
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i32, i32* @dictionary_corrupted, align 4
  %187 = call i64 @ERROR(i32 %186)
  store i64 %187, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %203

188:                                              ; preds = %181
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* %25, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @FSE_buildDTable_wksp(i32 %191, i16* %165, i32 %192, i32 %193, i32 %196, i32 4)
  %198 = load i32, i32* @dictionary_corrupted, align 4
  %199 = call i32 @CHECK_E(i32 %197, i32 %198)
  %200 = load i64, i64* %26, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 %200
  store i32* %202, i32** %8, align 8
  store i32 0, i32* %16, align 4
  br label %203

203:                                              ; preds = %188, %185, %178
  %204 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %204)
  %205 = load i32, i32* %16, align 4
  switch i32 %205, label %260 [
    i32 0, label %206
    i32 1, label %258
  ]

206:                                              ; preds = %203
  %207 = load i32*, i32** %8, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 12
  %209 = load i32*, i32** %9, align 8
  %210 = icmp ugt i32* %208, %209
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i32, i32* @dictionary_corrupted, align 4
  %213 = call i64 @ERROR(i32 %212)
  store i64 %213, i64* %4, align 8
  br label %258

214:                                              ; preds = %206
  %215 = load i32*, i32** %9, align 8
  %216 = load i32*, i32** %8, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 12
  %218 = ptrtoint i32* %215 to i64
  %219 = ptrtoint i32* %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 4
  store i64 %221, i64* %28, align 8
  store i32 0, i32* %27, align 4
  br label %222

222:                                              ; preds = %247, %214
  %223 = load i32, i32* %27, align 4
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %250

225:                                              ; preds = %222
  %226 = load i32*, i32** %8, align 8
  %227 = call i64 @ZSTD_readLE32(i32* %226)
  store i64 %227, i64* %29, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 4
  store i32* %229, i32** %8, align 8
  %230 = load i64, i64* %29, align 8
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %225
  %233 = load i64, i64* %29, align 8
  %234 = load i64, i64* %28, align 8
  %235 = icmp uge i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232, %225
  %237 = load i32, i32* @dictionary_corrupted, align 4
  %238 = call i64 @ERROR(i32 %237)
  store i64 %238, i64* %4, align 8
  br label %258

239:                                              ; preds = %232
  %240 = load i64, i64* %29, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i64*, i64** %242, align 8
  %244 = load i32, i32* %27, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i64, i64* %243, i64 %245
  store i64 %240, i64* %246, align 8
  br label %247

247:                                              ; preds = %239
  %248 = load i32, i32* %27, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %27, align 4
  br label %222

250:                                              ; preds = %222
  %251 = load i32*, i32** %8, align 8
  %252 = load i8*, i8** %6, align 8
  %253 = bitcast i8* %252 to i32*
  %254 = ptrtoint i32* %251 to i64
  %255 = ptrtoint i32* %253 to i64
  %256 = sub i64 %254, %255
  %257 = sdiv exact i64 %256, 4
  store i64 %257, i64* %4, align 8
  br label %258

258:                                              ; preds = %250, %236, %211, %203, %157, %111, %61, %37
  %259 = load i64, i64* %4, align 8
  ret i64 %259

260:                                              ; preds = %203, %157, %111
  unreachable
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_readDTableX4_wksp(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @HUF_isError(i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSE_readNCount(i16*, ...) #1

declare dso_local i64 @FSE_isError(i64) #1

declare dso_local i32 @CHECK_E(i32, i32) #1

declare dso_local i32 @FSE_buildDTable_wksp(i32, i16*, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @ZSTD_readLE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
