; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_util.c_utilfdt_decode_type.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_util.c_utilfdt_decode_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"hlLb\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"iuxs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utilfdt_decode_type(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %82

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %35 [
    i32 104, label %34
  ]

34:                                               ; preds = %29
  store i32 98, i32* %8, align 4
  br label %35

35:                                               ; preds = %29, %34
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36, %13
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %5, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %37
  store i32 -1, i32* %4, align 4
  br label %82

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 115
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 98
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %68

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 104
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %66

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 108
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 4, i32 -1
  br label %66

66:                                               ; preds = %61, %60
  %67 = phi i32 [ 2, %60 ], [ %65, %61 ]
  br label %68

68:                                               ; preds = %66, %56
  %69 = phi i32 [ 1, %56 ], [ %67, %66 ]
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %48
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32*, i32** %6, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %82

81:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %80, %47, %12
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
