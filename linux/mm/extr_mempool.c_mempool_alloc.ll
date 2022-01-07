; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_mempool.c_mempool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_mempool.c_mempool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8* (i32, i32)* }

@__GFP_ZERO = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mempool_alloc(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @__GFP_ZERO, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @VM_WARN_ON_ONCE(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @might_sleep_if(i32 %16)
  %18 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @__GFP_NORETRY, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @__GFP_NOWARN, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %29 = load i32, i32* @__GFP_IO, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %27, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %90, %74, %2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i8* (i32, i32)*, i8* (i32, i32)** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i8* %36(i32 %37, i32 %40)
  store i8* %41, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i8*, i8** %6, align 8
  store i8* %48, i8** %3, align 8
  br label %106

49:                                               ; preds = %33
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %49
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = call i8* @remove_element(%struct.TYPE_4__* %60)
  store i8* %61, i8** %6, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = call i32 (...) @smp_wmb()
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @kmemleak_update_trace(i8* %67)
  %69 = load i8*, i8** %6, align 8
  store i8* %69, i8** %3, align 8
  br label %106

70:                                               ; preds = %49
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %9, align 4
  br label %33

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  store i8* null, i8** %3, align 8
  br label %106

90:                                               ; preds = %80
  %91 = call i32 @init_wait(i32* %8)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %95 = call i32 @prepare_to_wait(i32* %93, i32* %8, i32 %94)
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i32, i32* @HZ, align 4
  %101 = mul nsw i32 5, %100
  %102 = call i32 @io_schedule_timeout(i32 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @finish_wait(i32* %104, i32* %8)
  br label %33

106:                                              ; preds = %85, %59, %47
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i32 @VM_WARN_ON_ONCE(i32) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @remove_element(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kmemleak_update_trace(i8*) #1

declare dso_local i32 @init_wait(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @io_schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
