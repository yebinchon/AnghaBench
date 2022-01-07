; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_special.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8**, i8*)* @escape_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape_special(i8 zeroext %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8 %0, i8* %5, align 1
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %17 [
    i32 92, label %14
    i32 7, label %15
    i32 27, label %16
  ]

14:                                               ; preds = %3
  store i8 92, i8* %9, align 1
  br label %18

15:                                               ; preds = %3
  store i8 97, i8* %9, align 1
  br label %18

16:                                               ; preds = %3
  store i8 101, i8* %9, align 1
  br label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

18:                                               ; preds = %16, %15, %14
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ult i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  store i8 92, i8* %23, align 1
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i8, i8* %9, align 1
  %32 = load i8*, i8** %8, align 8
  store i8 %31, i8* %32, align 1
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %17
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
