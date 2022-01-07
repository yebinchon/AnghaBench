; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_do_work.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_numa.c_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i64, i64 }

@g = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i32, i32)* @do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_work(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %27 = load i64, i64* %9, align 8
  %28 = udiv i64 %27, 4
  store i64 %28, i64* %14, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %34, %6
  %38 = phi i1 [ false, %6 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i32*, i32** %15, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i64, i64* %14, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i1 [ false, %37 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i32*, i32** %15, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %7, align 4
  br label %255

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %61
  %68 = load i32*, i32** %15, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @bzero(i32* %68, i64 %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %7, align 4
  br label %255

72:                                               ; preds = %61, %55
  %73 = load i64, i64* %14, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = sdiv i64 %73, %75
  store i64 %76, i64* %16, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sdiv i64 %77, %81
  store i64 %82, i64* %17, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %16, align 8
  %86 = mul nsw i64 %84, %85
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %17, align 8
  %90 = mul nsw i64 %88, %89
  %91 = add nsw i64 %86, %90
  store i64 %91, i64* %21, align 8
  br label %92

92:                                               ; preds = %96, %72
  %93 = load i64, i64* %21, align 8
  %94 = load i64, i64* %14, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %21, align 8
  %99 = sub nsw i64 %98, %97
  store i64 %99, i64* %21, align 8
  br label %92

100:                                              ; preds = %92
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %167

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %23, align 8
  store i64 0, i64* %22, align 8
  br label %113

113:                                              ; preds = %163, %106
  %114 = load i64, i64* %22, align 8
  %115 = load i64, i64* %14, align 8
  %116 = sdiv i64 %115, 1024
  %117 = icmp slt i64 %114, %116
  br i1 %117, label %118, label %166

118:                                              ; preds = %113
  %119 = load i64, i64* %23, align 8
  %120 = call i64 @lfsr_32(i64 %119)
  store i64 %120, i64* %23, align 8
  %121 = load i64, i64* %23, align 8
  %122 = load i64, i64* %14, align 8
  %123 = srem i64 %121, %122
  store i64 %123, i64* %25, align 8
  %124 = load i64, i64* %25, align 8
  %125 = add nsw i64 %124, 1024
  %126 = load i64, i64* %14, align 8
  %127 = sub nsw i64 %126, 1
  %128 = call i64 @min(i64 %125, i64 %127)
  store i64 %128, i64* %26, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %118
  %135 = load i32*, i32** %15, align 8
  %136 = load i64, i64* %25, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i64, i64* %26, align 8
  %139 = load i64, i64* %25, align 8
  %140 = sub nsw i64 %138, %139
  %141 = mul i64 %140, 4
  %142 = call i32 @bzero(i32* %137, i64 %141)
  br label %162

143:                                              ; preds = %118
  %144 = load i64, i64* %25, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %158, %143
  %147 = load i32, i32* %24, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* %26, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %146
  %152 = load i32*, i32** %15, align 8
  %153 = load i32, i32* %24, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @access_data(i32* %155, i32 %156)
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %24, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %24, align 4
  br label %146

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %22, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %22, align 8
  br label %113

166:                                              ; preds = %113
  br label %253

167:                                              ; preds = %100
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %12, align 4
  %176 = add nsw i32 %174, %175
  %177 = and i32 %176, 1
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %214

179:                                              ; preds = %173, %167
  %180 = load i32*, i32** %15, align 8
  %181 = load i64, i64* %21, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32* %182, i32** %18, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = load i64, i64* %21, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32* %186, i32** %19, align 8
  %187 = load i32*, i32** %15, align 8
  %188 = load i64, i64* %14, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %20, align 8
  br label %190

190:                                              ; preds = %207, %179
  %191 = load i32*, i32** %19, align 8
  %192 = load i32*, i32** %20, align 8
  %193 = icmp uge i32* %191, %192
  %194 = zext i1 %193 to i32
  %195 = call i64 @unlikely(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %190
  %198 = load i32*, i32** %15, align 8
  store i32* %198, i32** %19, align 8
  br label %199

199:                                              ; preds = %197, %190
  %200 = load i32*, i32** %19, align 8
  %201 = load i32*, i32** %18, align 8
  %202 = icmp eq i32* %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %213

207:                                              ; preds = %199
  %208 = load i32*, i32** %19, align 8
  %209 = load i32, i32* %13, align 4
  %210 = call i32 @access_data(i32* %208, i32 %209)
  store i32 %210, i32* %13, align 4
  %211 = load i32*, i32** %19, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %19, align 8
  br label %190

213:                                              ; preds = %206
  br label %252

214:                                              ; preds = %173
  %215 = load i32*, i32** %15, align 8
  %216 = load i64, i64* %21, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %18, align 8
  %218 = load i32*, i32** %15, align 8
  %219 = load i64, i64* %21, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  %221 = getelementptr inbounds i32, i32* %220, i64 -1
  store i32* %221, i32** %19, align 8
  %222 = load i32*, i32** %15, align 8
  %223 = load i64, i64* %14, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32* %224, i32** %20, align 8
  br label %225

225:                                              ; preds = %245, %214
  %226 = load i32*, i32** %19, align 8
  %227 = load i32*, i32** %15, align 8
  %228 = icmp ult i32* %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i64 @unlikely(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load i32*, i32** %15, align 8
  %234 = load i64, i64* %14, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = getelementptr inbounds i32, i32* %235, i64 -1
  store i32* %236, i32** %19, align 8
  br label %237

237:                                              ; preds = %232, %225
  %238 = load i32*, i32** %19, align 8
  %239 = load i32*, i32** %18, align 8
  %240 = icmp eq i32* %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i64 @unlikely(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  br label %251

245:                                              ; preds = %237
  %246 = load i32*, i32** %19, align 8
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @access_data(i32* %246, i32 %247)
  store i32 %248, i32* %13, align 4
  %249 = load i32*, i32** %19, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 -1
  store i32* %250, i32** %19, align 8
  br label %225

251:                                              ; preds = %244
  br label %252

252:                                              ; preds = %251, %213
  br label %253

253:                                              ; preds = %252, %166
  %254 = load i32, i32* %13, align 4
  store i32 %254, i32* %7, align 4
  br label %255

255:                                              ; preds = %253, %67, %53
  %256 = load i32, i32* %7, align 4
  ret i32 %256
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bzero(i32*, i64) #1

declare dso_local i64 @lfsr_32(i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @access_data(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
