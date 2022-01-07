; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__compare_fds.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_kcore_copy__compare_fds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @kcore_copy__compare_fds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcore_copy__compare_fds(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %9, align 4
  %10 = load i32, i32* @page_size, align 4
  %11 = call i8* @malloc(i32 %10)
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @page_size, align 4
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %52

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %50
  %22 = load i32, i32* %3, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @page_size, align 4
  %25 = call i64 @read(i32 %22, i8* %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %52

29:                                               ; preds = %21
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %51

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @readn(i32 %35, i8* %36, i64 %37)
  %39 = load i64, i64* %8, align 8
  %40 = trunc i64 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %52

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @memcmp(i8* %44, i8* %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %43
  br label %21

51:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %51, %49, %42, %28, %19
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @readn(i32, i8*, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
