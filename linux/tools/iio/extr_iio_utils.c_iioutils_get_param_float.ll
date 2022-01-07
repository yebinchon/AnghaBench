; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_iioutils_get_param_float.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c_iioutils_get_param_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"iioutils_get_param_float(): Failed to close directory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iioutils_get_param_float(float* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.dirent*, align 8
  store float* %0, float** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %17, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %125

27:                                               ; preds = %5
  %28 = load i8*, i8** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @asprintf(i8** %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %121

36:                                               ; preds = %27
  %37 = load i8*, i8** %9, align 8
  %38 = call i32* @opendir(i8* %37)
  store i32* %38, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @errno, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %118

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %102, %44
  %48 = load i32*, i32** %14, align 8
  %49 = call %struct.dirent* @readdir(i32* %48)
  store %struct.dirent* %49, %struct.dirent** %18, align 8
  %50 = load %struct.dirent*, %struct.dirent** %18, align 8
  %51 = icmp ne %struct.dirent* %50, null
  br i1 %51, label %52, label %103

52:                                               ; preds = %47
  %53 = load i8*, i8** %15, align 8
  %54 = load %struct.dirent*, %struct.dirent** %18, align 8
  %55 = getelementptr inbounds %struct.dirent, %struct.dirent* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %53, i8* %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.dirent*, %struct.dirent** %18, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %60, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %59, %52
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.dirent*, %struct.dirent** %18, align 8
  %69 = getelementptr inbounds %struct.dirent, %struct.dirent* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @asprintf(i8** %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %67, i8* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  br label %111

77:                                               ; preds = %66
  %78 = load i8*, i8** %17, align 8
  %79 = call i32* @fopen(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @errno, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %104

85:                                               ; preds = %77
  store i32 0, i32* @errno, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load float*, float** %7, align 8
  %88 = call i32 @fscanf(i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %87)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* @errno, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @errno, align 4
  %95 = sub nsw i32 0, %94
  br label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @ENODATA, align 4
  %98 = sub nsw i32 0, %97
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i32 [ %95, %93 ], [ %98, %96 ]
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %99, %85
  br label %103

102:                                              ; preds = %59
  br label %47

103:                                              ; preds = %101, %47
  br label %104

104:                                              ; preds = %103, %82
  %105 = load i8*, i8** %17, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %17, align 8
  %109 = call i32 @free(i8* %108)
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %74
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @closedir(i32* %112)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = call i32 @perror(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %111
  br label %118

118:                                              ; preds = %117, %41
  %119 = load i8*, i8** %16, align 8
  %120 = call i32 @free(i8* %119)
  br label %121

121:                                              ; preds = %118, %33
  %122 = load i8*, i8** %15, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %24
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, float*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
