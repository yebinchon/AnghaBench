; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_lru_cache.c_lc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lru_cache = type { i8*, i32, i32, i32, i32, %struct.lc_element**, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.lc_element = type { i32, i32, i8*, i8* }

@LC_FREE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lc_reset(%struct.lru_cache* %0) #0 {
  %2 = alloca %struct.lru_cache*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.lc_element*, align 8
  %5 = alloca i8*, align 8
  store %struct.lru_cache* %0, %struct.lru_cache** %2, align 8
  %6 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %7 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %6, i32 0, i32 16
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %10 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %9, i32 0, i32 15
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %13 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %12, i32 0, i32 3
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %16 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %15, i32 0, i32 14
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %19 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %18, i32 0, i32 13
  store i64 0, i64* %19, align 8
  %20 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %21 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %20, i32 0, i32 12
  store i64 0, i64* %21, align 8
  %22 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %23 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %22, i32 0, i32 11
  store i64 0, i64* %23, align 8
  %24 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %25 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %24, i32 0, i32 10
  store i64 0, i64* %25, align 8
  %26 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %27 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %26, i32 0, i32 9
  store i64 0, i64* %27, align 8
  %28 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %29 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %31 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %33 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %35 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %38 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i8* %36, i32 0, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %86, %1
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %47 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %44
  %51 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %52 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %51, i32 0, i32 5
  %53 = load %struct.lc_element**, %struct.lc_element*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.lc_element*, %struct.lc_element** %53, i64 %55
  %57 = load %struct.lc_element*, %struct.lc_element** %56, align 8
  store %struct.lc_element* %57, %struct.lc_element** %4, align 8
  %58 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %59 = bitcast %struct.lc_element* %58 to i8*
  store i8* %59, i8** %5, align 8
  %60 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %61 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = sext i32 %62 to i64
  %65 = sub i64 0, %64
  %66 = getelementptr i8, i8* %63, i64 %65
  store i8* %66, i8** %5, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %69 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memset(i8* %67, i32 0, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %74 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @LC_FREE, align 8
  %76 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %77 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @LC_FREE, align 8
  %79 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %80 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  %82 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %81, i32 0, i32 1
  %83 = load %struct.lru_cache*, %struct.lru_cache** %2, align 8
  %84 = getelementptr inbounds %struct.lru_cache, %struct.lru_cache* %83, i32 0, i32 3
  %85 = call i32 @list_add(i32* %82, i32* %84)
  br label %86

86:                                               ; preds = %50
  %87 = load i32, i32* %3, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %44

89:                                               ; preds = %44
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
