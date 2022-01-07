; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_print_to_pagebuf.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_bitmap.c_bitmap_print_to_pagebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%*pbl\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%*pb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmap_print_to_pagebuf(i32 %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @offset_in_page(i8* %11)
  %13 = sub nsw i64 %10, %12
  store i64 %13, i64* %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i64*, i64** %7, align 8
  %21 = call i32 @scnprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19, i64* %20)
  br label %28

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = call i32 @scnprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25, i64* %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = phi i32 [ %21, %16 ], [ %27, %22 ]
  ret i32 %29
}

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
