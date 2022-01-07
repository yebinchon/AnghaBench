; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_get_alloc_info.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_get_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_alloc_meta = type opaque
%struct.kmem_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kasan_alloc_meta* @get_alloc_info(%struct.kmem_cache* %0, i8* %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i8*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %7 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr i8, i8* %5, i64 %10
  %12 = bitcast i8* %11 to %struct.kasan_alloc_meta*
  ret %struct.kasan_alloc_meta* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
