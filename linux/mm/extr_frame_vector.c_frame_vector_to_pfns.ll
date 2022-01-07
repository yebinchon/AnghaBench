; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_frame_vector_to_pfns.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_frame_vector.c_frame_vector_to_pfns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_vector = type { i32, i32, i64 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_vector_to_pfns(%struct.frame_vector* %0) #0 {
  %2 = alloca %struct.frame_vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.page**, align 8
  store %struct.frame_vector* %0, %struct.frame_vector** %2, align 8
  %6 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %7 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %13 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.page**
  store %struct.page** %15, %struct.page*** %5, align 8
  %16 = load %struct.page**, %struct.page*** %5, align 8
  %17 = bitcast %struct.page** %16 to i64*
  store i64* %17, i64** %4, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %35, %11
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %21 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.page**, %struct.page*** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %27
  %29 = load %struct.page*, %struct.page** %28, align 8
  %30 = call i64 @page_to_pfn(%struct.page* %29)
  %31 = load i64*, i64** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  store i64 %30, i64* %34, align 8
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.frame_vector*, %struct.frame_vector** %2, align 8
  %40 = getelementptr inbounds %struct.frame_vector, %struct.frame_vector* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %10
  ret void
}

declare dso_local i64 @page_to_pfn(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
