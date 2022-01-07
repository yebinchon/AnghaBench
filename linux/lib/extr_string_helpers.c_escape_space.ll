; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_space.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8**, i8*)* @escape_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape_space(i8 zeroext %0, i8** %1, i8* %2) #0 {
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
  switch i32 %13, label %19 [
    i32 10, label %14
    i32 13, label %15
    i32 9, label %16
    i32 11, label %17
    i32 12, label %18
  ]

14:                                               ; preds = %3
  store i8 110, i8* %9, align 1
  br label %20

15:                                               ; preds = %3
  store i8 114, i8* %9, align 1
  br label %20

16:                                               ; preds = %3
  store i8 116, i8* %9, align 1
  br label %20

17:                                               ; preds = %3
  store i8 118, i8* %9, align 1
  br label %20

18:                                               ; preds = %3
  store i8 102, i8* %9, align 1
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %18, %17, %16, %15, %14
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  store i8 92, i8* %25, align 1
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i8*, i8** %8, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8, i8* %9, align 1
  %34 = load i8*, i8** %8, align 8
  store i8 %33, i8* %34, align 1
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8**, i8*** %6, align 8
  store i8* %38, i8** %39, align 8
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
