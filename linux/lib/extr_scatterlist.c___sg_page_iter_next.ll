; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_scatterlist.c___sg_page_iter_next.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_scatterlist.c___sg_page_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_page_iter = type { i64, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__sg_page_iter_next(%struct.sg_page_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sg_page_iter*, align 8
  store %struct.sg_page_iter* %0, %struct.sg_page_iter** %3, align 8
  %4 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %5 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %10 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %62

14:                                               ; preds = %8
  %15 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %16 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %20 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %24 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %60, %14
  %26 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %27 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %30 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @sg_page_count(i64 %31)
  %33 = icmp sge i64 %28, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %25
  %35 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %36 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @sg_page_count(i64 %37)
  %39 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %40 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %44 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @sg_next(i64 %45)
  %47 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %48 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %50 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %34
  %55 = load %struct.sg_page_iter*, %struct.sg_page_iter** %3, align 8
  %56 = getelementptr inbounds %struct.sg_page_iter, %struct.sg_page_iter* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54, %34
  store i32 0, i32* %2, align 4
  br label %62

60:                                               ; preds = %54
  br label %25

61:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %13
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @sg_page_count(i64) #1

declare dso_local i64 @sg_next(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
