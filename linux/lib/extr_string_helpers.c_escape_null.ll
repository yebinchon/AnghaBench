; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_null.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_string_helpers.c_escape_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8**, i8*)* @escape_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @escape_null(i8 zeroext %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8**, i8*** %6, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8, i8* %5, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

14:                                               ; preds = %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** %8, align 8
  store i8 92, i8* %19, align 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ult i8* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  store i8 48, i8* %27, align 1
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %13
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
