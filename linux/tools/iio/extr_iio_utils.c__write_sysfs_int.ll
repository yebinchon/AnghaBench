; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c__write_sysfs_int.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_utils.c__write_sysfs_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"failed to open %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"_write_sysfs_int(): Failed to close dir\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"Possible failure in int write %d to %s/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @_write_sysfs_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_write_sysfs_int(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = add nsw i64 %15, %17
  %19 = add nsw i64 %18, 2
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %124

26:                                               ; preds = %4
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %120

34:                                               ; preds = %26
  %35 = load i8*, i8** %13, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @errno, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  br label %120

45:                                               ; preds = %34
  %46 = load i32*, i32** %11, align 8
  %47 = ptrtoint i32* %46 to i32
  %48 = load i32, i32* %8, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %11, align 8
  %54 = call i64 @fclose(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  br label %120

59:                                               ; preds = %45
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @fclose(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @errno, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %10, align 4
  br label %120

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %66
  %70 = load i8*, i8** %13, align 8
  %71 = call i32* @fopen(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @errno, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  br label %120

80:                                               ; preds = %69
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @fscanf(i32* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %12)
  %83 = icmp ne i32 %82, 1
  br i1 %83, label %84, label %101

84:                                               ; preds = %80
  %85 = load i32, i32* @errno, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* @errno, align 4
  %89 = sub nsw i32 0, %88
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @ENODATA, align 4
  %92 = sub nsw i32 0, %91
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %89, %87 ], [ %92, %90 ]
  store i32 %94, i32* %10, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = call i64 @fclose(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call i32 @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %93
  br label %120

101:                                              ; preds = %80
  %102 = load i32*, i32** %11, align 8
  %103 = call i64 @fclose(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @errno, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %10, align 4
  br label %120

108:                                              ; preds = %101
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* @stderr, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i8*, i8** %7, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %114, i8* %115, i8* %116)
  store i32 -1, i32* %10, align 4
  br label %118

118:                                              ; preds = %112, %108
  br label %119

119:                                              ; preds = %118, %66
  br label %120

120:                                              ; preds = %119, %105, %100, %74, %63, %58, %39, %33
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %120, %23
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @fscanf(i32*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
