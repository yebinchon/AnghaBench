; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memremap.c_get_dev_pagemap.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memremap.c_get_dev_pagemap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pagemap = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@pgmap_array = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dev_pagemap* @get_dev_pagemap(i64 %0, %struct.dev_pagemap* %1) #0 {
  %3 = alloca %struct.dev_pagemap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dev_pagemap*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.dev_pagemap* %1, %struct.dev_pagemap** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @PFN_PHYS(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %10 = icmp ne %struct.dev_pagemap* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %14 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %12, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %11
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %21 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %19, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  store %struct.dev_pagemap* %26, %struct.dev_pagemap** %3, align 8
  br label %47

27:                                               ; preds = %18, %11
  %28 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %29 = call i32 @put_dev_pagemap(%struct.dev_pagemap* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @PHYS_PFN(i64 %32)
  %34 = call %struct.dev_pagemap* @xa_load(i32* @pgmap_array, i32 %33)
  store %struct.dev_pagemap* %34, %struct.dev_pagemap** %5, align 8
  %35 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %36 = icmp ne %struct.dev_pagemap* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  %39 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @percpu_ref_tryget_live(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store %struct.dev_pagemap* null, %struct.dev_pagemap** %5, align 8
  br label %44

44:                                               ; preds = %43, %37, %30
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load %struct.dev_pagemap*, %struct.dev_pagemap** %5, align 8
  store %struct.dev_pagemap* %46, %struct.dev_pagemap** %3, align 8
  br label %47

47:                                               ; preds = %44, %25
  %48 = load %struct.dev_pagemap*, %struct.dev_pagemap** %3, align 8
  ret %struct.dev_pagemap* %48
}

declare dso_local i64 @PFN_PHYS(i64) #1

declare dso_local i32 @put_dev_pagemap(%struct.dev_pagemap*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dev_pagemap* @xa_load(i32*, i32) #1

declare dso_local i32 @PHYS_PFN(i64) #1

declare dso_local i32 @percpu_ref_tryget_live(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
