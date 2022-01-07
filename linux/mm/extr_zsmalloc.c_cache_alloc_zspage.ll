; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_cache_alloc_zspage.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_cache_alloc_zspage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zspage = type { i32 }
%struct.zs_pool = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4
@__GFP_MOVABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zspage* (%struct.zs_pool*, i32)* @cache_alloc_zspage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zspage* @cache_alloc_zspage(%struct.zs_pool* %0, i32 %1) #0 {
  %3 = alloca %struct.zs_pool*, align 8
  %4 = alloca i32, align 4
  store %struct.zs_pool* %0, %struct.zs_pool** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.zs_pool*, %struct.zs_pool** %3, align 8
  %6 = getelementptr inbounds %struct.zs_pool, %struct.zs_pool* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @__GFP_HIGHMEM, align 4
  %10 = load i32, i32* @__GFP_MOVABLE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = call %struct.zspage* @kmem_cache_alloc(i32 %7, i32 %13)
  ret %struct.zspage* %14
}

declare dso_local %struct.zspage* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
