; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_write_var.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_write_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dummy_var = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_var(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %40 [
    i32 1, label %13
    i32 2, label %20
    i32 4, label %27
    i32 8, label %33
  ]

13:                                               ; preds = %11
  %14 = load i32*, i32** @dummy_var, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = bitcast i32* %17 to i8*
  store i8* %18, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  store i8 -1, i8* %19, align 1
  br label %40

20:                                               ; preds = %11
  %21 = load i32*, i32** @dummy_var, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = bitcast i32* %24 to i16*
  store i16* %25, i16** %4, align 8
  %26 = load i16*, i16** %4, align 8
  store i16 -1, i16* %26, align 2
  br label %40

27:                                               ; preds = %11
  %28 = load i32*, i32** @dummy_var, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32* %31, i32** %5, align 8
  %32 = load i32*, i32** %5, align 8
  store i32 -1, i32* %32, align 4
  br label %40

33:                                               ; preds = %11
  %34 = load i32*, i32** @dummy_var, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = bitcast i32* %37 to i64*
  store i64* %38, i64** %6, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 -1, i64* %39, align 8
  br label %40

40:                                               ; preds = %11, %33, %27, %20, %13
  %41 = call i32 (...) @check_trapped()
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @check_trapped(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
