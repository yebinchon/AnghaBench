; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__dcacheline_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_sort.c_sort__dcacheline_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_entry = type { i64, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.map* }
%struct.map = type { i64, i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }

@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort__dcacheline_cmp(%struct.hist_entry* %0, %struct.hist_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_entry*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca %struct.map*, align 8
  store %struct.hist_entry* %0, %struct.hist_entry** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  %10 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %11 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %224

15:                                               ; preds = %2
  %16 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %17 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %224

21:                                               ; preds = %15
  %22 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %224

30:                                               ; preds = %21
  %31 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %32 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %35 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %224

39:                                               ; preds = %30
  %40 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %41 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.map*, %struct.map** %44, align 8
  store %struct.map* %45, %struct.map** %8, align 8
  %46 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %47 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.map*, %struct.map** %50, align 8
  store %struct.map* %51, %struct.map** %9, align 8
  %52 = load %struct.map*, %struct.map** %8, align 8
  %53 = icmp ne %struct.map* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %39
  %55 = load %struct.map*, %struct.map** %9, align 8
  %56 = icmp ne %struct.map* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %199

58:                                               ; preds = %54, %39
  %59 = load %struct.map*, %struct.map** %8, align 8
  %60 = icmp ne %struct.map* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %224

62:                                               ; preds = %58
  %63 = load %struct.map*, %struct.map** %9, align 8
  %64 = icmp ne %struct.map* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %224

66:                                               ; preds = %62
  %67 = load %struct.map*, %struct.map** %8, align 8
  %68 = getelementptr inbounds %struct.map, %struct.map* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.map*, %struct.map** %9, align 8
  %71 = getelementptr inbounds %struct.map, %struct.map* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %224

75:                                               ; preds = %66
  %76 = load %struct.map*, %struct.map** %8, align 8
  %77 = getelementptr inbounds %struct.map, %struct.map* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.map*, %struct.map** %9, align 8
  %80 = getelementptr inbounds %struct.map, %struct.map* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %224

84:                                               ; preds = %75
  %85 = load %struct.map*, %struct.map** %8, align 8
  %86 = getelementptr inbounds %struct.map, %struct.map* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.map*, %struct.map** %9, align 8
  %89 = getelementptr inbounds %struct.map, %struct.map* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %224

93:                                               ; preds = %84
  %94 = load %struct.map*, %struct.map** %8, align 8
  %95 = getelementptr inbounds %struct.map, %struct.map* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.map*, %struct.map** %9, align 8
  %98 = getelementptr inbounds %struct.map, %struct.map* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 1, i32* %3, align 4
  br label %224

102:                                              ; preds = %93
  %103 = load %struct.map*, %struct.map** %8, align 8
  %104 = getelementptr inbounds %struct.map, %struct.map* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.map*, %struct.map** %9, align 8
  %107 = getelementptr inbounds %struct.map, %struct.map* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  store i32 -1, i32* %3, align 4
  br label %224

111:                                              ; preds = %102
  %112 = load %struct.map*, %struct.map** %8, align 8
  %113 = getelementptr inbounds %struct.map, %struct.map* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.map*, %struct.map** %9, align 8
  %116 = getelementptr inbounds %struct.map, %struct.map* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %224

120:                                              ; preds = %111
  %121 = load %struct.map*, %struct.map** %8, align 8
  %122 = getelementptr inbounds %struct.map, %struct.map* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.map*, %struct.map** %9, align 8
  %125 = getelementptr inbounds %struct.map, %struct.map* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i32 -1, i32* %3, align 4
  br label %224

129:                                              ; preds = %120
  %130 = load %struct.map*, %struct.map** %8, align 8
  %131 = getelementptr inbounds %struct.map, %struct.map* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.map*, %struct.map** %9, align 8
  %134 = getelementptr inbounds %struct.map, %struct.map* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp slt i64 %132, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  store i32 1, i32* %3, align 4
  br label %224

138:                                              ; preds = %129
  %139 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %140 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %198

144:                                              ; preds = %138
  %145 = load %struct.map*, %struct.map** %8, align 8
  %146 = getelementptr inbounds %struct.map, %struct.map* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @MAP_SHARED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %198, label %151

151:                                              ; preds = %144
  %152 = load %struct.map*, %struct.map** %8, align 8
  %153 = getelementptr inbounds %struct.map, %struct.map* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %198, label %156

156:                                              ; preds = %151
  %157 = load %struct.map*, %struct.map** %8, align 8
  %158 = getelementptr inbounds %struct.map, %struct.map* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %198, label %161

161:                                              ; preds = %156
  %162 = load %struct.map*, %struct.map** %8, align 8
  %163 = getelementptr inbounds %struct.map, %struct.map* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %198, label %166

166:                                              ; preds = %161
  %167 = load %struct.map*, %struct.map** %8, align 8
  %168 = getelementptr inbounds %struct.map, %struct.map* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %166
  %172 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %173 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %172, i32 0, i32 2
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %178 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %177, i32 0, i32 2
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %176, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  store i32 -1, i32* %3, align 4
  br label %224

184:                                              ; preds = %171
  %185 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %186 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %185, i32 0, i32 2
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %191 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %190, i32 0, i32 2
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp slt i64 %189, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %184
  store i32 1, i32* %3, align 4
  br label %224

197:                                              ; preds = %184
  br label %198

198:                                              ; preds = %197, %166, %161, %156, %151, %144, %138
  br label %199

199:                                              ; preds = %198, %57
  %200 = load %struct.hist_entry*, %struct.hist_entry** %4, align 8
  %201 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @cl_address(i32 %205)
  store i64 %206, i64* %6, align 8
  %207 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %208 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %207, i32 0, i32 1
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i64 @cl_address(i32 %212)
  store i64 %213, i64* %7, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i64, i64* %7, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %199
  store i32 -1, i32* %3, align 4
  br label %224

218:                                              ; preds = %199
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* %7, align 8
  %221 = icmp slt i64 %219, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i32 1, i32* %3, align 4
  br label %224

223:                                              ; preds = %218
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %222, %217, %196, %183, %137, %128, %119, %110, %101, %92, %83, %74, %65, %61, %38, %29, %20, %14
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i64 @cl_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
