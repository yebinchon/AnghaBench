; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_getword.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDB_BADWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"kdb_getword: bad width %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_getword(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64*, i64** %4, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %6, align 8
  switch i64 %13, label %58 [
    i64 1, label %14
    i64 2, label %24
    i64 4, label %34
    i64 8, label %44
  ]

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @kdb_getarea(i64 %15, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %4, align 8
  store i64 %21, i64* %22, align 8
  br label %23

23:                                               ; preds = %20, %14
  br label %62

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @kdb_getarea(i64 %25, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %4, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %24
  br label %62

34:                                               ; preds = %3
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @kdb_getarea(i64 %35, i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = load i64*, i64** %4, align 8
  store i64 %41, i64* %42, align 8
  br label %43

43:                                               ; preds = %40, %34
  br label %62

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  %46 = icmp ule i64 %45, 8
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @kdb_getarea(i64 %48, i64 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %11, align 8
  %55 = load i64*, i64** %4, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %47
  br label %62

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %3, %57
  %59 = load i32, i32* @KDB_BADWIDTH, align 4
  store i32 %59, i32* %7, align 4
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @kdb_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %58, %56, %43, %33, %23
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @kdb_getarea(i64, i64) #1

declare dso_local i32 @kdb_printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
