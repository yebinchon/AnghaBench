; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slub.c____slab_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slub.c____slab_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.kmem_cache_cpu = type { %struct.page*, i32, i8* }
%struct.page = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@ALLOC_NODE_MISMATCH = common dso_local global i32 0, align 4
@DEACTIVATE_BYPASS = common dso_local global i32 0, align 4
@ALLOC_REFILL = common dso_local global i32 0, align 4
@CPU_PARTIAL_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kmem_cache*, i32, i32, i64, %struct.kmem_cache_cpu*)* @___slab_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @___slab_alloc(%struct.kmem_cache* %0, i32 %1, i32 %2, i64 %3, %struct.kmem_cache_cpu* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.kmem_cache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.kmem_cache_cpu*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store %struct.kmem_cache_cpu* %4, %struct.kmem_cache_cpu** %11, align 8
  %15 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %16 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %15, i32 0, i32 0
  %17 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %17, %struct.page** %13, align 8
  %18 = load %struct.page*, %struct.page** %13, align 8
  %19 = icmp ne %struct.page* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  br label %126

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %130, %21
  %23 = load %struct.page*, %struct.page** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @node_match(%struct.page* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NUMA_NO_NODE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @node_present_pages(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @node_to_mem_node(i32 %41)
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %36, %31
  %44 = load %struct.page*, %struct.page** %13, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @node_match(%struct.page* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %43
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %54 = load i32, i32* @ALLOC_NODE_MISMATCH, align 4
  %55 = call i32 @stat(%struct.kmem_cache* %53, i32 %54)
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %57 = load %struct.page*, %struct.page** %13, align 8
  %58 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %59 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %62 = call i32 @deactivate_slab(%struct.kmem_cache* %56, %struct.page* %57, i8* %60, %struct.kmem_cache_cpu* %61)
  br label %126

63:                                               ; preds = %43
  br label %64

64:                                               ; preds = %63, %22
  %65 = load %struct.page*, %struct.page** %13, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @pfmemalloc_match(%struct.page* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %75 = load %struct.page*, %struct.page** %13, align 8
  %76 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %77 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %80 = call i32 @deactivate_slab(%struct.kmem_cache* %74, %struct.page* %75, i8* %78, %struct.kmem_cache_cpu* %79)
  br label %126

81:                                               ; preds = %64
  %82 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %83 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %82, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %104

88:                                               ; preds = %81
  %89 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %90 = load %struct.page*, %struct.page** %13, align 8
  %91 = call i8* @get_freelist(%struct.kmem_cache* %89, %struct.page* %90)
  store i8* %91, i8** %12, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %96 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %95, i32 0, i32 0
  store %struct.page* null, %struct.page** %96, align 8
  %97 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %98 = load i32, i32* @DEACTIVATE_BYPASS, align 4
  %99 = call i32 @stat(%struct.kmem_cache* %97, i32 %98)
  br label %126

100:                                              ; preds = %88
  %101 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %102 = load i32, i32* @ALLOC_REFILL, align 4
  %103 = call i32 @stat(%struct.kmem_cache* %101, i32 %102)
  br label %104

104:                                              ; preds = %174, %100, %87
  %105 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %106 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %105, i32 0, i32 0
  %107 = load %struct.page*, %struct.page** %106, align 8
  %108 = getelementptr inbounds %struct.page, %struct.page* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = call i32 @VM_BUG_ON(i32 %112)
  %114 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = call i8* @get_freepointer(%struct.kmem_cache* %114, i8* %115)
  %117 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %118 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %120 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @next_tid(i32 %121)
  %123 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %124 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** %12, align 8
  store i8* %125, i8** %6, align 8
  br label %196

126:                                              ; preds = %186, %94, %73, %52, %20
  %127 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %128 = call %struct.page* @slub_percpu_partial(%struct.kmem_cache_cpu* %127)
  %129 = icmp ne %struct.page* %128, null
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %132 = call %struct.page* @slub_percpu_partial(%struct.kmem_cache_cpu* %131)
  %133 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %134 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %133, i32 0, i32 0
  store %struct.page* %132, %struct.page** %134, align 8
  store %struct.page* %132, %struct.page** %13, align 8
  %135 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %136 = load %struct.page*, %struct.page** %13, align 8
  %137 = call i32 @slub_set_percpu_partial(%struct.kmem_cache_cpu* %135, %struct.page* %136)
  %138 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %139 = load i32, i32* @CPU_PARTIAL_ALLOC, align 4
  %140 = call i32 @stat(%struct.kmem_cache* %138, i32 %139)
  br label %22

141:                                              ; preds = %126
  %142 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i8* @new_slab_objects(%struct.kmem_cache* %142, i32 %143, i32 %144, %struct.kmem_cache_cpu** %11)
  store i8* %145, i8** %12, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = icmp ne i8* %146, null
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %141
  %153 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @slab_out_of_memory(%struct.kmem_cache* %153, i32 %154, i32 %155)
  store i8* null, i8** %6, align 8
  br label %196

157:                                              ; preds = %141
  %158 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %159 = getelementptr inbounds %struct.kmem_cache_cpu, %struct.kmem_cache_cpu* %158, i32 0, i32 0
  %160 = load %struct.page*, %struct.page** %159, align 8
  store %struct.page* %160, %struct.page** %13, align 8
  %161 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %162 = call i64 @kmem_cache_debug(%struct.kmem_cache* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %157
  %165 = load %struct.page*, %struct.page** %13, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @pfmemalloc_match(%struct.page* %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %164, %157
  %170 = phi i1 [ false, %157 ], [ %168, %164 ]
  %171 = zext i1 %170 to i32
  %172 = call i64 @likely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %104

175:                                              ; preds = %169
  %176 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %177 = call i64 @kmem_cache_debug(%struct.kmem_cache* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %175
  %180 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %181 = load %struct.page*, %struct.page** %13, align 8
  %182 = load i8*, i8** %12, align 8
  %183 = load i64, i64* %10, align 8
  %184 = call i32 @alloc_debug_processing(%struct.kmem_cache* %180, %struct.page* %181, i8* %182, i64 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %179
  br label %126

187:                                              ; preds = %179, %175
  %188 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %189 = load %struct.page*, %struct.page** %13, align 8
  %190 = load %struct.kmem_cache*, %struct.kmem_cache** %7, align 8
  %191 = load i8*, i8** %12, align 8
  %192 = call i8* @get_freepointer(%struct.kmem_cache* %190, i8* %191)
  %193 = load %struct.kmem_cache_cpu*, %struct.kmem_cache_cpu** %11, align 8
  %194 = call i32 @deactivate_slab(%struct.kmem_cache* %188, %struct.page* %189, i8* %192, %struct.kmem_cache_cpu* %193)
  %195 = load i8*, i8** %12, align 8
  store i8* %195, i8** %6, align 8
  br label %196

196:                                              ; preds = %187, %152, %104
  %197 = load i8*, i8** %6, align 8
  ret i8* %197
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @node_match(%struct.page*, i32) #1

declare dso_local i32 @node_present_pages(i32) #1

declare dso_local i32 @node_to_mem_node(i32) #1

declare dso_local i32 @stat(%struct.kmem_cache*, i32) #1

declare dso_local i32 @deactivate_slab(%struct.kmem_cache*, %struct.page*, i8*, %struct.kmem_cache_cpu*) #1

declare dso_local i64 @pfmemalloc_match(%struct.page*, i32) #1

declare dso_local i8* @get_freelist(%struct.kmem_cache*, %struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i8* @get_freepointer(%struct.kmem_cache*, i8*) #1

declare dso_local i32 @next_tid(i32) #1

declare dso_local %struct.page* @slub_percpu_partial(%struct.kmem_cache_cpu*) #1

declare dso_local i32 @slub_set_percpu_partial(%struct.kmem_cache_cpu*, %struct.page*) #1

declare dso_local i8* @new_slab_objects(%struct.kmem_cache*, i32, i32, %struct.kmem_cache_cpu**) #1

declare dso_local i32 @slab_out_of_memory(%struct.kmem_cache*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @kmem_cache_debug(%struct.kmem_cache*) #1

declare dso_local i32 @alloc_debug_processing(%struct.kmem_cache*, %struct.page*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
