; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_debug.c_trace_event_printer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_debug.c_trace_event_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_COLOR_BLUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\0A. ... raw event: size %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"  %04x: \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @trace_event_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_event_printer(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.perf_event*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i8*, i8** @PERF_COLOR_BLUE, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %union.perf_event*
  store %union.perf_event* %15, %union.perf_event** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %11, align 1
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %96 [
    i32 134, label %19
    i32 132, label %33
    i32 137, label %38
    i32 130, label %45
    i32 129, label %52
    i32 128, label %58
    i32 136, label %64
    i32 135, label %79
    i32 131, label %85
    i32 133, label %91
  ]

19:                                               ; preds = %4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @fprintf(i32* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %union.perf_event*, %union.perf_event** %10, align 8
  %27 = bitcast %union.perf_event* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %24, i8* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %97

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @fprintf(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %12, align 4
  br label %97

38:                                               ; preds = %4
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %39, i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %97

45:                                               ; preds = %4
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %46, i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %12, align 4
  br label %97

52:                                               ; preds = %4
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %53, i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %97

58:                                               ; preds = %4
  %59 = load i32*, i32** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %59, i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %97

64:                                               ; preds = %4
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %11, align 1
  %68 = call i32 @isprint(i8 zeroext %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8, i8* %11, align 1
  %72 = zext i8 %71 to i32
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 46, %73 ]
  %76 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %65, i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %12, align 4
  br label %97

79:                                               ; preds = %4
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %80, i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %12, align 4
  br label %97

85:                                               ; preds = %4
  %86 = load i32*, i32** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 (i32*, i8*, i8*, ...) @color_fprintf(i32* %86, i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %97

91:                                               ; preds = %4
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @fprintf(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %97

96:                                               ; preds = %4
  br label %97

97:                                               ; preds = %96, %91, %85, %79, %74, %58, %52, %45, %38, %33, %19
  %98 = load i32, i32* %12, align 4
  ret i32 %98
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @color_fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
