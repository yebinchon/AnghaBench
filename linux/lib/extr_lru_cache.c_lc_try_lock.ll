; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_try_lock.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_try_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i64 }

@LC_LOCKED = common dso_local global i64 0, align 8
@LC_PARANOIA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lc_try_lock(%struct.lru_cache* %0) #0 {
  %2 = alloca %struct.lru_cache*, align 8
  %3 = alloca i64, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %6 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %5, i32 0, i32 0
  %7 = load i64, i64* @LC_LOCKED, align 8
  %8 = call i64 @cmpxchg(i64* %6, i64 0, i64 %7)
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %4
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @LC_PARANOIA, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %4, label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 0, %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
