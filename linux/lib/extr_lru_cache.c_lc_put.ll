; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_put.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i32, i32, i32 }
%struct.lc_element = type { i64, i64, i64, i32 }

@__LC_STARVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lc_put(%struct.lru_cache* %0, %struct.lc_element* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lru_cache*, align 8
  %5 = alloca %struct.lc_element*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %4, align 8
  store %struct.lc_element* %1, %struct.lc_element** %5, align 8
  %6 = call i32 (...) @PARANOIA_ENTRY()
  %7 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %8 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %9 = call i32 @PARANOIA_LC_ELEMENT(%struct.lru_cache* %7, %struct.lc_element* %8)
  %10 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %11 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %17 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %20 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %26 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  %31 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %32 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %31, i32 0, i32 3
  %33 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %34 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %33, i32 0, i32 2
  %35 = call i32 @list_move(i32* %32, i32* %34)
  %36 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %37 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @__LC_STARVING, align 4
  %41 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %42 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %41, i32 0, i32 0
  %43 = call i32 @clear_bit_unlock(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %30, %2
  %45 = load %struct.lc_element*, %struct.lc_element** %5, align 8
  %46 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @RETURN(i64 %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @PARANOIA_ENTRY(...) #1

declare dso_local i32 @PARANOIA_LC_ELEMENT(%struct.lru_cache*, %struct.lc_element*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @RETURN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
