; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_string_to_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-set.c_string_to_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freq_units = type { i64*, i32 }

@NORM_FREQ_LEN = common dso_local global i32 0, align 4
@def_units = common dso_local global %struct.freq_units* null, align 8
@errno = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @string_to_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @string_to_frequency(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.freq_units*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i32, i32* @NORM_FREQ_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %4, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %25, %1
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 48
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  br label %20

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %62, %28
  %31 = load i8*, i8** %7, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @isdigit(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br label %40

40:                                               ; preds = %35, %30
  %41 = phi i1 [ true, %30 ], [ %39, %35 ]
  br i1 %41, label %42, label %65

42:                                               ; preds = %40
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %11, align 4
  br label %61

51:                                               ; preds = %47, %42
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 46
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 0, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %259

60:                                               ; preds = %56, %51
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %7, align 8
  br label %30

65:                                               ; preds = %40
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %128

69:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  %70 = load %struct.freq_units*, %struct.freq_units** @def_units, align 8
  store %struct.freq_units* %70, %struct.freq_units** %6, align 8
  br label %71

71:                                               ; preds = %120, %69
  %72 = load %struct.freq_units*, %struct.freq_units** %6, align 8
  %73 = getelementptr inbounds %struct.freq_units, %struct.freq_units* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %123

76:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %77
  %86 = load i8*, i8** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @tolower(i8 signext %90)
  %92 = load %struct.freq_units*, %struct.freq_units** %6, align 8
  %93 = getelementptr inbounds %struct.freq_units, %struct.freq_units* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %91, %98
  br label %100

100:                                              ; preds = %85, %77
  %101 = phi i1 [ false, %77 ], [ %99, %85 ]
  br i1 %101, label %102, label %106

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %77

106:                                              ; preds = %100
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %120

114:                                              ; preds = %106
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load %struct.freq_units*, %struct.freq_units** %6, align 8
  %118 = getelementptr inbounds %struct.freq_units, %struct.freq_units* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %114, %113
  %121 = load %struct.freq_units*, %struct.freq_units** %6, align 8
  %122 = getelementptr inbounds %struct.freq_units, %struct.freq_units* %121, i32 1
  store %struct.freq_units* %122, %struct.freq_units** %6, align 8
  br label %71

123:                                              ; preds = %71
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i64 0, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %259

127:                                              ; preds = %123
  br label %128

128:                                              ; preds = %127, %65
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %138, %128
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = call i64 @isdigit(i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %129
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %13, align 4
  br label %129

141:                                              ; preds = %129
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 46
  br i1 %148, label %149, label %170

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %164, %149
  %151 = load i32, i32* %10, align 4
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i8*, i8** %3, align 8
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = call i64 @isdigit(i8 signext %159)
  %161 = icmp ne i64 %160, 0
  br label %162

162:                                              ; preds = %153, %150
  %163 = phi i1 [ false, %150 ], [ %161, %153 ]
  br i1 %163, label %164, label %169

164:                                              ; preds = %162
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %10, align 4
  br label %150

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %141
  %171 = load i32, i32* %10, align 4
  %172 = icmp sge i32 %171, -1
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %181

176:                                              ; preds = %170
  store i32 0, i32* %14, align 4
  %177 = load i32, i32* %10, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %176, %173
  %182 = load i32, i32* %13, align 4
  %183 = icmp sle i32 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* @NORM_FREQ_LEN, align 4
  %189 = sub nsw i32 %188, 1
  %190 = icmp sgt i32 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %184, %181
  store i64 0, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %259

192:                                              ; preds = %184
  store i32 0, i32* %12, align 4
  br label %193

193:                                              ; preds = %211, %192
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %193
  %198 = load i8*, i8** %3, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 46
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load i8*, i8** %3, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %3, align 8
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i8*, i8** %3, align 8
  %207 = load i8, i8* %206, align 1
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %19, i64 %209
  store i8 %207, i8* %210, align 1
  br label %211

211:                                              ; preds = %205
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  %214 = load i8*, i8** %3, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %3, align 8
  br label %193

216:                                              ; preds = %193
  br label %217

217:                                              ; preds = %227, %216
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %219, %220
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %19, i64 %225
  store i8 48, i8* %226, align 1
  br label %227

227:                                              ; preds = %223
  %228 = load i32, i32* %12, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %12, align 4
  br label %217

230:                                              ; preds = %217
  %231 = load i32, i32* %12, align 4
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %19, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp sge i32 %236, 53
  %238 = zext i1 %237 to i32
  store i32 %238, i32* %11, align 4
  %239 = load i32, i32* %12, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %19, i64 %241
  store i8 0, i8* %242, align 1
  store i64 0, i64* @errno, align 8
  %243 = call i64 @strtoul(i8* %19, i8** %8, i32 10)
  store i64 %243, i64* %9, align 8
  %244 = load i64, i64* @errno, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %230
  store i64 0, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %259

247:                                              ; preds = %230
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load i64, i64* %9, align 8
  %252 = load i64, i64* @ULONG_MAX, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load i64, i64* %9, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %9, align 8
  br label %257

257:                                              ; preds = %254, %250, %247
  %258 = load i64, i64* %9, align 8
  store i64 %258, i64* %2, align 8
  store i32 1, i32* %15, align 4
  br label %259

259:                                              ; preds = %257, %246, %191, %126, %59
  %260 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i64, i64* %2, align 8
  ret i64 %261
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isdigit(i8 signext) #2

declare dso_local i64 @tolower(i8 signext) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
