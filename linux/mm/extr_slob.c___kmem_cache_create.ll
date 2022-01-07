; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slob.c___kmem_cache_create.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slob.c___kmem_cache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__kmem_cache_create(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.kmem_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %11 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  br label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %19 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
