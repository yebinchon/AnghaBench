; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_thp_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_thp_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@CONFIG_FS_DAX_PMD = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @thp_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %10, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %45

20:                                               ; preds = %5
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_DAX(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i32, i32* @CONFIG_FS_DAX_PMD, align 4
  %30 = call i32 @IS_ENABLED(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %20
  br label %45

33:                                               ; preds = %28
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @PMD_SIZE, align 4
  %39 = call i64 @__thp_get_unmapped_area(%struct.file* %34, i64 %35, i32 %36, i64 %37, i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %57

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %32, %19
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64 (%struct.file*, i64, i64, i64, i64)*, i64 (%struct.file*, i64, i64, i64, i64)** %49, align 8
  %51 = load %struct.file*, %struct.file** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i64 %50(%struct.file* %51, i64 %52, i64 %53, i64 %54, i64 %55)
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %45, %42
  %58 = load i64, i64* %6, align 8
  ret i64 %58
}

declare dso_local i32 @IS_DAX(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @__thp_get_unmapped_area(%struct.file*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
