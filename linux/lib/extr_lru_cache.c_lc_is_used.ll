; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_is_used.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_is_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i32 }
%struct.lc_element = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lc_is_used(%struct.lru_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.lru_cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lc_element*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.lc_element* @__lc_find(%struct.lru_cache* %6, i32 %7, i32 1)
  store %struct.lc_element* %8, %struct.lc_element** %5, align 8
  %9 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %10 = icmp ne %struct.lc_element* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %13 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

declare dso_local %struct.lc_element* @__lc_find(%struct.lru_cache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
