; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_frame_vector_to_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_frame_vector_to_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_vector = type { i32, i32 }
%struct.page = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @frame_vector_to_pages(%struct.frame_vector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.page**, align 8
  store %struct.frame_vector* %0, %struct.frame_vector** %3, align 8
  %7 = load %struct.frame_vector*, %struct.frame_vector** %3, align 8
  %8 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.frame_vector*, %struct.frame_vector** %3, align 8
  %14 = call i64* @frame_vector_pfns(%struct.frame_vector* %13)
  store i64* %14, i64** %5, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %33, %12
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.frame_vector*, %struct.frame_vector** %3, align 8
  %18 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @pfn_valid(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %15

36:                                               ; preds = %15
  %37 = load i64*, i64** %5, align 8
  %38 = bitcast i64* %37 to %struct.page**
  store %struct.page** %38, %struct.page*** %6, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %56, %36
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.frame_vector*, %struct.frame_vector** %3, align 8
  %42 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i64*, i64** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call %struct.page* @pfn_to_page(i64 %50)
  %52 = load %struct.page**, %struct.page*** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.page*, %struct.page** %52, i64 %54
  store %struct.page* %51, %struct.page** %55, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %39

59:                                               ; preds = %39
  %60 = load %struct.frame_vector*, %struct.frame_vector** %3, align 8
  %61 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %29, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64* @frame_vector_pfns(%struct.frame_vector*) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
