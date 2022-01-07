; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c___lc_get.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c___lc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lc_element = type { i64, i64, i32, i32 }
%struct.lru_cache = type { i32, i64, i64, i32, i32, i32, i32, i32, i32 }

@LC_STARVING = common dso_local global i32 0, align 4
@LC_GET_MAY_USE_UNCOMMITTED = common dso_local global i32 0, align 4
@LC_GET_MAY_CHANGE = common dso_local global i32 0, align 4
@__LC_DIRTY = common dso_local global i32 0, align 4
@__LC_LOCKED = common dso_local global i32 0, align 4
@__LC_STARVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lc_element* (%struct.lru_cache*, i32, i32)* @__lc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lc_element* @__lc_get(%struct.lru_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lc_element*, align 8
  %5 = alloca %struct.lru_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lc_element*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @PARANOIA_ENTRY()
  %10 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %11 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @LC_STARVING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %18 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = call i32 @RETURN(%struct.lc_element* null)
  br label %22

22:                                               ; preds = %16, %3
  %23 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.lc_element* @__lc_find(%struct.lru_cache* %23, i32 %24, i32 1)
  store %struct.lc_element* %25, %struct.lc_element** %8, align 8
  %26 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %27 = icmp ne %struct.lc_element* %26, null
  br i1 %27, label %28, label %77

28:                                               ; preds = %22
  %29 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %30 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %33 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @LC_GET_MAY_USE_UNCOMMITTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @RETURN(%struct.lc_element* null)
  br label %43

43:                                               ; preds = %41, %36
  %44 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %45 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %49 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %53 = call i32 @RETURN(%struct.lc_element* %52)
  br label %54

54:                                               ; preds = %43, %28
  %55 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %56 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %60 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %66 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %54
  %70 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %71 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %70, i32 0, i32 3
  %72 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %73 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %72, i32 0, i32 6
  %74 = call i32 @list_move(i32* %71, i32* %73)
  %75 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %76 = call i32 @RETURN(%struct.lc_element* %75)
  br label %77

77:                                               ; preds = %69, %22
  %78 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %79 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @LC_GET_MAY_CHANGE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %77
  %87 = call i32 @RETURN(%struct.lc_element* null)
  br label %88

88:                                               ; preds = %86, %77
  %89 = load i32, i32* @__LC_DIRTY, align 4
  %90 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %91 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %90, i32 0, i32 0
  %92 = call i32 @test_and_set_bit(i32 %89, i32* %91)
  %93 = load i32, i32* @__LC_LOCKED, align 4
  %94 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %95 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %94, i32 0, i32 0
  %96 = call i64 @test_bit(i32 %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %100 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = call i32 @RETURN(%struct.lc_element* null)
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %106 = call i32 @lc_unused_element_available(%struct.lru_cache* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* @__LC_STARVING, align 4
  %110 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %111 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %110, i32 0, i32 0
  %112 = call i32 @__set_bit(i32 %109, i32* %111)
  %113 = call i32 @RETURN(%struct.lc_element* null)
  br label %114

114:                                              ; preds = %108, %104
  %115 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %116 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %119 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %117, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 @RETURN(%struct.lc_element* null)
  br label %124

124:                                              ; preds = %122, %114
  %125 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = call %struct.lc_element* @lc_prepare_for_change(%struct.lru_cache* %125, i32 %126)
  store %struct.lc_element* %127, %struct.lc_element** %8, align 8
  %128 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %129 = icmp ne %struct.lc_element* %128, null
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @BUG_ON(i32 %131)
  %133 = load i32, i32* @__LC_STARVING, align 4
  %134 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %135 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %134, i32 0, i32 0
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  %137 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %138 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = icmp ne i32 %140, 1
  %142 = zext i1 %141 to i32
  %143 = call i32 @BUG_ON(i32 %142)
  %144 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %145 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load %struct.lru_cache*, %struct.lru_cache** %5, align 8
  %149 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  %153 = call i32 @RETURN(%struct.lc_element* %152)
  %154 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  ret %struct.lc_element* %154
}

declare dso_local i32 @PARANOIA_ENTRY(...) #1

declare dso_local i32 @RETURN(%struct.lc_element*) #1

declare dso_local %struct.lc_element* @__lc_find(%struct.lru_cache*, i32, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @lc_unused_element_available(%struct.lru_cache*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.lc_element* @lc_prepare_for_change(%struct.lru_cache*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
