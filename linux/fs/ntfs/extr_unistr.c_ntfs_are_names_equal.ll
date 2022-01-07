; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_unistr.c_ntfs_are_names_equal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_unistr.c_ntfs_are_names_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CASE_SENSITIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_are_names_equal(i32* %0, i64 %1, i32* %2, i64 %3, i64 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %12, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %42

20:                                               ; preds = %7
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @CASE_SENSITIVE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @ntfs_ucsncmp(i32* %25, i32* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %42

32:                                               ; preds = %20
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @ntfs_ucsncasecmp(i32* %33, i32* %34, i64 %35, i32* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %32, %24, %19
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @ntfs_ucsncmp(i32*, i32*, i64) #1

declare dso_local i32 @ntfs_ucsncasecmp(i32*, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
