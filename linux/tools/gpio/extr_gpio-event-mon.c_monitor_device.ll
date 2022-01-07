; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-event-mon.c_monitor_device.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-event-mon.c_monitor_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpioevent_request = type { i32, i32, i32*, i32, i8*, i8* }
%struct.gpiohandle_data = type { i32, i32, i32*, i32, i8*, i8* }
%struct.gpioevent_data = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"gpio-event-mon\00", align 1
@GPIO_GET_LINEEVENT_IOCTL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to issue GET EVENT IOCTL (%d)\0A\00", align 1
@GPIOHANDLE_GET_LINE_VALUES_IOCTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"Failed to issue GPIOHANDLE GET LINE VALUES IOCTL (%d)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Monitoring line %d on %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Initial line value: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"nothing available\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Failed to read event (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Reading event failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"GPIO EVENT %llu: \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"rising edge\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"falling edge\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"unknown event\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Failed to close GPIO character device file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @monitor_device(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gpioevent_request, align 8
  %13 = alloca %struct.gpiohandle_data, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.gpioevent_data, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %149

26:                                               ; preds = %5
  %27 = load i8*, i8** %14, align 8
  %28 = call i32 @open(i8* %27, i32 0)
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %139

37:                                               ; preds = %26
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.gpioevent_request, %struct.gpioevent_request* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds %struct.gpioevent_request, %struct.gpioevent_request* %12, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds %struct.gpioevent_request, %struct.gpioevent_request* %12, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = getelementptr inbounds %struct.gpioevent_request, %struct.gpioevent_request* %12, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @GPIO_GET_LINEEVENT_IOCTL, align 4
  %49 = bitcast %struct.gpioevent_request* %12 to %struct.gpiohandle_data*
  %50 = call i32 @ioctl(i32 %47, i32 %48, %struct.gpiohandle_data* %49)
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = load i32, i32* @errno, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* @stderr, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %139

59:                                               ; preds = %37
  %60 = getelementptr inbounds %struct.gpioevent_request, %struct.gpioevent_request* %12, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GPIOHANDLE_GET_LINE_VALUES_IOCTL, align 4
  %63 = call i32 @ioctl(i32 %61, i32 %62, %struct.gpiohandle_data* %13)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @errno, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* @stderr, align 4
  %70 = load i32, i32* %16, align 4
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  br label %139

72:                                               ; preds = %59
  %73 = load i32, i32* @stdout, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %74, i8* %75)
  %77 = load i32, i32* @stdout, align 4
  %78 = getelementptr inbounds %struct.gpiohandle_data, %struct.gpiohandle_data* %13, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %72, %94, %137
  %84 = getelementptr inbounds %struct.gpioevent_request, %struct.gpioevent_request* %12, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @read(i32 %85, %struct.gpioevent_data* %18, i32 8)
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load i32, i32* @errno, align 4
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %83

97:                                               ; preds = %89
  %98 = load i32, i32* @errno, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %101)
  br label %138

103:                                              ; preds = %83
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ne i64 %105, 8
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %16, align 4
  br label %138

112:                                              ; preds = %103
  %113 = load i32, i32* @stdout, align 4
  %114 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %18, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds %struct.gpioevent_data, %struct.gpioevent_data* %18, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %125 [
    i32 128, label %119
    i32 129, label %122
  ]

119:                                              ; preds = %112
  %120 = load i32, i32* @stdout, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  br label %128

122:                                              ; preds = %112
  %123 = load i32, i32* @stdout, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %128

125:                                              ; preds = %112
  %126 = load i32, i32* @stdout, align 4
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %122, %119
  %129 = load i32, i32* @stdout, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %138

137:                                              ; preds = %128
  br label %83

138:                                              ; preds = %136, %107, %97
  br label %139

139:                                              ; preds = %138, %66, %53, %31
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @close(i32 %140)
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 @perror(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %139
  %146 = load i8*, i8** %14, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %145, %23
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.gpiohandle_data*) #1

declare dso_local i32 @read(i32, %struct.gpioevent_data*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
