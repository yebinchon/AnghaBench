; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_entropy_common.c_HUF_readStats_wksp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_entropy_common.c_HUF_readStats_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_readStats_wksp(i32* %0, i64 %1, i64* %2, i64* %3, i64* %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64* %2, i64** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64* %4, i64** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %21, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %9
  %36 = load i32, i32* @srcSize_wrong, align 4
  %37 = call i64 @ERROR(i32 %36)
  store i64 %37, i64* %10, align 8
  br label %236

38:                                               ; preds = %9
  %39 = load i32*, i32** %21, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %22, align 8
  %43 = load i64, i64* %22, align 8
  %44 = icmp uge i64 %43, 128
  br i1 %44, label %45, label %96

45:                                               ; preds = %38
  %46 = load i64, i64* %22, align 8
  %47 = sub i64 %46, 127
  store i64 %47, i64* %23, align 8
  %48 = load i64, i64* %23, align 8
  %49 = add i64 %48, 1
  %50 = udiv i64 %49, 2
  store i64 %50, i64* %22, align 8
  %51 = load i64, i64* %22, align 8
  %52 = add i64 %51, 1
  %53 = load i64, i64* %17, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @srcSize_wrong, align 4
  %57 = call i64 @ERROR(i32 %56)
  store i64 %57, i64* %10, align 8
  br label %236

58:                                               ; preds = %45
  %59 = load i64, i64* %23, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp uge i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @corruption_detected, align 4
  %64 = call i64 @ERROR(i32 %63)
  store i64 %64, i64* %10, align 8
  br label %236

65:                                               ; preds = %58
  %66 = load i32*, i32** %21, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32* %67, i32** %21, align 8
  store i64 0, i64* %24, align 8
  br label %68

68:                                               ; preds = %92, %65
  %69 = load i64, i64* %24, align 8
  %70 = load i64, i64* %23, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load i32*, i32** %21, align 8
  %74 = load i64, i64* %24, align 8
  %75 = udiv i64 %74, 2
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i64, i64* %24, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i32*, i32** %21, align 8
  %83 = load i64, i64* %24, align 8
  %84 = udiv i64 %83, 2
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 15
  %88 = load i32*, i32** %11, align 8
  %89 = load i64, i64* %24, align 8
  %90 = add i64 %89, 1
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %72
  %93 = load i64, i64* %24, align 8
  %94 = add i64 %93, 2
  store i64 %94, i64* %24, align 8
  br label %68

95:                                               ; preds = %68
  br label %120

96:                                               ; preds = %38
  %97 = load i64, i64* %22, align 8
  %98 = add i64 %97, 1
  %99 = load i64, i64* %17, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* @srcSize_wrong, align 4
  %103 = call i64 @ERROR(i32 %102)
  store i64 %103, i64* %10, align 8
  br label %236

104:                                              ; preds = %96
  %105 = load i32*, i32** %11, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %106, 1
  %108 = load i32*, i32** %21, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i64, i64* %22, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i64, i64* %19, align 8
  %113 = call i64 @FSE_decompress_wksp(i32* %105, i64 %107, i32* %109, i64 %110, i32 6, i8* %111, i64 %112)
  store i64 %113, i64* %23, align 8
  %114 = load i64, i64* %23, align 8
  %115 = call i64 @FSE_isError(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %104
  %118 = load i64, i64* %23, align 8
  store i64 %118, i64* %10, align 8
  br label %236

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %95
  %121 = load i64*, i64** %13, align 8
  %122 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memset(i64* %121, i32 0, i32 %126)
  store i64 0, i64* %20, align 8
  store i64 0, i64* %25, align 8
  br label %128

128:                                              ; preds = %161, %120
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* %23, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %164

132:                                              ; preds = %128
  %133 = load i32*, i32** %11, align 8
  %134 = load i64, i64* %25, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* @corruption_detected, align 4
  %141 = call i64 @ERROR(i32 %140)
  store i64 %141, i64* %10, align 8
  br label %236

142:                                              ; preds = %132
  %143 = load i64*, i64** %13, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = load i64, i64* %25, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %143, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = load i64, i64* %25, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 1, %155
  %157 = ashr i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %20, align 8
  %160 = add i64 %159, %158
  store i64 %160, i64* %20, align 8
  br label %161

161:                                              ; preds = %142
  %162 = load i64, i64* %25, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %25, align 8
  br label %128

164:                                              ; preds = %128
  %165 = load i64, i64* %20, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i32, i32* @corruption_detected, align 4
  %169 = call i64 @ERROR(i32 %168)
  store i64 %169, i64* %10, align 8
  br label %236

170:                                              ; preds = %164
  %171 = load i64, i64* %20, align 8
  %172 = call i32 @BIT_highbit32(i64 %171)
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %26, align 8
  %175 = load i64, i64* %26, align 8
  %176 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ugt i64 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load i32, i32* @corruption_detected, align 4
  %181 = call i64 @ERROR(i32 %180)
  store i64 %181, i64* %10, align 8
  br label %236

182:                                              ; preds = %170
  %183 = load i64, i64* %26, align 8
  %184 = load i64*, i64** %15, align 8
  store i64 %183, i64* %184, align 8
  %185 = load i64, i64* %26, align 8
  %186 = trunc i64 %185 to i32
  %187 = shl i32 1, %186
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %27, align 8
  %189 = load i64, i64* %27, align 8
  %190 = load i64, i64* %20, align 8
  %191 = sub i64 %189, %190
  store i64 %191, i64* %28, align 8
  %192 = load i64, i64* %28, align 8
  %193 = call i32 @BIT_highbit32(i64 %192)
  %194 = shl i32 1, %193
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %29, align 8
  %196 = load i64, i64* %28, align 8
  %197 = call i32 @BIT_highbit32(i64 %196)
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %30, align 8
  %200 = load i64, i64* %29, align 8
  %201 = load i64, i64* %28, align 8
  %202 = icmp ne i64 %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %182
  %204 = load i32, i32* @corruption_detected, align 4
  %205 = call i64 @ERROR(i32 %204)
  store i64 %205, i64* %10, align 8
  br label %236

206:                                              ; preds = %182
  %207 = load i64, i64* %30, align 8
  %208 = trunc i64 %207 to i32
  %209 = load i32*, i32** %11, align 8
  %210 = load i64, i64* %23, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  store i32 %208, i32* %211, align 4
  %212 = load i64*, i64** %13, align 8
  %213 = load i64, i64* %30, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %214, align 8
  %217 = load i64*, i64** %13, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ult i64 %219, 2
  br i1 %220, label %227, label %221

221:                                              ; preds = %206
  %222 = load i64*, i64** %13, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = and i64 %224, 1
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %221, %206
  %228 = load i32, i32* @corruption_detected, align 4
  %229 = call i64 @ERROR(i32 %228)
  store i64 %229, i64* %10, align 8
  br label %236

230:                                              ; preds = %221
  %231 = load i64, i64* %23, align 8
  %232 = add i64 %231, 1
  %233 = load i64*, i64** %14, align 8
  store i64 %232, i64* %233, align 8
  %234 = load i64, i64* %22, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %10, align 8
  br label %236

236:                                              ; preds = %230, %227, %203, %179, %167, %139, %117, %101, %62, %55, %35
  %237 = load i64, i64* %10, align 8
  ret i64 %237
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @FSE_decompress_wksp(i32*, i64, i32*, i64, i32, i8*, i64) #1

declare dso_local i64 @FSE_isError(i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @BIT_highbit32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
