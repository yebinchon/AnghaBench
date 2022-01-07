; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_area_copy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_pcm_plugin.c_snd_pcm_area_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_channel_area = type { i8*, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_area_copy(%struct.snd_pcm_channel_area* %0, i64 %1, %struct.snd_pcm_channel_area* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_channel_area*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_pcm_channel_area*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  store %struct.snd_pcm_channel_area* %0, %struct.snd_pcm_channel_area** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.snd_pcm_channel_area* %2, %struct.snd_pcm_channel_area** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = mul i64 %33, %34
  %36 = add i64 %30, %35
  %37 = udiv i64 %36, 8
  %38 = getelementptr inbounds i8, i8* %27, i64 %37
  store i8* %38, i8** %14, align 8
  %39 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %6
  %44 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @snd_pcm_area_silence(%struct.snd_pcm_channel_area* %44, i64 %45, i64 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %233

49:                                               ; preds = %6
  %50 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = mul i64 %58, %59
  %61 = add i64 %55, %60
  %62 = udiv i64 %61, 8
  %63 = getelementptr inbounds i8, i8* %52, i64 %62
  store i8* %63, i8** %15, align 8
  %64 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %233

69:                                               ; preds = %49
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @snd_pcm_format_physical_width(i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %233

77:                                               ; preds = %69
  %78 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %77
  %85 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = zext i32 %88 to i64
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load i32, i32* %16, align 4
  %93 = icmp sge i32 %92, 8
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 %95, %97
  %99 = udiv i64 %98, 8
  store i64 %99, i64* %19, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load i64, i64* %19, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @memcpy(i8* %100, i8* %101, i32 %103)
  store i32 0, i32* %7, align 4
  br label %233

105:                                              ; preds = %91, %84, %77
  %106 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %107 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = udiv i64 %108, 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = udiv i64 %113, 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %211

118:                                              ; preds = %105
  %119 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = urem i64 %121, 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %20, align 4
  %124 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %8, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = urem i64 %126, 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %21, align 4
  %129 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = urem i64 %131, 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %22, align 4
  %134 = load %struct.snd_pcm_channel_area*, %struct.snd_pcm_channel_area** %10, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_channel_area, %struct.snd_pcm_channel_area* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = urem i64 %136, 8
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %23, align 4
  br label %139

139:                                              ; preds = %209, %118
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* %12, align 8
  %142 = icmp ugt i64 %140, 0
  br i1 %142, label %143, label %210

143:                                              ; preds = %139
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i8*, i8** %14, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = and i32 %149, 15
  %151 = trunc i32 %150 to i8
  store i8 %151, i8* %24, align 1
  br label %159

152:                                              ; preds = %143
  %153 = load i8*, i8** %14, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = and i32 %155, 240
  %157 = ashr i32 %156, 4
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %24, align 1
  br label %159

159:                                              ; preds = %152, %146
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i8*, i8** %15, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = and i32 %165, 240
  %167 = load i8, i8* %24, align 1
  %168 = zext i8 %167 to i32
  %169 = or i32 %166, %168
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %15, align 8
  store i8 %170, i8* %171, align 1
  br label %183

172:                                              ; preds = %159
  %173 = load i8*, i8** %15, align 8
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = and i32 %175, 15
  %177 = load i8, i8* %24, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 4
  %180 = or i32 %176, %179
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %15, align 8
  store i8 %181, i8* %182, align 1
  br label %183

183:                                              ; preds = %172, %162
  %184 = load i32, i32* %17, align 4
  %185 = load i8*, i8** %14, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i8, i8* %185, i64 %186
  store i8* %187, i8** %14, align 8
  %188 = load i32, i32* %21, align 4
  %189 = load i32, i32* %20, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp eq i32 %191, 8
  br i1 %192, label %193, label %196

193:                                              ; preds = %183
  %194 = load i8*, i8** %14, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %14, align 8
  store i32 0, i32* %20, align 4
  br label %196

196:                                              ; preds = %193, %183
  %197 = load i32, i32* %18, align 4
  %198 = load i8*, i8** %15, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  store i8* %200, i8** %15, align 8
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %22, align 4
  %203 = add nsw i32 %202, %201
  store i32 %203, i32* %22, align 4
  %204 = load i32, i32* %22, align 4
  %205 = icmp eq i32 %204, 8
  br i1 %205, label %206, label %209

206:                                              ; preds = %196
  %207 = load i8*, i8** %15, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %15, align 8
  store i32 0, i32* %22, align 4
  br label %209

209:                                              ; preds = %206, %196
  br label %139

210:                                              ; preds = %139
  br label %232

211:                                              ; preds = %105
  %212 = load i32, i32* %16, align 4
  %213 = sdiv i32 %212, 8
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %218, %211
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, -1
  store i64 %216, i64* %12, align 8
  %217 = icmp ugt i64 %215, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %214
  %219 = load i8*, i8** %15, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @memcpy(i8* %219, i8* %220, i32 %221)
  %223 = load i32, i32* %17, align 4
  %224 = load i8*, i8** %14, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %14, align 8
  %227 = load i32, i32* %18, align 4
  %228 = load i8*, i8** %15, align 8
  %229 = sext i32 %227 to i64
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  store i8* %230, i8** %15, align 8
  br label %214

231:                                              ; preds = %214
  br label %232

232:                                              ; preds = %231, %210
  store i32 0, i32* %7, align 4
  br label %233

233:                                              ; preds = %232, %94, %74, %68, %43
  %234 = load i32, i32* %7, align 4
  ret i32 %234
}

declare dso_local i32 @snd_pcm_area_silence(%struct.snd_pcm_channel_area*, i64, i64, i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
