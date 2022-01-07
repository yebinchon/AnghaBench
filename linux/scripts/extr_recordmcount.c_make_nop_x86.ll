; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_make_nop_x86.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_make_nop_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEEK_SET = common dso_local global i32 0, align 4
@ideal_nop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @make_nop_x86 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_nop_x86(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr i8, i8* %8, i64 %9
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = getelementptr i8, i8* %19, i64 -1
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 232
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %39

26:                                               ; preds = %16
  %27 = load i64, i64* %5, align 8
  %28 = sub i64 %27, 1
  %29 = load i32, i32* @SEEK_SET, align 4
  %30 = call i64 @ulseek(i64 %28, i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @ideal_nop, align 4
  %35 = call i64 @uwrite(i32 %34, i32 5)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %32, %25, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @ulseek(i64, i32) #1

declare dso_local i64 @uwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
