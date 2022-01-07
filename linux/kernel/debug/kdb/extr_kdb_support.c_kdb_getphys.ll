; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_getphys.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_getphys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @kdb_getphys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdb_getphys(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.page*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @PAGE_SHIFT, align 8
  %13 = lshr i64 %11, %12
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @pfn_valid(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.page* @pfn_to_page(i64 %19)
  store %struct.page* %20, %struct.page** %10, align 8
  %21 = load %struct.page*, %struct.page** %10, align 8
  %22 = call i8* @kmap_atomic(%struct.page* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = and i64 %25, %28
  %30 = getelementptr i8, i8* %24, i64 %29
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memcpy(i8* %23, i8* %30, i64 %31)
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @kunmap_atomic(i8* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
