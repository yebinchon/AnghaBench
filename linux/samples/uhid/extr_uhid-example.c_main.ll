; ModuleID = '/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.termios = type { i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"/dev/uhid\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot get tty state\0A\00", align 1
@ICANON = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Cannot set tty state\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Usage: %s [%s]\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Open uhid-cdev %s\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Cannot open uhid-cdev %s: %m\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Create uhid device\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Press 'q' to quit...\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Cannot poll for fds: %m\0A\00", align 1
@POLLHUP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Received HUP on stdin\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Received HUP on uhid-cdev\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Destroy uhid device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [2 x %struct.pollfd], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.termios, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = call i32 @tcgetattr(i32 %11, %struct.termios* %10)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %37

18:                                               ; preds = %2
  %19 = load i32, i32* @ICANON, align 4
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %10, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %10, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @VMIN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* @STDIN_FILENO, align 4
  %29 = load i32, i32* @TCSANOW, align 4
  %30 = call i32 @tcsetattr(i32 %28, i32 %29, %struct.termios* %10)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %18
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %18
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 2
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %56, i8* %57)
  %59 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %170

60:                                               ; preds = %46
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %67)
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @O_RDWR, align 4
  %71 = load i32, i32* @O_CLOEXEC, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @open(i8* %69, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load i32, i32* @stderr, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %80, i32* %3, align 4
  br label %170

81:                                               ; preds = %65
  %82 = load i32, i32* @stderr, align 4
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @create(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @close(i32 %89)
  %91 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %91, i32* %3, align 4
  br label %170

92:                                               ; preds = %81
  %93 = load i32, i32* @STDIN_FILENO, align 4
  %94 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %95 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 16
  %96 = load i32, i32* @POLLIN, align 4
  %97 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %98 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %6, align 4
  %100 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %101 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @POLLIN, align 4
  %103 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %104 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %107

107:                                              ; preds = %92, %163
  %108 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %109 = call i32 @poll(%struct.pollfd* %108, i32 2, i32 -1)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  br label %164

115:                                              ; preds = %107
  %116 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %117 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @POLLHUP, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @stderr, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  br label %164

125:                                              ; preds = %115
  %126 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %127 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @POLLHUP, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %164

135:                                              ; preds = %125
  %136 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 0
  %137 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @POLLIN, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @keyboard(i32 %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  br label %164

148:                                              ; preds = %142
  br label %149

149:                                              ; preds = %148, %135
  %150 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %8, i64 0, i64 1
  %151 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @POLLIN, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149
  %157 = load i32, i32* %6, align 4
  %158 = call i32 @event(i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %164

162:                                              ; preds = %156
  br label %163

163:                                              ; preds = %162, %149
  br label %107

164:                                              ; preds = %161, %147, %132, %122, %112
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %167 = load i32, i32* %6, align 4
  %168 = call i32 @destroy(i32 %167)
  %169 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %164, %88, %76, %52
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @create(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @keyboard(i32) #1

declare dso_local i32 @event(i32) #1

declare dso_local i32 @destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
