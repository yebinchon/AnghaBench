; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i32, %struct.lru_cache*, %struct.lru_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lc_destroy(%struct.lru_cache* %0) #0 {
  %2 = alloca %struct.lru_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.lru_cache* %0, %struct.lru_cache** %2, align 8
  %4 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %5 = icmp ne %struct.lru_cache* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %18, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %11 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @lc_free_by_index(%struct.lru_cache* %15, i32 %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %23 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %22, i32 0, i32 2
  %24 = load %struct.lru_cache*, %struct.lru_cache** %23, align 8
  %25 = call i32 @kfree(%struct.lru_cache* %24)
  %26 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %27 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %26, i32 0, i32 1
  %28 = load %struct.lru_cache*, %struct.lru_cache** %27, align 8
  %29 = call i32 @kfree(%struct.lru_cache* %28)
  %30 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %31 = call i32 @kfree(%struct.lru_cache* %30)
  br label %32

32:                                               ; preds = %21, %6
  ret void
}

declare dso_local i32 @lc_free_by_index(%struct.lru_cache*, i32) #1

declare dso_local i32 @kfree(%struct.lru_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
