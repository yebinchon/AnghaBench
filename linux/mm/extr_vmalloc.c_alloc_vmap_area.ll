; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_alloc_vmap_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_alloc_vmap_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmap_area = type { i64, i64, i32*, i32 }

@vmap_initialized = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@vmap_area_cachep = common dso_local global i32 0, align 4
@GFP_RECLAIM_MASK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@ne_fit_preload_node = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@vmap_area_lock = common dso_local global i32 0, align 4
@vmap_area_root = common dso_local global i32 0, align 4
@vmap_area_list = common dso_local global i32 0, align 4
@vmap_notify_list = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"vmap allocation for size %lu failed: use vmalloc=<size> to increase size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmap_area* (i64, i64, i64, i64, i32, i32)* @alloc_vmap_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmap_area* @alloc_vmap_area(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vmap_area*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmap_area*, align 8
  %15 = alloca %struct.vmap_area*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @offset_in_page(i64 %24)
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @is_power_of_2(i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* @vmap_initialized, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %6
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.vmap_area* @ERR_PTR(i32 %41)
  store %struct.vmap_area* %42, %struct.vmap_area** %7, align 8
  br label %181

43:                                               ; preds = %6
  %44 = call i32 (...) @might_sleep()
  %45 = load i32, i32* @vmap_area_cachep, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = call %struct.vmap_area* @kmem_cache_alloc_node(i32 %45, i32 %48, i32 %49)
  store %struct.vmap_area* %50, %struct.vmap_area** %14, align 8
  %51 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %52 = icmp ne %struct.vmap_area* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.vmap_area* @ERR_PTR(i32 %59)
  store %struct.vmap_area* %60, %struct.vmap_area** %7, align 8
  br label %181

61:                                               ; preds = %43
  %62 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %63 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %62, i32 0, i32 3
  %64 = load i32, i32* @SIZE_MAX, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @GFP_RECLAIM_MASK, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @kmemleak_scan_area(i32* %63, i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %161, %151, %61
  %70 = call i32 (...) @preempt_disable()
  %71 = load i32, i32* @ne_fit_preload_node, align 4
  %72 = call i32 @__this_cpu_read(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = call i32 (...) @preempt_enable()
  %76 = load i32, i32* @vmap_area_cachep, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call %struct.vmap_area* @kmem_cache_alloc_node(i32 %76, i32 %77, i32 %78)
  store %struct.vmap_area* %79, %struct.vmap_area** %15, align 8
  %80 = call i32 (...) @preempt_disable()
  %81 = load i32, i32* @ne_fit_preload_node, align 4
  %82 = load %struct.vmap_area*, %struct.vmap_area** %15, align 8
  %83 = call i64 @__this_cpu_cmpxchg(i32 %81, i32* null, %struct.vmap_area* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %74
  %86 = load %struct.vmap_area*, %struct.vmap_area** %15, align 8
  %87 = icmp ne %struct.vmap_area* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @vmap_area_cachep, align 4
  %90 = load %struct.vmap_area*, %struct.vmap_area** %15, align 8
  %91 = call i32 @kmem_cache_free(i32 %89, %struct.vmap_area* %90)
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %74
  br label %94

94:                                               ; preds = %93, %69
  %95 = call i32 @spin_lock(i32* @vmap_area_lock)
  %96 = call i32 (...) @preempt_enable()
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i64 @__alloc_vmap_area(i64 %97, i64 %98, i64 %99, i64 %100)
  store i64 %101, i64* %16, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %11, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %147

109:                                              ; preds = %94
  %110 = load i64, i64* %16, align 8
  %111 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %112 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %8, align 8
  %115 = add i64 %113, %114
  %116 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %117 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %119 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %118, i32 0, i32 2
  store i32* null, i32** %119, align 8
  %120 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %121 = call i32 @insert_vmap_area(%struct.vmap_area* %120, i32* @vmap_area_root, i32* @vmap_area_list)
  %122 = call i32 @spin_unlock(i32* @vmap_area_lock)
  %123 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %124 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %9, align 8
  %127 = call i32 @IS_ALIGNED(i64 %125, i64 %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %133 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = icmp ult i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 @BUG_ON(i32 %137)
  %139 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %140 = getelementptr inbounds %struct.vmap_area, %struct.vmap_area* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp ugt i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @BUG_ON(i32 %144)
  %146 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  store %struct.vmap_area* %146, %struct.vmap_area** %7, align 8
  br label %181

147:                                              ; preds = %108
  %148 = call i32 @spin_unlock(i32* @vmap_area_lock)
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = call i32 (...) @purge_vmap_area_lazy()
  store i32 1, i32* %17, align 4
  br label %69

153:                                              ; preds = %147
  %154 = load i32, i32* %13, align 4
  %155 = call i64 @gfpflags_allow_blocking(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  store i64 0, i64* %18, align 8
  %158 = call i32 @blocking_notifier_call_chain(i32* @vmap_notify_list, i32 0, i64* %18)
  %159 = load i64, i64* %18, align 8
  %160 = icmp ugt i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store i32 0, i32* %17, align 4
  br label %69

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %153
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @__GFP_NOWARN, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = call i64 (...) @printk_ratelimit()
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i64, i64* %8, align 8
  %173 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %171, %168, %163
  %175 = load i32, i32* @vmap_area_cachep, align 4
  %176 = load %struct.vmap_area*, %struct.vmap_area** %14, align 8
  %177 = call i32 @kmem_cache_free(i32 %175, %struct.vmap_area* %176)
  %178 = load i32, i32* @EBUSY, align 4
  %179 = sub nsw i32 0, %178
  %180 = call %struct.vmap_area* @ERR_PTR(i32 %179)
  store %struct.vmap_area* %180, %struct.vmap_area** %7, align 8
  br label %181

181:                                              ; preds = %174, %109, %57, %39
  %182 = load %struct.vmap_area*, %struct.vmap_area** %7, align 8
  ret %struct.vmap_area* %182
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.vmap_area* @ERR_PTR(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.vmap_area* @kmem_cache_alloc_node(i32, i32, i32) #1

declare dso_local i32 @kmemleak_scan_area(i32*, i32, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i64 @__this_cpu_cmpxchg(i32, i32*, %struct.vmap_area*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vmap_area*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @__alloc_vmap_area(i64, i64, i64, i64) #1

declare dso_local i32 @insert_vmap_area(%struct.vmap_area*, i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i32 @purge_vmap_area_lazy(...) #1

declare dso_local i64 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i64*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
