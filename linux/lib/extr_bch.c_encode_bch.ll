; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bch.c_encode_bch.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bch.c_encode_bch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bch_control = type { i32*, i32* }

@BCH_ECC_MAX_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_bch(%struct.bch_control* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.bch_control*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  store %struct.bch_control* %0, %struct.bch_control** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %27 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %28 = call i32 @BCH_ECC_WORDS(%struct.bch_control* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @BCH_ECC_MAX_WORDS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  %34 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %35 = call i32 @BCH_ECC_WORDS(%struct.bch_control* %34)
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  store i64 %37, i64* %16, align 8
  %38 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %39 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %17, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  %44 = mul i32 256, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32* %46, i32** %18, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  %50 = mul i32 256, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  store i32* %52, i32** %19, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  %56 = mul i32 256, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  store i32* %58, i32** %20, align 8
  %59 = load i64, i64* %16, align 8
  %60 = mul nuw i64 4, %31
  %61 = icmp ugt i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %4
  store i32 1, i32* %26, align 4
  br label %277

66:                                               ; preds = %4
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %71 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %72 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @load_ecc8(%struct.bch_control* %70, i32* %73, i32* %74)
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %78 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i32 @memset(i32* %79, i32 0, i64 %80)
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i32*, i32** %6, align 8
  %84 = ptrtoint i32* %83 to i64
  %85 = and i64 %84, 3
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %82
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %12, align 8
  %92 = sub i64 4, %91
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = zext i32 %95 to i64
  br label %100

97:                                               ; preds = %88
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 4, %98
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i64 [ %96, %94 ], [ %99, %97 ]
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %11, align 4
  %103 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %107 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @encode_bch_unaligned(%struct.bch_control* %103, i32* %104, i32 %105, i32* %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %100, %82
  %118 = load i32*, i32** %6, align 8
  store i32* %118, i32** %21, align 8
  %119 = load i32, i32* %7, align 4
  %120 = udiv i32 %119, 4
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = mul i32 4, %121
  %123 = load i32*, i32** %6, align 8
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = mul i32 4, %126
  %128 = load i32, i32* %7, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %131 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @memcpy(i32* %33, i32* %132, i64 %133)
  br label %135

135:                                              ; preds = %223, %117
  %136 = load i32, i32* %11, align 4
  %137 = add i32 %136, -1
  store i32 %137, i32* %11, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %139, label %250

139:                                              ; preds = %135
  %140 = getelementptr inbounds i32, i32* %33, i64 0
  %141 = load i32, i32* %140, align 16
  %142 = load i32*, i32** %21, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %21, align 8
  %144 = load i32, i32* %142, align 4
  %145 = call i32 @cpu_to_be32(i32 %144)
  %146 = xor i32 %141, %145
  store i32 %146, i32* %13, align 4
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  %150 = load i32, i32* %13, align 4
  %151 = ashr i32 %150, 0
  %152 = and i32 %151, 255
  %153 = mul i32 %149, %152
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %147, i64 %154
  store i32* %155, i32** %22, align 8
  %156 = load i32*, i32** %18, align 8
  %157 = load i32, i32* %9, align 4
  %158 = add i32 %157, 1
  %159 = load i32, i32* %13, align 4
  %160 = ashr i32 %159, 8
  %161 = and i32 %160, 255
  %162 = mul i32 %158, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %156, i64 %163
  store i32* %164, i32** %23, align 8
  %165 = load i32*, i32** %19, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add i32 %166, 1
  %168 = load i32, i32* %13, align 4
  %169 = ashr i32 %168, 16
  %170 = and i32 %169, 255
  %171 = mul i32 %167, %170
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %165, i64 %172
  store i32* %173, i32** %24, align 8
  %174 = load i32*, i32** %20, align 8
  %175 = load i32, i32* %9, align 4
  %176 = add i32 %175, 1
  %177 = load i32, i32* %13, align 4
  %178 = ashr i32 %177, 24
  %179 = and i32 %178, 255
  %180 = mul i32 %176, %179
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %174, i64 %181
  store i32* %182, i32** %25, align 8
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %220, %139
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %223

187:                                              ; preds = %183
  %188 = load i32, i32* %10, align 4
  %189 = add i32 %188, 1
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %33, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %22, align 8
  %194 = load i32, i32* %10, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %192, %197
  %199 = load i32*, i32** %23, align 8
  %200 = load i32, i32* %10, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = xor i32 %198, %203
  %205 = load i32*, i32** %24, align 8
  %206 = load i32, i32* %10, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = xor i32 %204, %209
  %211 = load i32*, i32** %25, align 8
  %212 = load i32, i32* %10, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = xor i32 %210, %215
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %33, i64 %218
  store i32 %216, i32* %219, align 4
  br label %220

220:                                              ; preds = %187
  %221 = load i32, i32* %10, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %183

223:                                              ; preds = %183
  %224 = load i32*, i32** %22, align 8
  %225 = load i32, i32* %9, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %23, align 8
  %230 = load i32, i32* %9, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = xor i32 %228, %233
  %235 = load i32*, i32** %24, align 8
  %236 = load i32, i32* %9, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = xor i32 %234, %239
  %241 = load i32*, i32** %25, align 8
  %242 = load i32, i32* %9, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = xor i32 %240, %245
  %247 = load i32, i32* %9, align 4
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %33, i64 %248
  store i32 %246, i32* %249, align 4
  br label %135

250:                                              ; preds = %135
  %251 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %252 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load i64, i64* %16, align 8
  %255 = call i32 @memcpy(i32* %253, i32* %33, i64 %254)
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %250
  %259 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %260 = load i32*, i32** %6, align 8
  %261 = load i32, i32* %7, align 4
  %262 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %263 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = call i32 @encode_bch_unaligned(%struct.bch_control* %259, i32* %260, i32 %261, i32* %264)
  br label %266

266:                                              ; preds = %258, %250
  %267 = load i32*, i32** %8, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %276

269:                                              ; preds = %266
  %270 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %271 = load i32*, i32** %8, align 8
  %272 = load %struct.bch_control*, %struct.bch_control** %5, align 8
  %273 = getelementptr inbounds %struct.bch_control, %struct.bch_control* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = call i32 @store_ecc8(%struct.bch_control* %270, i32* %271, i32* %274)
  br label %276

276:                                              ; preds = %269, %266
  store i32 0, i32* %26, align 4
  br label %277

277:                                              ; preds = %276, %65
  %278 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load i32, i32* %26, align 4
  switch i32 %279, label %281 [
    i32 0, label %280
    i32 1, label %280
  ]

280:                                              ; preds = %277, %277
  ret void

281:                                              ; preds = %277
  unreachable
}

declare dso_local i32 @BCH_ECC_WORDS(%struct.bch_control*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @load_ecc8(%struct.bch_control*, i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @encode_bch_unaligned(%struct.bch_control*, i32*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @store_ecc8(%struct.bch_control*, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
