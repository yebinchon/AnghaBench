; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_aligned_vread.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmalloc.c_aligned_vread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @aligned_vread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aligned_vread(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %46, %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @offset_in_page(i8* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = load i64, i64* %9, align 8
  %20 = sub i64 %18, %19
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %15
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct.page* @vmalloc_to_page(i8* %27)
  store %struct.page* %28, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %7, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %9, align 8
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @memcpy(i8* %34, i8* %37, i64 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @kunmap_atomic(i8* %40)
  br label %46

42:                                               ; preds = %26
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @memset(i8* %43, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i64, i64* %10, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8* %49, i8** %5, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %4, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %12

61:                                               ; preds = %12
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
