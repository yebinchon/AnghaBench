; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_util.c_get_escape_char.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_util.c_get_escape_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @get_escape_char(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %8, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %5, align 1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  %17 = load i8, i8* %5, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %34 [
    i32 97, label %19
    i32 98, label %20
    i32 116, label %21
    i32 110, label %22
    i32 118, label %23
    i32 102, label %24
    i32 114, label %25
    i32 48, label %26
    i32 49, label %26
    i32 50, label %26
    i32 51, label %26
    i32 52, label %26
    i32 53, label %26
    i32 54, label %26
    i32 55, label %26
    i32 120, label %31
  ]

19:                                               ; preds = %2
  store i8 7, i8* %7, align 1
  br label %36

20:                                               ; preds = %2
  store i8 8, i8* %7, align 1
  br label %36

21:                                               ; preds = %2
  store i8 9, i8* %7, align 1
  br label %36

22:                                               ; preds = %2
  store i8 10, i8* %7, align 1
  br label %36

23:                                               ; preds = %2
  store i8 11, i8* %7, align 1
  br label %36

24:                                               ; preds = %2
  store i8 12, i8* %7, align 1
  br label %36

25:                                               ; preds = %2
  store i8 13, i8* %7, align 1
  br label %36

26:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call signext i8 @get_oct_char(i8* %29, i32* %6)
  store i8 %30, i8* %7, align 1
  br label %36

31:                                               ; preds = %2
  %32 = load i8*, i8** %3, align 8
  %33 = call signext i8 @get_hex_char(i8* %32, i32* %6)
  store i8 %33, i8* %7, align 1
  br label %36

34:                                               ; preds = %2
  %35 = load i8, i8* %5, align 1
  store i8 %35, i8* %7, align 1
  br label %36

36:                                               ; preds = %34, %31, %26, %25, %24, %23, %22, %21, %20, %19
  %37 = load i32, i32* %6, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i8, i8* %7, align 1
  ret i8 %39
}

declare dso_local signext i8 @get_oct_char(i8*, i32*) #1

declare dso_local signext i8 @get_hex_char(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
