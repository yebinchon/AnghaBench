; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-utils.c_gpiotools_request_linehandle.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-utils.c_gpiotools_request_linehandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiohandle_data = type { i32 }
%struct.gpiohandle_request = type { i32*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to open %s, %s\0A\00", align 1
@GPIOHANDLE_REQUEST_OUTPUT = common dso_local global i32 0, align 4
@GPIO_GET_LINEHANDLE_IOCTL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to issue %s (%d), %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"GPIO_GET_LINEHANDLE_IOCTL\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to close GPIO character device file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpiotools_request_linehandle(i8* %0, i32* %1, i32 %2, i32 %3, %struct.gpiohandle_data* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpiohandle_data*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.gpiohandle_request, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.gpiohandle_data* %4, %struct.gpiohandle_data** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @asprintf(i8** %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %18, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %109

26:                                               ; preds = %6
  %27 = load i8*, i8** %15, align 8
  %28 = call i32 @open(i8* %27, i32 0)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* @errno, align 4
  %37 = call i8* @strerror(i32 %36)
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %37)
  br label %91

39:                                               ; preds = %26
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.gpiohandle_request, %struct.gpiohandle_request* %14, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %17, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load i32, i32* %11, align 4
  %60 = getelementptr inbounds %struct.gpiohandle_request, %struct.gpiohandle_request* %14, i32 0, i32 1
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.gpiohandle_request, %struct.gpiohandle_request* %14, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @strcpy(i32 %62, i8* %63)
  %65 = load i32, i32* %10, align 4
  %66 = getelementptr inbounds %struct.gpiohandle_request, %struct.gpiohandle_request* %14, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @GPIOHANDLE_REQUEST_OUTPUT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.gpiohandle_request, %struct.gpiohandle_request* %14, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.gpiohandle_data*, %struct.gpiohandle_data** %12, align 8
  %75 = call i32 @memcpy(i32 %73, %struct.gpiohandle_data* %74, i32 4)
  br label %76

76:                                               ; preds = %71, %58
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @GPIO_GET_LINEHANDLE_IOCTL, align 4
  %79 = call i32 @ioctl(i32 %77, i32 %78, %struct.gpiohandle_request* %14)
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* @errno, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @errno, align 4
  %88 = call i8* @strerror(i32 %87)
  %89 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* %88)
  br label %90

90:                                               ; preds = %82, %76
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @close(i32 %92)
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i8*, i8** %15, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %18, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %18, align 4
  br label %107

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.gpiohandle_request, %struct.gpiohandle_request* %14, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  br label %107

107:                                              ; preds = %104, %102
  %108 = phi i32 [ %103, %102 ], [ %106, %104 ]
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %23
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @memcpy(i32, %struct.gpiohandle_data*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.gpiohandle_request*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
