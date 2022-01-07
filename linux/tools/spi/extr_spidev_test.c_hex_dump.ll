; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_hex_dump.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_hex_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s | \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"__ \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" |\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"|\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i8*)* @hex_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_dump(i8* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %88, %4
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %6, align 8
  %20 = icmp ugt i64 %18, 0
  br i1 %20, label %21, label %89

21:                                               ; preds = %17
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %10, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = urem i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = urem i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %88

42:                                               ; preds = %36, %21
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  %49 = sext i32 %47 to i64
  %50 = load i64, i64* %7, align 8
  %51 = urem i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %46

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %42
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %77, %56
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %11, align 8
  %65 = load i8, i8* %63, align 1
  store i8 %65, i8* %12, align 1
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sgt i32 %71, 126
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %62
  br label %77

74:                                               ; preds = %69
  %75 = load i8, i8* %12, align 1
  %76 = zext i8 %75 to i32
  br label %77

77:                                               ; preds = %74, %73
  %78 = phi i32 [ 46, %73 ], [ %76, %74 ]
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  br label %58

80:                                               ; preds = %58
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i64, i64* %6, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %84, %80
  br label %88

88:                                               ; preds = %87, %36, %33
  br label %17

89:                                               ; preds = %17
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
