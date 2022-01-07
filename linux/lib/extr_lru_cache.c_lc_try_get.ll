; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_try_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_try_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lc_element = type { i32 }
%struct.lru_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lc_element* @lc_try_get(%struct.lru_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.lru_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.lru_cache* %0, %struct.lru_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call %struct.lc_element* @__lc_get(%struct.lru_cache* %5, i32 %6, i32 0)
  ret %struct.lc_element* %7
}

declare dso_local %struct.lc_element* @__lc_get(%struct.lru_cache*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
