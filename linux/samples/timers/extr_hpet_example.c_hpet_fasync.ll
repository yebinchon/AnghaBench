; ModuleID = '/home/carl/AnghaBench/linux/samples/timers/extr_hpet_example.c_hpet_fasync.c'
source_filename = "/home/carl/AnghaBench/linux/samples/timers/extr_hpet_example.c_hpet_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpet_info = type { i32 }

@hpet_sigio_count = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@hpet_sigio = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"hpet_fasync: failed to set signal handler\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"hpet_fasync: device-name freq iterations\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"hpet_fasync: failed to open %s\0A\00", align 1
@F_SETOWN = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_ASYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"hpet_fasync: fcntl failed\0A\00", align 1
@HPET_IRQFREQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"hpet_fasync: HPET_IRQFREQ failed\0A\00", align 1
@HPET_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"hpet_fasync: failed to get info\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"hpet_fasync: info.hi_flags 0x%lx\0A\00", align 1
@HPET_EPI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"hpet_fasync: HPET_EPI failed\0A\00", align 1
@HPET_IE_ON = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"hpet_fasync, HPET_IE_ON failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"hpet_fasync: count = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpet_fasync(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hpet_info, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* @hpet_sigio_count, align 4
  store i32 -1, i32* %8, align 4
  %12 = load i32, i32* @SIGIO, align 4
  %13 = load i32, i32* @hpet_sigio, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @SIG_ERR, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %137

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %127

26:                                               ; preds = %20
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = call i32 @open(i8* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8**, i8*** %4, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  br label %137

40:                                               ; preds = %26
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @F_SETOWN, align 4
  %43 = call i32 (...) @getpid()
  %44 = call i32 (i32, i32, ...) @fcntl(i32 %41, i32 %42, i32 %43)
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %59, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @F_GETFL, align 4
  %49 = call i32 (i32, i32, ...) @fcntl(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @F_SETFL, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @O_ASYNC, align 4
  %56 = or i32 %54, %55
  %57 = call i32 (i32, i32, ...) @fcntl(i32 %52, i32 %53, i32 %56)
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %51, %46, %40
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %127

62:                                               ; preds = %51
  %63 = load i8**, i8*** %4, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @atoi(i8* %65)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %5, align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @atoi(i8* %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @HPET_IRQFREQ, align 4
  %75 = load i64, i64* %5, align 8
  %76 = call i64 (i32, i32, ...) @ioctl(i32 %73, i32 %74, i64 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %127

81:                                               ; preds = %62
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @HPET_INFO, align 4
  %84 = call i64 (i32, i32, ...) @ioctl(i32 %82, i32 %83, %struct.hpet_info* %11)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %127

89:                                               ; preds = %81
  %90 = load i32, i32* @stderr, align 4
  %91 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %11, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds %struct.hpet_info, %struct.hpet_info* %11, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @HPET_EPI, align 4
  %100 = call i64 (i32, i32, ...) @ioctl(i32 %98, i32 %99, i32 0)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %127

105:                                              ; preds = %97, %89
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @HPET_IE_ON, align 4
  %108 = call i64 (i32, i32, ...) @ioctl(i32 %106, i32 %107, i32 0)
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* @stderr, align 4
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %127

113:                                              ; preds = %105
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %123, %113
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = call i32 (...) @pause()
  %120 = load i32, i32* @stderr, align 4
  %121 = load i32, i32* @hpet_sigio_count, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %110, %102, %86, %78, %59, %23
  %128 = load i32, i32* @SIGIO, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @signal(i32 %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = icmp sge i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @close(i32 %134)
  br label %136

136:                                              ; preds = %133, %127
  br label %137

137:                                              ; preds = %136, %34, %17
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @pause(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
