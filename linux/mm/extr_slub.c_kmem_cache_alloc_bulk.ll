; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c_kmem_cache_alloc_bulk.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c_kmem_cache_alloc_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }
%struct.kmem_cache_cpu = type { i32, i8* }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_cache_alloc_bulk(%struct.kmem_cache* %0, i32 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.kmem_cache_cpu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache* %14, i32 %15)
  store %struct.kmem_cache* %16, %struct.kmem_cache** %6, align 8
  %17 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %18 = icmp ne %struct.kmem_cache* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %151

24:                                               ; preds = %4
  %25 = call i32 (...) @local_irq_disable()
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %27 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.kmem_cache_cpu* @this_cpu_ptr(i32 %28)
  store %struct.kmem_cache_cpu* %29, %struct.kmem_cache_cpu** %10, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %97, %24
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %8, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %100

35:                                               ; preds = %30
  %36 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %10, align 8
  %37 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %35
  %46 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @NUMA_NO_NODE, align 4
  %49 = load i32, i32* @_RET_IP_, align 4
  %50 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %10, align 8
  %51 = call i8* @___slab_alloc(%struct.kmem_cache* %46, i32 %47, i32 %48, i32 %49, %struct.kmem_cache_cpu* %50)
  %52 = load i8**, i8*** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %51, i8** %55, align 8
  %56 = load i8**, i8*** %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %140

67:                                               ; preds = %45
  %68 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %69 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.kmem_cache_cpu* @this_cpu_ptr(i32 %70)
  store %struct.kmem_cache_cpu* %71, %struct.kmem_cache_cpu** %10, align 8
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %73 = load i8**, i8*** %9, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @maybe_wipe_obj_freeptr(%struct.kmem_cache* %72, i8* %77)
  br label %97

79:                                               ; preds = %35
  %80 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i8* @get_freepointer(%struct.kmem_cache* %80, i8* %81)
  %83 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %10, align 8
  %84 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i8**, i8*** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %85, i8** %89, align 8
  %90 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @maybe_wipe_obj_freeptr(%struct.kmem_cache* %90, i8* %95)
  br label %97

97:                                               ; preds = %79, %67
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %30

100:                                              ; preds = %30
  %101 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %10, align 8
  %102 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @next_tid(i32 %103)
  %105 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %10, align 8
  %106 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = call i32 (...) @local_irq_enable()
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %110 = call i32 @slab_want_init_on_alloc(i32 %108, %struct.kmem_cache* %109)
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %100
  store i32 0, i32* %13, align 4
  br label %114

114:                                              ; preds = %128, %113
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i8**, i8*** %9, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %125 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @memset(i8* %123, i32 0, i32 %126)
  br label %128

128:                                              ; preds = %118
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %114

131:                                              ; preds = %114
  br label %132

132:                                              ; preds = %131, %100
  %133 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %134 = load i32, i32* %7, align 4
  %135 = load i64, i64* %8, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i8**, i8*** %9, align 8
  %138 = call i32 @slab_post_alloc_hook(%struct.kmem_cache* %133, i32 %134, i32 %136, i8** %137)
  %139 = load i32, i32* %11, align 4
  store i32 %139, i32* %5, align 4
  br label %151

140:                                              ; preds = %66
  %141 = call i32 (...) @local_irq_enable()
  %142 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i8**, i8*** %9, align 8
  %146 = call i32 @slab_post_alloc_hook(%struct.kmem_cache* %142, i32 %143, i32 %144, i8** %145)
  %147 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i8**, i8*** %9, align 8
  %150 = call i32 @__kmem_cache_free_bulk(%struct.kmem_cache* %147, i32 %148, i8** %149)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %140, %132, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local %struct.kmem_cache* @slab_pre_alloc_hook(%struct.kmem_cache*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local %struct.kmem_cache_cpu* @this_cpu_ptr(i32) #1

declare dso_local i8* @___slab_alloc(%struct.kmem_cache*, i32, i32, i32, %struct.kmem_cache_cpu*) #1

declare dso_local i32 @maybe_wipe_obj_freeptr(%struct.kmem_cache*, i8*) #1

declare dso_local i8* @get_freepointer(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @next_tid(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @slab_want_init_on_alloc(i32, %struct.kmem_cache*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @slab_post_alloc_hook(%struct.kmem_cache*, i32, i32, i8**) #1

declare dso_local i32 @__kmem_cache_free_bulk(%struct.kmem_cache*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
