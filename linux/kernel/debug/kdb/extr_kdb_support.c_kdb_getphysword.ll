; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_getphysword.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_getphysword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KDB_BADWIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"kdb_getphysword: bad width %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_getphysword(i64* %0, i64 %1, i64 %2) #0 {
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
  switch i64 %13, label %54 [
    i64 1, label %14
    i64 2, label %23
    i64 4, label %32
    i64 8, label %41
  ]

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @kdb_getphys(i64* %8, i64 %15, i32 8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %8, align 8
  %21 = load i64*, i64** %4, align 8
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %19, %14
  br label %58

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @kdb_getphys(i64* %9, i64 %24, i32 8)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %9, align 8
  %30 = load i64*, i64** %4, align 8
  store i64 %29, i64* %30, align 8
  br label %31

31:                                               ; preds = %28, %23
  br label %58

32:                                               ; preds = %3
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @kdb_getphys(i64* %10, i64 %33, i32 8)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %10, align 8
  %39 = load i64*, i64** %4, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  br label %58

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = icmp ule i64 %42, 8
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @kdb_getphys(i64* %11, i64 %45, i32 8)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %11, align 8
  %51 = load i64*, i64** %4, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %49, %44
  br label %58

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %3, %53
  %55 = load i32, i32* @KDB_BADWIDTH, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @kdb_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %54, %52, %40, %31, %22
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local i32 @kdb_getphys(i64*, i64, i32) #1

declare dso_local i32 @kdb_printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
