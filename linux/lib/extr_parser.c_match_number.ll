; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parser.c_match_number.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parser.c_match_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @match_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_number(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i8* @match_strdup(i32* %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @simple_strtol(i8* %20, i8** %8, i32 %21)
  store i64 %22, i64* %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @INT_MIN, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @INT_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @kfree(i8* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %16
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i8* @match_strdup(i32*) #1

declare dso_local i64 @simple_strtol(i8*, i8**, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
