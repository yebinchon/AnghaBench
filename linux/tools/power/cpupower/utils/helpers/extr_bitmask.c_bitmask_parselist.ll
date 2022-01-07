; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_bitmask.c_bitmask_parselist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_bitmask.c_bitmask_parselist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmask = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%u%c\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c",-\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c",:\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bitmask_parselist(i8* %0, %struct.bitmask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bitmask*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.bitmask* %1, %struct.bitmask** %5, align 8
  %15 = load %struct.bitmask*, %struct.bitmask** %5, align 8
  %16 = call i32 @bitmask_clearall(%struct.bitmask* %15)
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %101, %2
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i8* @nexttoken(i8* %20, i8 signext 44)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %102

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @sscanf(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %8, i8* %13)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i8, i8* %13, align 1
  %29 = call i32 @scan_was_ok(i32 %27, i8 signext %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %103

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @nexttoken(i8* %34, i8 signext 45)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @nexttoken(i8* %36, i8 signext 44)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %77

40:                                               ; preds = %32
  %41 = load i8*, i8** %12, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43, %40
  %48 = load i8*, i8** %11, align 8
  %49 = call i32 @sscanf(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %9, i8* %13)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i8, i8* %13, align 1
  %52 = call i32 @scan_was_ok(i32 %50, i8 signext %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %103

55:                                               ; preds = %47
  %56 = load i8*, i8** %11, align 8
  %57 = call i8* @nexttoken(i8* %56, i8 signext 58)
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i8*, i8** %12, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63, %60
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @sscanf(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %10, i8* %13)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i8, i8* %13, align 1
  %72 = call i32 @scan_was_ok(i32 %70, i8 signext %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  br label %103

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %63, %55
  br label %77

77:                                               ; preds = %76, %43, %32
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ule i32 %78, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %103

82:                                               ; preds = %77
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.bitmask*, %struct.bitmask** %5, align 8
  %85 = getelementptr inbounds %struct.bitmask, %struct.bitmask* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp uge i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %103

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %94, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ule i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.bitmask*, %struct.bitmask** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @_setbit(%struct.bitmask* %95, i32 %96, i32 1)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %90

101:                                              ; preds = %90
  br label %18

102:                                              ; preds = %18
  store i32 0, i32* %3, align 4
  br label %106

103:                                              ; preds = %88, %81, %74, %54, %31
  %104 = load %struct.bitmask*, %struct.bitmask** %5, align 8
  %105 = call i32 @bitmask_clearall(%struct.bitmask* %104)
  store i32 -1, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %102
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @bitmask_clearall(%struct.bitmask*) #1

declare dso_local i8* @nexttoken(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @scan_was_ok(i32, i8 signext, i8*) #1

declare dso_local i32 @_setbit(%struct.bitmask*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
