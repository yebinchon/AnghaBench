; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_refill_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_direct-io.c_dio_refill_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dio = type { i64, i64, %struct.page** }
%struct.page = type { i32 }
%struct.dio_submit = type { i32, i32, i64, i64, i32, i64 }

@LONG_MAX = common dso_local global i32 0, align 4
@DIO_PAGES = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dio*, %struct.dio_submit*)* @dio_refill_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dio_refill_pages(%struct.dio* %0, %struct.dio_submit* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dio*, align 8
  %5 = alloca %struct.dio_submit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  store %struct.dio* %0, %struct.dio** %4, align 8
  store %struct.dio_submit* %1, %struct.dio_submit** %5, align 8
  %8 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %9 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.dio*, %struct.dio** %4, align 8
  %12 = getelementptr inbounds %struct.dio, %struct.dio* %11, i32 0, i32 2
  %13 = load %struct.page**, %struct.page*** %12, align 8
  %14 = load i32, i32* @LONG_MAX, align 4
  %15 = load i32, i32* @DIO_PAGES, align 4
  %16 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %17 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %16, i32 0, i32 3
  %18 = call i32 @iov_iter_get_pages(i32 %10, %struct.page** %13, i32 %14, i32 %15, i64* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %2
  %22 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %23 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %21
  %27 = load %struct.dio*, %struct.dio** %4, align 8
  %28 = getelementptr inbounds %struct.dio, %struct.dio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REQ_OP_WRITE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %26
  %33 = call %struct.page* @ZERO_PAGE(i32 0)
  store %struct.page* %33, %struct.page** %7, align 8
  %34 = load %struct.dio*, %struct.dio** %4, align 8
  %35 = getelementptr inbounds %struct.dio, %struct.dio* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.dio*, %struct.dio** %4, align 8
  %42 = getelementptr inbounds %struct.dio, %struct.dio* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = load %struct.page*, %struct.page** %7, align 8
  %45 = call i32 @get_page(%struct.page* %44)
  %46 = load %struct.page*, %struct.page** %7, align 8
  %47 = load %struct.dio*, %struct.dio** %4, align 8
  %48 = getelementptr inbounds %struct.dio, %struct.dio* %47, i32 0, i32 2
  %49 = load %struct.page**, %struct.page*** %48, align 8
  %50 = getelementptr inbounds %struct.page*, %struct.page** %49, i64 0
  store %struct.page* %46, %struct.page** %50, align 8
  %51 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %52 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %54 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %56 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @PAGE_SIZE, align 4
  %58 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %59 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %96

60:                                               ; preds = %26, %21, %2
  %61 = load i32, i32* %6, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %65 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @iov_iter_advance(i32 %66, i32 %67)
  %69 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %70 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %6, align 4
  %76 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %77 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PAGE_SIZE, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = sdiv i32 %81, %82
  %84 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %85 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  %91 = add nsw i32 %90, 1
  %92 = load %struct.dio_submit*, %struct.dio_submit** %5, align 8
  %93 = getelementptr inbounds %struct.dio_submit, %struct.dio_submit* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %96

94:                                               ; preds = %60
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %63, %43
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @iov_iter_get_pages(i32, %struct.page**, i32, i32, i64*) #1

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @iov_iter_advance(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
