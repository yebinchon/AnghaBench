; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_memparse.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_counter.c_page_counter_memparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_COUNTER_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @page_counter_memparse(i8* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strcmp(i8* %10, i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @PAGE_COUNTER_MAX, align 8
  %16 = load i64*, i64** %7, align 8
  store i64 %15, i64* %16, align 8
  store i32 0, i32* %4, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @memparse(i8* %18, i8** %8)
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %35

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = sdiv i32 %28, %29
  %31 = load i64, i64* @PAGE_COUNTER_MAX, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i64 @min(i32 %30, i32 %32)
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %27, %24, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memparse(i8*, i8**) #1

declare dso_local i64 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
