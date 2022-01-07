; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_range.c_clean_sort_range.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_range.c_clean_sort_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@cmp_range = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clean_sort_range(%struct.range* %0, i32 %1) #0 {
  %3 = alloca %struct.range*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.range* %0, %struct.range** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %85, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %88

16:                                               ; preds = %12
  %17 = load %struct.range*, %struct.range** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.range, %struct.range* %17, i64 %19
  %21 = getelementptr inbounds %struct.range, %struct.range* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %85

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %42, %25
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load %struct.range*, %struct.range** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.range, %struct.range* %32, i64 %34
  %36 = getelementptr inbounds %struct.range, %struct.range* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %7, align 4
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %27

45:                                               ; preds = %39, %27
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %88

50:                                               ; preds = %45
  %51 = load %struct.range*, %struct.range** %3, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.range, %struct.range* %51, i64 %53
  %55 = getelementptr inbounds %struct.range, %struct.range* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.range*, %struct.range** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.range, %struct.range* %57, i64 %59
  %61 = getelementptr inbounds %struct.range, %struct.range* %60, i32 0, i32 1
  store i64 %56, i64* %61, align 8
  %62 = load %struct.range*, %struct.range** %3, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.range, %struct.range* %62, i64 %64
  %66 = getelementptr inbounds %struct.range, %struct.range* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.range*, %struct.range** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.range, %struct.range* %68, i64 %70
  %72 = getelementptr inbounds %struct.range, %struct.range* %71, i32 0, i32 0
  store i64 %67, i64* %72, align 8
  %73 = load %struct.range*, %struct.range** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.range, %struct.range* %73, i64 %75
  %77 = getelementptr inbounds %struct.range, %struct.range* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.range*, %struct.range** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.range, %struct.range* %78, i64 %80
  %82 = getelementptr inbounds %struct.range, %struct.range* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %50, %24
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %12

88:                                               ; preds = %49, %12
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %104, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.range*, %struct.range** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.range, %struct.range* %94, i64 %96
  %98 = getelementptr inbounds %struct.range, %struct.range* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %8, align 4
  br label %107

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %89

107:                                              ; preds = %101, %89
  %108 = load %struct.range*, %struct.range** %3, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @cmp_range, align 4
  %111 = call i32 @sort(%struct.range* %108, i32 %109, i32 16, i32 %110, i32* null)
  %112 = load i32, i32* %8, align 4
  ret i32 %112
}

declare dso_local i32 @sort(%struct.range*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
