; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_free_reserved_area.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_free_reserved_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Freeing %s memory: %ldK\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @free_reserved_area(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = call i64 @PAGE_ALIGN(i64 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = and i64 %18, %19
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %42, %4
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i8*, i8** %9, align 8
  %29 = call %struct.page* @virt_to_page(i8* %28)
  store %struct.page* %29, %struct.page** %11, align 8
  %30 = load %struct.page*, %struct.page** %11, align 8
  %31 = call i8* @page_address(%struct.page* %30)
  store i8* %31, i8** %12, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp ule i32 %32, 255
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @memset(i8* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load %struct.page*, %struct.page** %11, align 8
  %41 = call i32 @free_reserved_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %23

49:                                               ; preds = %23
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* @PAGE_SHIFT, align 4
  %59 = sub nsw i32 %58, 10
  %60 = zext i32 %59 to i64
  %61 = shl i64 %57, %60
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %56, i64 %61)
  br label %63

63:                                               ; preds = %55, %52, %49
  %64 = load i64, i64* %10, align 8
  ret i64 %64
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free_reserved_page(%struct.page*) #1

declare dso_local i32 @pr_info(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
