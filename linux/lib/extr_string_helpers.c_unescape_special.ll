; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_unescape_special.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_unescape_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @unescape_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unescape_special(i8** %0, i8** %1) #0 {
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
  switch i32 %14, label %23 [
    i32 34, label %15
    i32 92, label %17
    i32 97, label %19
    i32 101, label %21
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  store i8 34, i8* %16, align 1
  br label %24

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  store i8 92, i8* %18, align 1
  br label %24

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  store i8 7, i8* %20, align 1
  br label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  store i8 27, i8* %22, align 1
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %21, %19, %17, %15
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %25, align 8
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** %28, align 8
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
