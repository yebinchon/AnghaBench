; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_pagevec.c_ceph_zero_page_vector_range.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_pagevec.c_ceph_zero_page_vector_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"zero_page_vector_page %u~%u\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"zeroing %d %p head from %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"zeroing %d %p len=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"zeroing %d %p tail to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_zero_page_vector_range(i32 %0, i32 %1, %struct.page** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.page** %2, %struct.page*** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @PAGE_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 (i8*, i32, i32, ...) @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %3
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @min(i32 %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.page**, %struct.page*** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.page*, %struct.page** %28, i64 %30
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = ptrtoint %struct.page* %32 to i32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 (i8*, i32, i32, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %33, i32 %34)
  %36 = load %struct.page**, %struct.page*** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.page*, %struct.page** %36, i64 %38
  %40 = load %struct.page*, %struct.page** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @zero_user_segment(%struct.page* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %21, %3
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = icmp sge i32 %53, %54
  br i1 %55, label %56, label %78

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.page**, %struct.page*** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = ptrtoint %struct.page* %62 to i32
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i8*, i32, i32, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %63, i32 %64)
  %66 = load %struct.page**, %struct.page*** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.page*, %struct.page** %66, i64 %68
  %70 = load %struct.page*, %struct.page** %69, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = call i32 @zero_user_segment(%struct.page* %70, i32 0, i32 %71)
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %52

78:                                               ; preds = %52
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.page**, %struct.page*** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.page*, %struct.page** %83, i64 %85
  %87 = load %struct.page*, %struct.page** %86, align 8
  %88 = ptrtoint %struct.page* %87 to i32
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (i8*, i32, i32, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %88, i32 %89)
  %91 = load %struct.page**, %struct.page*** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %93
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @zero_user_segment(%struct.page* %95, i32 0, i32 %96)
  br label %98

98:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @dout(i8*, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
