; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_input.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%X,*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i32, i32)* @do_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_input(i8* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @BITS_PER_LONG, align 4
  %12 = udiv i32 %10, %11
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %31, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @BITS_PER_LONG, align 4
  %17 = udiv i32 %15, %16
  %18 = add i32 %17, 1
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load i64*, i64** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @TO_NATIVE(i64 %25)
  %27 = load i64*, i64** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 %26, i64* %30, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %13

34:                                               ; preds = %13
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %64, %34
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i64*, i64** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @BITS_PER_LONG, align 4
  %44 = udiv i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @BITS_PER_LONG, align 4
  %50 = urem i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  %53 = and i64 %47, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %40
  %56 = load i8*, i8** %5, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @sprintf(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %55, %40
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %36

67:                                               ; preds = %36
  ret void
}

declare dso_local i64 @TO_NATIVE(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
