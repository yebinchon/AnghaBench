; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_slab_common.c_slab_unmergeable.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_slab_common.c_slab_unmergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i64, i64, i64 }

@slab_nomerge = common dso_local global i64 0, align 8
@SLAB_NEVER_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slab_unmergeable(%struct.kmem_cache* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kmem_cache*, align 8
  store %struct.kmem_cache* %0, %struct.kmem_cache** %3, align 8
  %4 = load i64, i64* @slab_nomerge, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %8 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SLAB_NEVER_MERGE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %38

14:                                               ; preds = %6
  %15 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %16 = call i32 @is_root_cache(%struct.kmem_cache* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %38

19:                                               ; preds = %14
  %20 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %21 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %38

25:                                               ; preds = %19
  %26 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %27 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %3, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %30, %24, %18, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @is_root_cache(%struct.kmem_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
