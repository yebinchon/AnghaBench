; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_iioutils_break_up_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_iioutils_break_up_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@iio_direction = common dso_local global i8** null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"_\00\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iioutils_break_up_name(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %11, align 4
  %15 = load i8**, i8*** @iio_direction, align 8
  %16 = call i32 @ARRAY_SIZE(i8** %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i8*, i8** %4, align 8
  %20 = load i8**, i8*** @iio_direction, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** @iio_direction, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32 @strncmp(i8* %19, i8* %24, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %18
  %34 = load i8**, i8*** @iio_direction, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %10, align 8
  br label %43

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %13

43:                                               ; preds = %33, %13
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %104

56:                                               ; preds = %43
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @strtok(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %104

66:                                               ; preds = %56
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %9, align 8
  store i8* %68, i8** %8, align 8
  br label %69

69:                                               ; preds = %85, %66
  %70 = load i8*, i8** %8, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @isdigit(i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %7, align 8
  store i8 %81, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i8*, i8** %8, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %8, align 8
  br label %69

88:                                               ; preds = %69
  %89 = load i8*, i8** %7, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @asprintf(i8** %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %91, i8* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %88
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  br label %102

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %98
  %103 = phi i32 [ %100, %98 ], [ 0, %101 ]
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %61, %53
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
