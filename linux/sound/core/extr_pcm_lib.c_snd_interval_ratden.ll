; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_ratden.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_ratden.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_ratden = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_interval*, i32, %struct.snd_ratden*, i32*, i32*)* @snd_interval_ratden to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interval_ratden(%struct.snd_interval* %0, i32 %1, %struct.snd_ratden* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ratden*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_interval, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.snd_ratden* %2, %struct.snd_ratden** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %121, %5
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %124

32:                                               ; preds = %28
  %33 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %34 = load i32, i32* %15, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %33, i64 %35
  %37 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %19, align 4
  %39 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %40 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @mul(i32 %42, i32 %43)
  store i32 %44, i32* %18, align 4
  %45 = load i32, i32* %18, align 4
  %46 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %46, i64 %48
  %50 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %32
  br label %121

54:                                               ; preds = %32
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %56, i64 %58
  %60 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %55, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %64, i64 %66
  %68 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %18, align 4
  br label %100

70:                                               ; preds = %54
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %72, i64 %74
  %76 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sub i32 %71, %77
  %79 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %79, i64 %81
  %83 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = urem i32 %78, %84
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %70
  %89 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %90 = load i32, i32* %15, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %89, i64 %91
  %93 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %22, align 4
  %96 = sub i32 %94, %95
  %97 = load i32, i32* %18, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %88, %70
  br label %100

100:                                              ; preds = %99, %63
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* %19, align 4
  %104 = mul i32 %102, %103
  %105 = sub i32 %101, %104
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %14, align 4
  %111 = mul i32 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %19, align 4
  %114 = mul i32 %112, %113
  %115 = icmp ult i32 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108, %100
  %117 = load i32, i32* %21, align 4
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %18, align 4
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116, %108
  br label %121

121:                                              ; preds = %120, %53
  %122 = load i32, i32* %15, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %28

124:                                              ; preds = %28
  %125 = load i32, i32* %14, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %129 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %281

132:                                              ; preds = %124
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @div_down(i32 %133, i32 %134)
  %136 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 0
  store i32 %135, i32* %136, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* %14, align 4
  %139 = urem i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 2
  store i32 %143, i32* %144, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %145

145:                                              ; preds = %231, %132
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %234

149:                                              ; preds = %145
  %150 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %151 = load i32, i32* %15, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %150, i64 %152
  %154 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %24, align 4
  %156 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %157 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %25, align 4
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* %24, align 4
  %161 = call i32 @mul(i32 %159, i32 %160)
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %23, align 4
  %163 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %164 = load i32, i32* %15, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %163, i64 %165
  %167 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = icmp ult i32 %162, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %149
  br label %231

171:                                              ; preds = %149
  %172 = load i32, i32* %23, align 4
  %173 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %174 = load i32, i32* %15, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %173, i64 %175
  %177 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ugt i32 %172, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %182 = load i32, i32* %15, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %181, i64 %183
  %185 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %23, align 4
  br label %210

187:                                              ; preds = %171
  %188 = load i32, i32* %23, align 4
  %189 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %190 = load i32, i32* %15, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %189, i64 %191
  %193 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sub i32 %188, %194
  %196 = load %struct.snd_ratden*, %struct.snd_ratden** %9, align 8
  %197 = load i32, i32* %15, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %196, i64 %198
  %200 = getelementptr inbounds %struct.snd_ratden, %struct.snd_ratden* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = urem i32 %195, %201
  store i32 %202, i32* %27, align 4
  %203 = load i32, i32* %27, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %187
  %206 = load i32, i32* %27, align 4
  %207 = load i32, i32* %23, align 4
  %208 = sub i32 %207, %206
  store i32 %208, i32* %23, align 4
  br label %209

209:                                              ; preds = %205, %187
  br label %210

210:                                              ; preds = %209, %180
  %211 = load i32, i32* %25, align 4
  %212 = load i32, i32* %24, align 4
  %213 = mul i32 %211, %212
  %214 = load i32, i32* %23, align 4
  %215 = sub i32 %213, %214
  store i32 %215, i32* %26, align 4
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %226, label %218

218:                                              ; preds = %210
  %219 = load i32, i32* %26, align 4
  %220 = load i32, i32* %14, align 4
  %221 = mul i32 %219, %220
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %24, align 4
  %224 = mul i32 %222, %223
  %225 = icmp ult i32 %221, %224
  br i1 %225, label %226, label %230

226:                                              ; preds = %218, %210
  %227 = load i32, i32* %26, align 4
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %24, align 4
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %23, align 4
  store i32 %229, i32* %12, align 4
  br label %230

230:                                              ; preds = %226, %218
  br label %231

231:                                              ; preds = %230, %170
  %232 = load i32, i32* %15, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %15, align 4
  br label %145

234:                                              ; preds = %145
  %235 = load i32, i32* %14, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %239 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %238, i32 0, i32 1
  store i32 1, i32* %239, align 4
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %6, align 4
  br label %281

242:                                              ; preds = %234
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i32 @div_up(i32 %243, i32 %244)
  %246 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 3
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %14, align 4
  %249 = urem i32 %247, %248
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 4
  store i32 %253, i32* %254, align 8
  %255 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 5
  store i64 0, i64* %255, align 8
  %256 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %257 = call i32 @snd_interval_refine(%struct.snd_interval* %256, %struct.snd_interval* %16)
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %17, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %242
  %261 = load i32, i32* %17, align 4
  store i32 %261, i32* %6, align 4
  br label %281

262:                                              ; preds = %242
  %263 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %264 = call i64 @snd_interval_single(%struct.snd_interval* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = load i32*, i32** %10, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* %12, align 4
  %271 = load i32*, i32** %10, align 8
  store i32 %270, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %266
  %273 = load i32*, i32** %11, align 8
  %274 = icmp ne i32* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load i32, i32* %14, align 4
  %277 = load i32*, i32** %11, align 8
  store i32 %276, i32* %277, align 4
  br label %278

278:                                              ; preds = %275, %272
  br label %279

279:                                              ; preds = %278, %262
  %280 = load i32, i32* %17, align 4
  store i32 %280, i32* %6, align 4
  br label %281

281:                                              ; preds = %279, %260, %237, %127
  %282 = load i32, i32* %6, align 4
  ret i32 %282
}

declare dso_local i32 @mul(i32, i32) #1

declare dso_local i32 @div_down(i32, i32) #1

declare dso_local i32 @div_up(i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

declare dso_local i64 @snd_interval_single(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
