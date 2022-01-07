; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_del.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i32 }
%struct.lc_element = type { i32, i32, i32, i32, i32 }

@LC_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lc_del(%struct.lru_cache* %0, %struct.lc_element* %1) #0 {
  %3 = alloca %struct.lru_cache*, align 8
  %4 = alloca %struct.lc_element*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %3, align 8
  store %struct.lc_element* %1, %struct.lc_element** %4, align 8
  %5 = call i32 (...) @PARANOIA_ENTRY()
  %6 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %7 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %8 = call i32 @PARANOIA_LC_ELEMENT(%struct.lru_cache* %6, %struct.lc_element* %7)
  %9 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %10 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* @LC_FREE, align 4
  %14 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %15 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %17 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %16, i32 0, i32 3
  store i32 %13, i32* %17, align 4
  %18 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %19 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %18, i32 0, i32 1
  %20 = call i32 @hlist_del_init(i32* %19)
  %21 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %22 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %21, i32 0, i32 0
  %23 = load %struct.lru_cache*, %struct.lru_cache** %3, align 8
  %24 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %23, i32 0, i32 0
  %25 = call i32 @list_move(i32* %22, i32* %24)
  %26 = call i32 (...) @RETURN()
  ret void
}

declare dso_local i32 @PARANOIA_ENTRY(...) #1

declare dso_local i32 @PARANOIA_LC_ELEMENT(%struct.lru_cache*, %struct.lc_element*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @RETURN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
