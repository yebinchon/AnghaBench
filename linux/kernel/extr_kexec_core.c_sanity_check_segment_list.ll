; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_sanity_check_segment_list.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_sanity_check_segment_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.kimage = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@KEXEC_DESTINATION_MEMORY_LIMIT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KEXEC_TYPE_CRASH = common dso_local global i64 0, align 8
@crashk_res = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sanity_check_segment_list(%struct.kimage* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kimage*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.kimage* %0, %struct.kimage** %3, align 8
  %17 = load %struct.kimage*, %struct.kimage** %3, align 8
  %18 = getelementptr inbounds %struct.kimage, %struct.kimage* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %20 = call i64 (...) @totalram_pages()
  store i64 %20, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %74, %1
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %77

26:                                               ; preds = %21
  %27 = load %struct.kimage*, %struct.kimage** %3, align 8
  %28 = getelementptr inbounds %struct.kimage, %struct.kimage* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.kimage*, %struct.kimage** %3, align 8
  %37 = getelementptr inbounds %struct.kimage, %struct.kimage* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %35, %43
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load i32, i32* @EADDRNOTAVAIL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %268

51:                                               ; preds = %26
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @PAGE_MASK, align 8
  %54 = xor i64 %53, -1
  %55 = and i64 %52, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @PAGE_MASK, align 8
  %60 = xor i64 %59, -1
  %61 = and i64 %58, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @EADDRNOTAVAIL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %268

66:                                               ; preds = %57
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @KEXEC_DESTINATION_MEMORY_LIMIT, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* @EADDRNOTAVAIL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %268

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %21

77:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %139, %77
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %5, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %142

83:                                               ; preds = %78
  %84 = load %struct.kimage*, %struct.kimage** %3, align 8
  %85 = getelementptr inbounds %struct.kimage, %struct.kimage* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.kimage*, %struct.kimage** %3, align 8
  %94 = getelementptr inbounds %struct.kimage, %struct.kimage* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %92, %100
  store i64 %101, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %102

102:                                              ; preds = %135, %83
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ult i64 %103, %105
  br i1 %106, label %107, label %138

107:                                              ; preds = %102
  %108 = load %struct.kimage*, %struct.kimage** %3, align 8
  %109 = getelementptr inbounds %struct.kimage, %struct.kimage* %108, i32 0, i32 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %13, align 8
  %115 = load i64, i64* %13, align 8
  %116 = load %struct.kimage*, %struct.kimage** %3, align 8
  %117 = getelementptr inbounds %struct.kimage, %struct.kimage* %116, i32 0, i32 2
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %115, %122
  store i64 %123, i64* %14, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %13, align 8
  %126 = icmp ugt i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %107
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %268

134:                                              ; preds = %127, %107
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %12, align 8
  br label %102

138:                                              ; preds = %102
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  br label %78

142:                                              ; preds = %78
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %170, %142
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* %5, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %143
  %149 = load %struct.kimage*, %struct.kimage** %3, align 8
  %150 = getelementptr inbounds %struct.kimage, %struct.kimage* %149, i32 0, i32 2
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.kimage*, %struct.kimage** %3, align 8
  %158 = getelementptr inbounds %struct.kimage, %struct.kimage* %157, i32 0, i32 2
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ugt i64 %156, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %148
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %268

169:                                              ; preds = %148
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %4, align 4
  br label %143

173:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %207, %173
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %5, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %174
  %180 = load %struct.kimage*, %struct.kimage** %3, align 8
  %181 = getelementptr inbounds %struct.kimage, %struct.kimage* %180, i32 0, i32 2
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @PAGE_COUNT(i64 %187)
  %189 = load i64, i64* %7, align 8
  %190 = udiv i64 %189, 2
  %191 = icmp ugt i64 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %179
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  br label %268

195:                                              ; preds = %179
  %196 = load %struct.kimage*, %struct.kimage** %3, align 8
  %197 = getelementptr inbounds %struct.kimage, %struct.kimage* %196, i32 0, i32 2
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = call i64 @PAGE_COUNT(i64 %203)
  %205 = load i64, i64* %6, align 8
  %206 = add i64 %205, %204
  store i64 %206, i64* %6, align 8
  br label %207

207:                                              ; preds = %195
  %208 = load i32, i32* %4, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %4, align 4
  br label %174

210:                                              ; preds = %174
  %211 = load i64, i64* %6, align 8
  %212 = load i64, i64* %7, align 8
  %213 = udiv i64 %212, 2
  %214 = icmp ugt i64 %211, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %268

218:                                              ; preds = %210
  %219 = load %struct.kimage*, %struct.kimage** %3, align 8
  %220 = getelementptr inbounds %struct.kimage, %struct.kimage* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @KEXEC_TYPE_CRASH, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %267

224:                                              ; preds = %218
  store i32 0, i32* %4, align 4
  br label %225

225:                                              ; preds = %263, %224
  %226 = load i32, i32* %4, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* %5, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %266

230:                                              ; preds = %225
  %231 = load %struct.kimage*, %struct.kimage** %3, align 8
  %232 = getelementptr inbounds %struct.kimage, %struct.kimage* %231, i32 0, i32 2
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %232, align 8
  %234 = load i32, i32* %4, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %15, align 8
  %239 = load i64, i64* %15, align 8
  %240 = load %struct.kimage*, %struct.kimage** %3, align 8
  %241 = getelementptr inbounds %struct.kimage, %struct.kimage* %240, i32 0, i32 2
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %239, %247
  %249 = sub i64 %248, 1
  store i64 %249, i64* %16, align 8
  %250 = load i64, i64* %15, align 8
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @crashk_res, i32 0, i32 1), align 4
  %252 = call i64 @phys_to_boot_phys(i32 %251)
  %253 = icmp ult i64 %250, %252
  br i1 %253, label %259, label %254

254:                                              ; preds = %230
  %255 = load i64, i64* %16, align 8
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @crashk_res, i32 0, i32 0), align 4
  %257 = call i64 @phys_to_boot_phys(i32 %256)
  %258 = icmp ugt i64 %255, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %254, %230
  %260 = load i32, i32* @EADDRNOTAVAIL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %2, align 4
  br label %268

262:                                              ; preds = %254
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %4, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %4, align 4
  br label %225

266:                                              ; preds = %225
  br label %267

267:                                              ; preds = %266, %218
  store i32 0, i32* %2, align 4
  br label %268

268:                                              ; preds = %267, %259, %215, %192, %166, %131, %70, %63, %48
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local i64 @totalram_pages(...) #1

declare dso_local i64 @PAGE_COUNT(i64) #1

declare dso_local i64 @phys_to_boot_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
