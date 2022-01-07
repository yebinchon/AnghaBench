; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_deactivate_slab.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_deactivate_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i64 }
%struct.page = type { i8*, i64, i32, i64 }
%struct.kmem_cache_cpu = type { i32*, i32* }
%struct.kmem_cache_node = type { i64, i32 }

@DEACTIVATE_TO_HEAD = common dso_local global i32 0, align 4
@DEACTIVATE_REMOTE_FREES = common dso_local global i32 0, align 4
@DEACTIVATE_TO_TAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"drain percpu freelist\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"unfreezing slab\00", align 1
@DEACTIVATE_FULL = common dso_local global i32 0, align 4
@DEACTIVATE_EMPTY = common dso_local global i32 0, align 4
@FREE_SLAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kmem_cache*, %struct.page*, i8*, %struct.kmem_cache_cpu*)* @deactivate_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_slab(%struct.kmem_cache* %0, %struct.page* %1, i8* %2, %struct.kmem_cache_cpu* %3) #0 {
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kmem_cache_cpu*, align 8
  %9 = alloca %struct.kmem_cache_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page, align 8
  %16 = alloca %struct.page, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.kmem_cache_cpu* %3, %struct.kmem_cache_cpu** %8, align 8
  %19 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @page_to_nid(%struct.page* %20)
  %22 = call %struct.kmem_cache_node* @get_node(%struct.kmem_cache* %19, i32 %21)
  store %struct.kmem_cache_node* %22, %struct.kmem_cache_node** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* @DEACTIVATE_TO_HEAD, align 4
  store i32 %23, i32* %14, align 4
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %30 = load i32, i32* @DEACTIVATE_REMOTE_FREES, align 4
  %31 = call i32 @stat(%struct.kmem_cache* %29, i32 %30)
  %32 = load i32, i32* @DEACTIVATE_TO_TAIL, align 4
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %28, %4
  br label %34

34:                                               ; preds = %78, %33
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i8* @get_freepointer(%struct.kmem_cache* %38, i8* %39)
  store i8* %40, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %80

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %67, %44
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %17, align 8
  %49 = load %struct.page*, %struct.page** %6, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %18, align 8
  %52 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @set_freepointer(%struct.kmem_cache* %52, i8* %53, i8* %54)
  %56 = load i64, i64* %18, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @VM_BUG_ON(i32 %65)
  br label %67

67:                                               ; preds = %45
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %69 = load %struct.page*, %struct.page** %6, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @__cmpxchg_double_slab(%struct.kmem_cache* %68, %struct.page* %69, i8* %70, i64 %71, i8* %72, i64 %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br i1 %77, label %45, label %78

78:                                               ; preds = %67
  %79 = load i8*, i8** %13, align 8
  store i8* %79, i8** %7, align 8
  br label %34

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %207, %80
  %82 = load %struct.page*, %struct.page** %6, align 8
  %83 = getelementptr inbounds %struct.page, %struct.page* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  store i8* %84, i8** %85, align 8
  %86 = load %struct.page*, %struct.page** %6, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @VM_BUG_ON(i32 %94)
  %96 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %112

101:                                              ; preds = %81
  %102 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @set_freepointer(%struct.kmem_cache* %105, i8* %106, i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  br label %116

112:                                              ; preds = %81
  %113 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %101
  %117 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %116
  %122 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %123 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %126 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp sge i64 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  store i32 3, i32* %12, align 4
  br label %155

130:                                              ; preds = %121, %116
  %131 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  store i32 1, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  store i32 1, i32* %10, align 4
  %138 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %139 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %138, i32 0, i32 1
  %140 = call i32 @spin_lock(i32* %139)
  br label %141

141:                                              ; preds = %137, %134
  br label %154

142:                                              ; preds = %130
  store i32 2, i32* %12, align 4
  %143 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %144 = call i64 @kmem_cache_debug(%struct.kmem_cache* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %142
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  store i32 1, i32* %10, align 4
  %150 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %151 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %150, i32 0, i32 1
  %152 = call i32 @spin_lock(i32* %151)
  br label %153

153:                                              ; preds = %149, %146, %142
  br label %154

154:                                              ; preds = %153, %141
  br label %155

155:                                              ; preds = %154, %129
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %193

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %164 = load %struct.page*, %struct.page** %6, align 8
  %165 = call i32 @remove_partial(%struct.kmem_cache_node* %163, %struct.page* %164)
  br label %175

166:                                              ; preds = %159
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %171 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %172 = load %struct.page*, %struct.page** %6, align 8
  %173 = call i32 @remove_full(%struct.kmem_cache* %170, %struct.kmem_cache_node* %171, %struct.page* %172)
  br label %174

174:                                              ; preds = %169, %166
  br label %175

175:                                              ; preds = %174, %162
  %176 = load i32, i32* %12, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %180 = load %struct.page*, %struct.page** %6, align 8
  %181 = load i32, i32* %14, align 4
  %182 = call i32 @add_partial(%struct.kmem_cache_node* %179, %struct.page* %180, i32 %181)
  br label %192

183:                                              ; preds = %175
  %184 = load i32, i32* %12, align 4
  %185 = icmp eq i32 %184, 2
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %188 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %189 = load %struct.page*, %struct.page** %6, align 8
  %190 = call i32 @add_full(%struct.kmem_cache* %187, %struct.kmem_cache_node* %188, %struct.page* %189)
  br label %191

191:                                              ; preds = %186, %183
  br label %192

192:                                              ; preds = %191, %178
  br label %193

193:                                              ; preds = %192, %155
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %11, align 4
  %195 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %196 = load %struct.page*, %struct.page** %6, align 8
  %197 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @__cmpxchg_double_slab(%struct.kmem_cache* %195, %struct.page* %196, i8* %198, i64 %200, i8* %202, i64 %204, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %193
  br label %81

208:                                              ; preds = %193
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = load %struct.kmem_cache_node*, %struct.kmem_cache_node** %9, align 8
  %213 = getelementptr inbounds %struct.kmem_cache_node, %struct.kmem_cache_node* %212, i32 0, i32 1
  %214 = call i32 @spin_unlock(i32* %213)
  br label %215

215:                                              ; preds = %211, %208
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @stat(%struct.kmem_cache* %219, i32 %220)
  br label %244

222:                                              ; preds = %215
  %223 = load i32, i32* %12, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %227 = load i32, i32* @DEACTIVATE_FULL, align 4
  %228 = call i32 @stat(%struct.kmem_cache* %226, i32 %227)
  br label %243

229:                                              ; preds = %222
  %230 = load i32, i32* %12, align 4
  %231 = icmp eq i32 %230, 3
  br i1 %231, label %232, label %242

232:                                              ; preds = %229
  %233 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %234 = load i32, i32* @DEACTIVATE_EMPTY, align 4
  %235 = call i32 @stat(%struct.kmem_cache* %233, i32 %234)
  %236 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %237 = load %struct.page*, %struct.page** %6, align 8
  %238 = call i32 @discard_slab(%struct.kmem_cache* %236, %struct.page* %237)
  %239 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %240 = load i32, i32* @FREE_SLAB, align 4
  %241 = call i32 @stat(%struct.kmem_cache* %239, i32 %240)
  br label %242

242:                                              ; preds = %232, %229
  br label %243

243:                                              ; preds = %242, %225
  br label %244

244:                                              ; preds = %243, %218
  %245 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %8, align 8
  %246 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %245, i32 0, i32 1
  store i32* null, i32** %246, align 8
  %247 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %8, align 8
  %248 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %247, i32 0, i32 0
  store i32* null, i32** %248, align 8
  ret void
}

declare dso_local %struct.kmem_cache_node* @get_node(%struct.kmem_cache*, i32) #1

declare dso_local i32 @page_to_nid(%struct.page*) #1

declare dso_local i32 @stat(%struct.kmem_cache*, i32) #1

declare dso_local i8* @get_freepointer(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @set_freepointer(%struct.kmem_cache*, i8*, i8*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @__cmpxchg_double_slab(%struct.kmem_cache*, %struct.page*, i8*, i64, i8*, i64, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @kmem_cache_debug(%struct.kmem_cache*) #1

declare dso_local i32 @remove_partial(%struct.kmem_cache_node*, %struct.page*) #1

declare dso_local i32 @remove_full(%struct.kmem_cache*, %struct.kmem_cache_node*, %struct.page*) #1

declare dso_local i32 @add_partial(%struct.kmem_cache_node*, %struct.page*, i32) #1

declare dso_local i32 @add_full(%struct.kmem_cache*, %struct.kmem_cache_node*, %struct.page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @discard_slab(%struct.kmem_cache*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
