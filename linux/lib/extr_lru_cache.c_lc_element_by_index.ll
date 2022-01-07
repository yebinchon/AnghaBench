; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_element_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_element_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lc_element = type { i32 }
%struct.lru_cache = type { i32, %struct.lc_element** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lc_element* @lc_element_by_index(%struct.lru_cache* %0, i32 %1) #0 {
  %3 = alloca %struct.lru_cache*, align 8
  %4 = alloca i32, align 4
  store %struct.lru_cache* %0, %struct.lru_cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %7 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp uge i32 %5, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %13 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %12, i32 0, i32 1
  %14 = load %struct.lc_element**, %struct.lc_element*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lc_element*, %struct.lc_element** %14, i64 %16
  %18 = load %struct.lc_element*, %struct.lc_element** %17, align 8
  %19 = icmp eq %struct.lc_element* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %23 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %22, i32 0, i32 1
  %24 = load %struct.lc_element**, %struct.lc_element*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lc_element*, %struct.lc_element** %24, i64 %26
  %28 = load %struct.lc_element*, %struct.lc_element** %27, align 8
  %29 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %36 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %35, i32 0, i32 1
  %37 = load %struct.lc_element**, %struct.lc_element*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.lc_element*, %struct.lc_element** %37, i64 %39
  %41 = load %struct.lc_element*, %struct.lc_element** %40, align 8
  ret %struct.lc_element* %41
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
