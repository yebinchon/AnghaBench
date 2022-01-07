; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_levenshtein.c_levenshtein.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_levenshtein.c_levenshtein.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @levenshtein(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @malloc(i32 %29)
  store i32* %30, i32** %15, align 8
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32* @malloc(i32 %35)
  store i32* %36, i32** %16, align 8
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32* @malloc(i32 %41)
  store i32* %42, i32** %17, align 8
  store i32 0, i32* %19, align 4
  br label %43

43:                                               ; preds = %55, %6
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %19, align 4
  br label %43

58:                                               ; preds = %43
  store i32 0, i32* %18, align 4
  br label %59

59:                                               ; preds = %234, %58
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %237

63:                                               ; preds = %59
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32*, i32** %17, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %19, align 4
  br label %70

70:                                               ; preds = %226, %63
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %229

74:                                               ; preds = %70
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %19, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %86, %92
  %94 = zext i1 %93 to i32
  %95 = mul nsw i32 %80, %94
  %96 = add nsw i32 %79, %95
  %97 = load i32*, i32** %17, align 8
  %98 = load i32, i32* %19, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  store i32 %96, i32* %101, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %167

104:                                              ; preds = %74
  %105 = load i32, i32* %19, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %167

107:                                              ; preds = %104
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %18, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = load i8*, i8** %8, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %114, %120
  br i1 %121, label %122, label %167

122:                                              ; preds = %107
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %128, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %122
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %149, %150
  %152 = icmp sgt i32 %143, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %137
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %19, align 4
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32*, i32** %17, align 8
  %163 = load i32, i32* %19, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %153, %137, %122, %107, %104, %74
  %168 = load i32*, i32** %17, align 8
  %169 = load i32, i32* %19, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %16, align 8
  %175 = load i32, i32* %19, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %179, %180
  %182 = icmp sgt i32 %173, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %167
  %184 = load i32*, i32** %16, align 8
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32*, i32** %17, align 8
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  store i32 %191, i32* %196, align 4
  br label %197

197:                                              ; preds = %183, %167
  %198 = load i32*, i32** %17, align 8
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %17, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %208, %209
  %211 = icmp sgt i32 %203, %210
  br i1 %211, label %212, label %225

212:                                              ; preds = %197
  %213 = load i32*, i32** %17, align 8
  %214 = load i32, i32* %19, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32*, i32** %17, align 8
  %221 = load i32, i32* %19, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 %219, i32* %224, align 4
  br label %225

225:                                              ; preds = %212, %197
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %19, align 4
  br label %70

229:                                              ; preds = %70
  %230 = load i32*, i32** %15, align 8
  store i32* %230, i32** %20, align 8
  %231 = load i32*, i32** %16, align 8
  store i32* %231, i32** %15, align 8
  %232 = load i32*, i32** %17, align 8
  store i32* %232, i32** %16, align 8
  %233 = load i32*, i32** %20, align 8
  store i32* %233, i32** %17, align 8
  br label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %18, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %18, align 4
  br label %59

237:                                              ; preds = %59
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %18, align 4
  %243 = load i32*, i32** %15, align 8
  %244 = call i32 @free(i32* %243)
  %245 = load i32*, i32** %16, align 8
  %246 = call i32 @free(i32* %245)
  %247 = load i32*, i32** %17, align 8
  %248 = call i32 @free(i32* %247)
  %249 = load i32, i32* %18, align 4
  ret i32 %249
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
