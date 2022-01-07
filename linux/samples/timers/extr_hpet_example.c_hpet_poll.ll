; ModuleID = '/home/carl/AnghaBench/linux/samples/timers/extr_hpet_example.c_hpet_poll.c'
source_filename = "/home/carl/AnghaBench/linux/samples/timers/extr_hpet_example.c_hpet_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64, i32 }
%struct.hpet_info = type { i64 }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"hpet_poll: device-name freq iterations\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"hpet_poll: open of %s failed\0A\00", align 1
@HPET_IRQFREQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"hpet_poll: HPET_IRQFREQ failed\0A\00", align 1
@HPET_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"hpet_poll: failed to get info\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"hpet_poll: info.hi_flags 0x%lx\0A\00", align 1
@HPET_EPI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"hpet_poll: HPET_EPI failed\0A\00", align 1
@HPET_IE_ON = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"hpet_poll, HPET_IE_ON failed\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"hpet_poll: poll failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"hpet_poll: expired time = 0x%lx\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"hpet_poll: revents = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"hpet_poll: read failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"hpet_poll: data 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpet_poll(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pollfd, align 8
  %10 = alloca %struct.hpet_info, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.timezone, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %148

21:                                               ; preds = %2
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @atoi(i8* %24)
  %26 = ptrtoint i8* %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 2
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @atoi(i8* %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i8**, i8*** %4, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* @O_RDONLY, align 4
  %36 = call i32 @open(i8* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8**, i8*** %4, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  br label %148

45:                                               ; preds = %21
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @HPET_IRQFREQ, align 4
  %48 = load i64, i64* %5, align 8
  %49 = call i64 (i32, i32, ...) @ioctl(i32 %46, i32 %47, i64 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %145

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @HPET_INFO, align 4
  %57 = call i64 (i32, i32, ...) @ioctl(i32 %55, i32 %56, %struct.hpet_info* %10)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %145

62:                                               ; preds = %54
  %63 = load i32, i32* @stderr, align 4
  %64 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %65)
  %67 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %10, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @HPET_EPI, align 4
  %73 = call i64 (i32, i32, ...) @ioctl(i32 %71, i32 %72, i32 0)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %145

78:                                               ; preds = %70, %62
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @HPET_IE_ON, align 4
  %81 = call i64 (i32, i32, ...) @ioctl(i32 %79, i32 %80, i32 0)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %145

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* @POLLIN, align 4
  %90 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %141, %86
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %144

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = call i32 @gettimeofday(%struct.timeval* %11, %struct.timezone* %13)
  %98 = call i64 @poll(%struct.pollfd* %9, i32 1, i32 -1)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @stderr, align 4
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %140

103:                                              ; preds = %95
  %104 = call i32 @gettimeofday(%struct.timeval* %12, %struct.timezone* %13)
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 1000000
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %107, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %14, align 8
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 1000000
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %114, %116
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %14, align 8
  %120 = sub nsw i64 %118, %119
  store i64 %120, i64* %14, align 8
  %121 = load i32, i32* @stderr, align 4
  %122 = load i64, i64* %14, align 8
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %122)
  %124 = load i32, i32* @stderr, align 4
  %125 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i64 %126)
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @read(i32 %128, i64* %15, i32 8)
  %130 = sext i32 %129 to i64
  %131 = icmp ne i64 %130, 8
  br i1 %131, label %132, label %135

132:                                              ; preds = %103
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  br label %139

135:                                              ; preds = %103
  %136 = load i32, i32* @stderr, align 4
  %137 = load i64, i64* %15, align 8
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %137)
  br label %139

139:                                              ; preds = %135, %132
  br label %140

140:                                              ; preds = %139, %100
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %91

144:                                              ; preds = %91
  br label %145

145:                                              ; preds = %144, %83, %75, %59, %51
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @close(i32 %146)
  br label %148

148:                                              ; preds = %145, %39, %18
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, i64*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
