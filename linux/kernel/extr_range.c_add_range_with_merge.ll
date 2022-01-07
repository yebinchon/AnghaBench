; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_range.c_add_range_with_merge.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_range.c_add_range_with_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_range_with_merge(%struct.range* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.range* %0, %struct.range** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %6, align 4
  br label %115

20:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %105, %20
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %108

25:                                               ; preds = %21
  %26 = load %struct.range*, %struct.range** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.range, %struct.range* %26, i64 %28
  %30 = getelementptr inbounds %struct.range, %struct.range* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %105

34:                                               ; preds = %25
  %35 = load %struct.range*, %struct.range** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.range, %struct.range* %35, i64 %37
  %39 = getelementptr inbounds %struct.range, %struct.range* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @max(i64 %40, i64 %41)
  store i64 %42, i64* %13, align 8
  %43 = load %struct.range*, %struct.range** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.range, %struct.range* %43, i64 %45
  %47 = getelementptr inbounds %struct.range, %struct.range* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i64 @min(i64 %48, i64 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %14, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %105

55:                                               ; preds = %34
  %56 = load %struct.range*, %struct.range** %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.range, %struct.range* %56, i64 %58
  %60 = getelementptr inbounds %struct.range, %struct.range* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i64 @min(i64 %61, i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load %struct.range*, %struct.range** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.range, %struct.range* %64, i64 %66
  %68 = getelementptr inbounds %struct.range, %struct.range* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i64 @max(i64 %69, i64 %70)
  store i64 %71, i64* %11, align 8
  %72 = load %struct.range*, %struct.range** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.range, %struct.range* %72, i64 %74
  %76 = load %struct.range*, %struct.range** %7, align 8
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.range, %struct.range* %76, i64 %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 1
  %84 = sub nsw i32 %81, %83
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 16
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memmove(%struct.range* %75, %struct.range* %80, i32 %87)
  %89 = load %struct.range*, %struct.range** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.range, %struct.range* %89, i64 %92
  %94 = getelementptr inbounds %struct.range, %struct.range* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  %95 = load %struct.range*, %struct.range** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.range, %struct.range* %95, i64 %98
  %100 = getelementptr inbounds %struct.range, %struct.range* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %55, %54, %33
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %21

108:                                              ; preds = %21
  %109 = load %struct.range*, %struct.range** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = call i32 @add_range(%struct.range* %109, i32 %110, i32 %111, i64 %112, i64 %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %108, %18
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memmove(%struct.range*, %struct.range*, i32) #1

declare dso_local i32 @add_range(%struct.range*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
