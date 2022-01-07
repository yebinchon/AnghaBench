; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string.c_strscpy_pad.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string.c_strscpy_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @strscpy_pad(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @strscpy(i8* %9, i8* %10, i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = sub i64 %17, 1
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %3
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %4, align 8
  br label %33

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub i64 %27, %28
  %30 = sub i64 %29, 1
  %31 = call i32 @memset(i8* %26, i32 0, i64 %30)
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %22, %20
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i64 @strscpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
