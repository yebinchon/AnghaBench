; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_set.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { i32 }
%struct.lc_element = type { i32, i32, i64, i32, i32 }

@LC_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lc_set(%struct.lru_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lru_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lc_element*, align 8
  %8 = alloca %struct.list_head*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %14 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %3
  br label %65

18:                                               ; preds = %11
  %19 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.lc_element* @lc_element_by_index(%struct.lru_cache* %19, i32 %20)
  store %struct.lc_element* %21, %struct.lc_element** %7, align 8
  %22 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %23 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %26 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %32 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %39 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %41 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %43 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %42, i32 0, i32 4
  %44 = call i32 @hlist_del_init(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @LC_FREE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %18
  %49 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %50 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %49, i32 0, i32 2
  store %struct.list_head* %50, %struct.list_head** %8, align 8
  br label %60

51:                                               ; preds = %18
  %52 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %53 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %52, i32 0, i32 4
  %54 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @lc_hash_slot(%struct.lru_cache* %54, i32 %55)
  %57 = call i32 @hlist_add_head(i32* %53, i32 %56)
  %58 = load %struct.lru_cache*, %struct.lru_cache** %4, align 8
  %59 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %58, i32 0, i32 1
  store %struct.list_head* %59, %struct.list_head** %8, align 8
  br label %60

60:                                               ; preds = %51, %48
  %61 = load %struct.lc_element*, %struct.lc_element** %7, align 8
  %62 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %61, i32 0, i32 3
  %63 = load %struct.list_head*, %struct.list_head** %8, align 8
  %64 = call i32 @list_move(i32* %62, %struct.list_head* %63)
  br label %65

65:                                               ; preds = %60, %17
  ret void
}

declare dso_local %struct.lc_element* @lc_element_by_index(%struct.lru_cache*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_del_init(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @lc_hash_slot(%struct.lru_cache*, i32) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
