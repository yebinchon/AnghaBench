; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_slab_want_init_on_free.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_..slab.h_slab_want_init_on_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i64 }

@init_on_free = common dso_local global i32 0, align 4
@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@SLAB_POISON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*)* @slab_want_init_on_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slab_want_init_on_free(%struct.kmem_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  %4 = call i64 @static_branch_unlikely(i32* @init_on_free)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %8 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %13 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %16 = load i32, i32* @SLAB_POISON, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %11, %6
  %21 = phi i1 [ true, %6 ], [ %19, %11 ]
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %20
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @static_branch_unlikely(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
