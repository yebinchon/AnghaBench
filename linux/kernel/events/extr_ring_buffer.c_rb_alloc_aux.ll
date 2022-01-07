; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_rb_alloc_aux.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_ring_buffer.c_rb_alloc_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32, i32, i64, i32, i32, i32, i32*, i32 }
%struct.perf_event = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.perf_event*, i32*, i32, i32)*, i32 }
%struct.page = type { i32 }

@RING_BUFFER_WRITABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PERF_PMU_CAP_AUX_NO_SG = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rb_alloc_aux(%struct.ring_buffer* %0, %struct.perf_event* %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  store %struct.ring_buffer* %0, %struct.ring_buffer** %8, align 8
  store %struct.perf_event* %1, %struct.perf_event** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @RING_BUFFER_WRITABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %6
  br label %38

33:                                               ; preds = %6
  %34 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cpu_to_node(i32 %36)
  br label %38

38:                                               ; preds = %33, %32
  %39 = phi i32 [ -1, %32 ], [ %37, %33 ]
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %16, align 4
  %42 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %43 = call i32 @has_aux(%struct.perf_event* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %225

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ilog2(i32 %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %17, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %225

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %17, align 4
  br label %62

62:                                               ; preds = %59, %48
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32* @kcalloc_node(i32 %63, i32 8, i32 %64, i32 %65)
  %67 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %68 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %67, i32 0, i32 6
  store i32* %66, i32** %68, align 8
  %69 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %70 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %69, i32 0, i32 6
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %62
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %225

76:                                               ; preds = %62
  %77 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %78 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %83 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  br label %86

86:                                               ; preds = %139, %76
  %87 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %88 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %140

92:                                               ; preds = %86
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %96 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %94, %97
  %99 = call i32 @ilog2(i32 %98)
  %100 = call i32 @min(i32 %93, i32 %99)
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %20, align 4
  %103 = call %struct.page* @rb_alloc_aux_page(i32 %101, i32 %102)
  store %struct.page* %103, %struct.page** %18, align 8
  %104 = load %struct.page*, %struct.page** %18, align 8
  %105 = icmp ne %struct.page* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %92
  br label %213

107:                                              ; preds = %92
  %108 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %109 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.page*, %struct.page** %18, align 8
  %112 = call i32 @page_private(%struct.page* %111)
  %113 = shl i32 1, %112
  %114 = add nsw i32 %110, %113
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %134, %107
  %116 = load i32, i32* %19, align 4
  %117 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %118 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sgt i32 %116, %119
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = load %struct.page*, %struct.page** %18, align 8
  %123 = getelementptr inbounds %struct.page, %struct.page* %122, i32 1
  store %struct.page* %123, %struct.page** %18, align 8
  %124 = ptrtoint %struct.page* %122 to i32
  %125 = call i32 @page_address(i32 %124)
  %126 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %127 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %130 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %128, i64 %132
  store i32 %125, i32* %133, align 4
  br label %134

134:                                              ; preds = %121
  %135 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %136 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  br label %115

139:                                              ; preds = %115
  br label %86

140:                                              ; preds = %86
  %141 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %142 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %141, i32 0, i32 1
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @PERF_PMU_CAP_AUX_NO_SG, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %165

149:                                              ; preds = %140
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %154 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = call %struct.page* @virt_to_page(i32 %157)
  store %struct.page* %158, %struct.page** %21, align 8
  %159 = load %struct.page*, %struct.page** %21, align 8
  %160 = call i32 @page_private(%struct.page* %159)
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %152
  br label %213

164:                                              ; preds = %152
  br label %165

165:                                              ; preds = %164, %149, %140
  %166 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %167 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32 (%struct.perf_event*, i32*, i32, i32)*, i32 (%struct.perf_event*, i32*, i32, i32)** %169, align 8
  %171 = load %struct.perf_event*, %struct.perf_event** %9, align 8
  %172 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %173 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 %170(%struct.perf_event* %171, i32* %174, i32 %175, i32 %176)
  %178 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %179 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %181 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %165
  br label %213

185:                                              ; preds = %165
  store i32 0, i32* %16, align 4
  %186 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %187 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %186, i32 0, i32 4
  %188 = call i32 @refcount_set(i32* %187, i32 1)
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %191 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i64, i64* %12, align 8
  %193 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %194 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  %195 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %196 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %212, label %199

199:                                              ; preds = %185
  %200 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %201 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* @PAGE_SHIFT, align 4
  %207 = sub nsw i32 %206, 1
  %208 = shl i32 %205, %207
  %209 = sext i32 %208 to i64
  %210 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %211 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  br label %212

212:                                              ; preds = %204, %199, %185
  br label %213

213:                                              ; preds = %212, %184, %163, %106
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %219 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 8
  br label %223

220:                                              ; preds = %213
  %221 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %222 = call i32 @__rb_free_aux(%struct.ring_buffer* %221)
  br label %223

223:                                              ; preds = %220, %216
  %224 = load i32, i32* %16, align 4
  store i32 %224, i32* %7, align 4
  br label %225

225:                                              ; preds = %223, %73, %56, %45
  %226 = load i32, i32* %7, align 4
  ret i32 %226
}

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @has_aux(%struct.perf_event*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.page* @rb_alloc_aux_page(i32, i32) #1

declare dso_local i32 @page_private(%struct.page*) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @__rb_free_aux(%struct.ring_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
