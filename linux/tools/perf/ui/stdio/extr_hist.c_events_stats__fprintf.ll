; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_events_stats__fprintf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/stdio/extr_hist.c_events_stats__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.events_stats = type { i32* }

@PERF_RECORD_HEADER_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%16s events: %10d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @events_stats__fprintf(%struct.events_stats* %0, i32* %1) #0 {
  %3 = alloca %struct.events_stats*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.events_stats* %0, %struct.events_stats** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @PERF_RECORD_HEADER_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @perf_event__name(i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %32

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.events_stats*, %struct.events_stats** %3, align 8
  %23 = getelementptr inbounds %struct.events_stats, %struct.events_stats* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @fprintf(i32* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load i64, i64* %6, align 8
  ret i64 %36
}

declare dso_local i8* @perf_event__name(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @fprintf(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
