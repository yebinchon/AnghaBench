; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_compat_getline.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_compat_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i32*)* @compat_getline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compat_getline(i8** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %52, %3
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @getc(i32* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %42 [
    i32 10, label %17
    i32 128, label %27
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* %10, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = call i32 @add_byte(i32 %18, i8** %8, i64 %19, i64* %20)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %53

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %13, %24
  %28 = load i64, i64* %9, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = call i32 @add_byte(i32 0, i8** %8, i64 %28, i64* %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %53

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %60

39:                                               ; preds = %33
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %13
  %43 = load i32, i32* %10, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = call i32 @add_byte(i32 %43, i8** %8, i64 %44, i64* %45)
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %49
  br label %13

53:                                               ; preds = %48, %32, %23
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, 1
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %5, align 8
  store i8* %58, i8** %59, align 8
  store i32 -1, i32* %4, align 4
  br label %60

60:                                               ; preds = %53, %39, %38
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32 @add_byte(i32, i8**, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
