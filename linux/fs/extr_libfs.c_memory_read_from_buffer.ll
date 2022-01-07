; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_memory_read_from_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_memory_read_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memory_read_from_buffer(i8* %0, i64 %1, i64* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64*, i64** %9, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %6, align 8
  br label %47

20:                                               ; preds = %5
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %47

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = sub i64 %27, %28
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %12, align 8
  %39 = getelementptr i8, i8* %37, i64 %38
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @memcpy(i8* %36, i8* %39, i64 %40)
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %35, %24, %17
  %48 = load i64, i64* %6, align 8
  ret i64 %48
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
