; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_tracepoint_error.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_parse-events.c_tracepoint_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_events_error = type { i8*, i8* }

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't access trace events\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unknown tracepoint\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to add tracepoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse_events_error*, i32, i8*, i8*)* @tracepoint_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracepoint_error(%struct.parse_events_error* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.parse_events_error*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.parse_events_error* %0, %struct.parse_events_error** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.parse_events_error*, %struct.parse_events_error** %5, align 8
  %17 = icmp ne %struct.parse_events_error* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 1, i32* %11, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @abs(i32 %20) #4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %19
  %24 = call i8* @strdup(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.parse_events_error*, %struct.parse_events_error** %5, align 8
  %26 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  br label %35

27:                                               ; preds = %19
  %28 = call i8* @strdup(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.parse_events_error*, %struct.parse_events_error** %5, align 8
  %30 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %35

31:                                               ; preds = %19
  %32 = call i8* @strdup(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.parse_events_error*, %struct.parse_events_error** %5, align 8
  %34 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %31, %27, %23
  %36 = load i32, i32* %6, align 4
  %37 = trunc i64 %13 to i32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @tracing_path__strerror_open_tp(i32 %36, i8* %15, i32 %37, i8* %38, i8* %39)
  %41 = call i8* @strdup(i8* %15)
  %42 = load %struct.parse_events_error*, %struct.parse_events_error** %5, align 8
  %43 = getelementptr inbounds %struct.parse_events_error, %struct.parse_events_error* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %35, %18
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %11, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i8* @strdup(i8*) #3

declare dso_local i32 @tracing_path__strerror_open_tp(i32, i8*, i32, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
