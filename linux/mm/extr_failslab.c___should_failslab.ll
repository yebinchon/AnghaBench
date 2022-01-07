; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_failslab.c___should_failslab.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_failslab.c___should_failslab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@kmem_cache = common dso_local global %struct.kmem_cache* null, align 8
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@failslab = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@SLAB_FAILSLAB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__should_failslab(%struct.kmem_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kmem_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %7 = load %struct.kmem_cache*, %struct.kmem_cache** @kmem_cache, align 8
  %8 = icmp eq %struct.kmem_cache* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @__GFP_NOFAIL, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %44

19:                                               ; preds = %13
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @failslab, i32 0, i32 2), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %44

28:                                               ; preds = %22, %19
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @failslab, i32 0, i32 1), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %33 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SLAB_FAILSLAB, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %31, %28
  %40 = load %struct.kmem_cache*, %struct.kmem_cache** %4, align 8
  %41 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @should_fail(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @failslab, i32 0, i32 0), i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %38, %27, %18, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @should_fail(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
