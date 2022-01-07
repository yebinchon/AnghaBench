; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_unescape_space.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_unescape_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @unescape_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unescape_space(i8** %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %25 [
    i32 110, label %15
    i32 114, label %17
    i32 116, label %19
    i32 118, label %21
    i32 102, label %23
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  store i8 10, i8* %16, align 1
  br label %26

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  store i8 13, i8* %18, align 1
  br label %26

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  store i8 9, i8* %20, align 1
  br label %26

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  store i8 11, i8* %22, align 1
  br label %26

23:                                               ; preds = %2
  %24 = load i8*, i8** %6, align 8
  store i8 12, i8* %24, align 1
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

26:                                               ; preds = %23, %21, %19, %17, %15
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %27, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8* %32, i8** %30, align 8
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
