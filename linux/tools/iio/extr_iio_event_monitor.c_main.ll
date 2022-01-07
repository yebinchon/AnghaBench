; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_event_monitor.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_event_monitor.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_event_data = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Usage: %s <device_name>\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"iio:device\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Found IIO device with name %s with device number %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"/dev/iio:device%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@IIO_GET_EVENT_FD_IOCTL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"This device does not support events\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Failed to retrieve event fd\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Failed to close character device file\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"nothing available\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to read event from device\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Reading event failed!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"Failed to close event file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iio_event_data, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sle i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 -1, i32* %3, align 4
  br label %136

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @find_type_by_name(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @asprintf(i8** %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %136

40:                                               ; preds = %29
  br label %50

41:                                               ; preds = %21
  %42 = load i8*, i8** %7, align 8
  %43 = call i8* @strdup(i8* %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %136

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @open(i8* %51, i32 0)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @errno, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %59)
  br label %132

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @IIO_GET_EVENT_FD_IOCTL, align 4
  %64 = call i32 @ioctl(i32 %62, i32 %63, i32* %12)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %90

70:                                               ; preds = %67, %61
  %71 = load i32, i32* @errno, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @stderr, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @close(i32 %84)
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  br label %132

90:                                               ; preds = %67
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @close(i32 %91)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @errno, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %9, align 4
  br label %132

97:                                               ; preds = %90
  br label %98

98:                                               ; preds = %97, %107, %123
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @read(i32 %99, %struct.iio_event_data* %6, i32 4)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32, i32* @errno, align 4
  %105 = load i32, i32* @EAGAIN, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %98

110:                                              ; preds = %103
  %111 = load i32, i32* @errno, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %9, align 4
  %113 = call i32 @perror(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %125

114:                                              ; preds = %98
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp ne i64 %116, 4
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %119, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %125

123:                                              ; preds = %114
  %124 = call i32 @print_event(%struct.iio_event_data* %6)
  br label %98

125:                                              ; preds = %118, %110
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @close(i32 %126)
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %125
  br label %132

132:                                              ; preds = %131, %94, %89, %55
  %133 = load i8*, i8** %8, align 8
  %134 = call i32 @free(i8* %133)
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %132, %46, %37, %15
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @find_type_by_name(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @read(i32, %struct.iio_event_data*, i32) #1

declare dso_local i32 @print_event(%struct.iio_event_data*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
