; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___thp_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c___thp_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.file*, i32, i64, i64, i64)* }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @__thp_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__thp_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @round_up(i64 %19, i64 %20)
  store i64 %21, i64* %14, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = sub i64 %26, %27
  %29 = load i64, i64* %11, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %5
  store i64 0, i64* %6, align 8
  br label %73

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %11, align 8
  %35 = add i64 %33, %34
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %15, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %9, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39, %32
  store i64 0, i64* %6, align 8
  br label %73

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64 (%struct.file*, i32, i64, i64, i64)*, i64 (%struct.file*, i32, i64, i64, i64)** %50, align 8
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @PAGE_SHIFT, align 8
  %56 = lshr i64 %54, %55
  %57 = load i64, i64* %10, align 8
  %58 = call i64 %51(%struct.file* %52, i32 0, i64 %53, i64 %56, i64 %57)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @IS_ERR_VALUE(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i64 0, i64* %6, align 8
  br label %73

63:                                               ; preds = %46
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %12, align 8
  %66 = sub i64 %64, %65
  %67 = load i64, i64* %11, align 8
  %68 = sub i64 %67, 1
  %69 = and i64 %66, %68
  %70 = load i64, i64* %12, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %12, align 8
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %63, %62, %45, %31
  %74 = load i64, i64* %6, align 8
  ret i64 %74
}

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
